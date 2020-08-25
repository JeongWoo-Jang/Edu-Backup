package com.test.user.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.atticket.DBUtil;

public class MyPageHDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MyPageHDAO() {
		
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

	public ArrayList<MyReDTO> getlist(HashMap<String, String> map) {
		
		try {
			String sql = "select b.* from(select a.*, rownum as rnum from (select * from vwmyreservation where cusseq = ? and bookdate >= ? and bookdate <= ? order by bookseq desc) a) b where rnum >=? and rnum <=?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("cusseq"));
			pstat.setString(2, map.get("from"));
			pstat.setString(3, map.get("to"));
			pstat.setString(4, map.get("begin"));
			pstat.setString(5, map.get("end"));		
			rs = pstat.executeQuery();
			ArrayList<MyReDTO> list = new ArrayList<MyReDTO>();
			while(rs.next()) {
				MyReDTO dto = new MyReDTO();
				dto.setBdate(rs.getString("bdate").substring(0,10));
				dto.setBookdate(rs.getString("bookdate").substring(0,10));
				dto.setBookseq(rs.getString("bookseq"));
				dto.setBookstate(rs.getString("bookstate"));
				dto.setCnt(rs.getString("cnt"));
				dto.setShowtitle(rs.getString("showtitle"));
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("MyPageHDAO.getlist()");
			e.printStackTrace();
		}
		return null;
	}

	public int deleteReservation(String cusseq) {
		try {
			String sql = "update from tblbook set delflag = 1 where cusseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,cusseq);
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MyPageHDAO.deleteReservation()");
			e.printStackTrace();
		}
		return 0;
	}

	public int getTotalCount(String cusseq) {
		try {
			String sql = "select count(*) as cnt from vwmyreservation where cusseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, cusseq);
			
			rs = pstat.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				return cnt;
			}
			
		} catch (Exception e) {
			System.out.println("MyPageHDAO.getTotalCount()");
			e.printStackTrace();
		}
		return 0;
	}
	
}
