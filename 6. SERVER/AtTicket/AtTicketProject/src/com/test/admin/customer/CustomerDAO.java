package com.test.admin.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.atticket.DBUtil;

public class CustomerDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public CustomerDAO() {
			
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
		
		public ArrayList<CustomerDTO> getCustomer() {
			try {
				
				String sql = "select * from tblCustomer where delflag <> 1";
				
				stat = conn.prepareStatement(sql);
				
				rs = stat.executeQuery(sql);
				ArrayList<CustomerDTO> list = new ArrayList<CustomerDTO>();
				
				while(rs.next()) {
					//DTO -> Data Transfer Object : 택배 상자
					//VO -> Value Object 
					CustomerDTO dto = new CustomerDTO();
					
					dto.setSeq(rs.getString("seq"));
					dto.setName(rs.getString("name"));
					dto.setId(rs.getString("id"));
					dto.setSsn(rs.getString("ssn"));
					dto.setPw(rs.getString("pw"));
					dto.setEgg(rs.getString("egg"));
					dto.setAddr(rs.getString("addr"));
					dto.setEmail(rs.getString("email"));
					dto.setGrade(rs.getString("grade"));
					dto.setTel(rs.getString("tel"));
					
					list.add(dto);
					// DB와 관계없는 객체 타입
				}
					return list;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
}
