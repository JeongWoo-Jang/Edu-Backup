package com.test.user.show;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.test.atticket.DBUtil;

public class UserPromotionDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public UserPromotionDAO() {//생성자 생성
		//DB 연결
		DBUtil util = new DBUtil();
		conn = util.open();//연결 완료
	}
	
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//쿠폰을 추가해주는 메서드
	public void addCoupon(String memberSeq) {
		
		try {
			
			String sql = "insert into tblCusCoupon values (cuscouponSeq.nextval,to_date(sysdate,'yyyy/mm/dd hh24:mi'),8,?,0)";//순서대로 쿠폰번호, 회원번호, delflag
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberSeq);
			
			pstat.executeUpdate();
			
			pstat.close();
			conn.close();
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
}
