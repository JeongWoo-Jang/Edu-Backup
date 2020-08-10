package com.test.admin.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

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
		
		/*
		 * public ArrayList<CustomerDTO> getCustomer() { try {
		 * 
		 * String sql = "select * from tblCustomer where delflag <> 1";
		 * 
		 * stat = conn.prepareStatement(sql);
		 * 
		 * rs = stat.executeQuery(sql); ArrayList<CustomerDTO> list = new
		 * ArrayList<CustomerDTO>();
		 * 
		 * while(rs.next()) { //DTO -> Data Transfer Object : 택배 상자 //VO -> Value Object
		 * CustomerDTO dto = new CustomerDTO();
		 * 
		 * dto.setSeq(rs.getString("seq")); dto.setName(rs.getString("name"));
		 * dto.setId(rs.getString("id")); dto.setSsn(rs.getString("ssn"));
		 * dto.setPw(rs.getString("pw")); dto.setEgg(rs.getString("egg"));
		 * dto.setAddr(rs.getString("addr")); dto.setEmail(rs.getString("email"));
		 * dto.setGrade(rs.getString("grade")); dto.setTel(rs.getString("tel"));
		 * 
		 * list.add(dto); // DB와 관계없는 객체 타입 } return list; } catch (Exception e) {
		 * e.printStackTrace(); } return null; }
		 */

		public int getTotalCount(HashMap<String, String> map) {
			try {
				String where = "";
				
				if(map.get("search")!=null) {
					where = String.format("and (name like '%%%s%%' or id like '%%%s%%' or tel like '%%%s%%' or ssn like '%%%s%%')", map.get("search"),map.get("search"),map.get("search"),map.get("search"));
				} 
				String sql = String.format("select count(*) as cnt from tblcustomer where delflag <> 1 %s", where);
				
				stat = conn.createStatement();
				rs = stat.executeQuery(sql);
				if(rs.next()) {
					System.out.println(rs.getInt("cnt"));
					return rs.getInt("cnt");
				}
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.getTotalCount()");
				e.printStackTrace();
			}
			
			return 0;
		}

		public ArrayList<CustomerDTO> list(HashMap<String, String> map) {
			try {
				
				String where = "";
			
				if(map.get("search")!=null) {
					where = String.format("and (name like '%%%s%%' or id like '%%%s%%' or tel like '%%%s%%' or ssn like '%%%s%%')", map.get("search"),map.get("search"),map.get("search"),map.get("search"));
				}
				String sql = String.format("select * from (select a.*, rownum as rnum from tblCustomer a ) where rnum > = %s and rnum <= %s and delflag <> 1 %s order by seq",map.get("begin"),map.get("end"),where);
				
				stat = conn.createStatement();
				rs = stat.executeQuery(sql);
				
				ArrayList<CustomerDTO> list = new ArrayList<CustomerDTO>();
				
				while(rs.next()) {
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
				}
				return list;
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.list()");
				e.printStackTrace();
			}
			return null;
		}
		
}
