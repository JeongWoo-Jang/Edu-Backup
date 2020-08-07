package com.test.codestudy.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import com.test.codestudy.DBUtil;

//DB 작업 담당 객체
// - 서블릿X
// - 일반 클래스O
public class MemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		//DB 연결
		
		DBUtil util = new DBUtil();
		conn = util.open();
		
	}
	
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	//RegisterOk 서블릿이 MemberDTO를 주면서 회원 가입 시켜주세요..위임
	public int add(MemberDTO dto) {
		
		try {

			String sql = "insert into tblMember (seq, id, name, email, pw, pic, regdate) values (seqMember.nextVal, ?, ?, ?, ?, ?, default)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getName());
			pstat.setString(3, dto.getEmail());
			pstat.setString(4, dto.getPw());
			pstat.setString(5, dto.getPic());
			
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
	}

	//Login 서블릿이 아이디와 암호를 줄테니 이사람이 회원이 맞는지 검사?
	public int login(MemberDTO dto) {

		try {
			
			String sql = "select count(*) as cnt from tblMember where id=? and pw=?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
		
	}

	//Login 서블릿이 아이디를 줄테니 회원 정보 전부를 다오.
	public MemberDTO getMember(String id) {
		
		try {
			
			String sql = "select * from tblMember where id=?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				//DTO -> Data Transfer Object
				//VO -> Value Object
				MemberDTO dto = new MemberDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setPic(rs.getString("pic"));
				dto.setRegdate(rs.getString("regdate"));
				
				return dto;
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	//Auth 서블릿 -> 회원 번호 전달 + 카운트 반환
	public HashMap<String, Integer> getCount(String seq) {
		
		try {
			
			String sql = "select (select count(*) as bcnt from tblBoard where mseq = ?) as bcnt,"
					+ " (select count(*) as ccnt from tblComment where mseq = ?) as ccnt from dual";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			pstat.setString(2, seq);
			
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				map.put("bcnt", rs.getInt("bcnt"));
				map.put("ccnt", rs.getInt("ccnt"));
			}
			
			return map;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return null;
	}
	
}

