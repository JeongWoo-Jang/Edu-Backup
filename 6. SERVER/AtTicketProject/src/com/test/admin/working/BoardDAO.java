package com.test.admin.working;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.atticket.DBUtil;
import com.test.admin.working.BoardDTO;

public class BoardDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public BoardDAO() {
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

	public int getTotalCount(HashMap<String, String> map) {

		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				//이름 & 제목 & 내용 - 포괄 검색
				where = String.format("where (name like '%%%s%%' or title like '%%%s%%' or content like '%%%s%%')", map.get("search"), map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwBoard order by seq desc) a) where rnum >= %s and rnum <= %s %s order by %s desc", map.get("begin"), map.get("end"), where,map.get("sort"));
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	public ArrayList<BoardDTO> list(HashMap<String, String> map) {
		
		try {
			
			//목록 or 검색
			String where = "";
			
			if (map.get("search") != null) {
				//이름 & 제목 & 내용 - 포괄 검색
				where = String.format("and (name like '%%%s%%' or title like '%%%s%%' or content like '%%%s%%')", map.get("search"), map.get("search"), map.get("search"));
			}
			
//			String temp = "select * from (select a.*, rownum as rnum from (select * from vwBoard order by thread desc) a) where rnum >= 21 and rnum <= 40 %s order by %s desc";
			
			//String sql = "select seq,title, (select name from tblemployee where seq = emseq) as name, regdate, nview  from tblemplonotice";
			String sql = String.format("select a.* from (select rownum as rnum, v.* from vwBoard v) a where rnum >= %s and rnum <= %s %s" , map.get("begin"), map.get("end"), where);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
			
			//rs -> list 복사
			while (rs.next()) {
				//레코드 1줄 -> BoardDTO 1개
				BoardDTO dto = new BoardDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setNview(rs.getInt("nview"));			
				
				
				list.add(dto);
			}
			
			return list;

		} catch (Exception e) {
			System.out.println("BoardDAO.list()");
			e.printStackTrace();
		}
		
		return null;
	}
	
	

		

}
