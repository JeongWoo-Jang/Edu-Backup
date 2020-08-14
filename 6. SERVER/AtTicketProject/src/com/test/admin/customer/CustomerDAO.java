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
				
//				System.out.println("begin " + map.get("begin"));
//				System.out.println("end " + map.get("end"));
				
				String where = "";
			
				if(map.get("search")!=null && map.get("search")!="") {
					where = String.format("where (name like '%%%s%%' or id like '%%%s%%' or tel like '%%%s%%' or ssn like '%%%s%%') and delflag <> 1", map.get("search"),map.get("search"),map.get("search"),map.get("search"));
				} else {
					where = "where delflag <> 1";
				}
				String sql = String.format("select * from (select a.*, rownum as rnum from (select * from tblCustomer %s order by seq desc) a ) where rnum > = %s and rnum <= %s  order by seq desc",where,map.get("begin"),map.get("end"));
				
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
					dto.setPhoto(rs.getString("photo"));
					
					list.add(dto);
				}
				
				return list;
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.list()");
				e.printStackTrace();
			}
			return null;
		}

		public int delete(String seq, String[] cb) {
			try {
				
				for(int i=0;i<cb.length;i++) {
					String sql = "update tblCustomer set delflag = 1 where seq = ?";
					pstat = conn.prepareStatement(sql);
					pstat.setString(1, cb[i]);
					pstat.executeUpdate();
				}
				return 1;
			} catch (Exception e) {
				System.out.println("CustomerDAO.delete()");
				e.printStackTrace();
			}
			return 0;
		}

		public int write(CustomerDTO dto) {
			String sql = null;
			try {
				if(dto.getPhoto()!=null) {
				 sql = "insert into tblCustomer values (customerSeq.nextVal,?,?,?,?,?,?,?,?,?,default,?)";
				} else {
				 sql = "insert into tblCustomer values (customerSeq.nextVal,?,?,?,?,?,?,?,?,?,default, default)";
				}
				
//				SEQ     NOT NULL NUMBER       
//				NAME    NOT NULL VARCHAR2(50) 
//				SSN     NOT NULL VARCHAR2(50) 
//				ID      NOT NULL VARCHAR2(50) 
//				PW      NOT NULL VARCHAR2(50) 
//				EGG     NOT NULL NUMBER       
//				ADDR    NOT NULL VARCHAR2(90) 
//				TEL     NOT NULL VARCHAR2(15) 
//				EMAIL   NOT NULL VARCHAR2(30) 
//				GRADE   NOT NULL VARCHAR2(10) 
//				DELFLAG NOT NULL NUMBER       
//				PHOTO   NOT NULL VARCHAR2(30) 
				
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, dto.getName());
				pstat.setString(2, dto.getSsn());
				
				pstat.setString(3, dto.getId());
				pstat.setString(4, dto.getPw());
				pstat.setString(5, dto.getEgg());
				pstat.setString(6, dto.getAddr());
				pstat.setString(7, dto.getTel());
				pstat.setString(8, dto.getEmail());
				pstat.setString(9, dto.getGrade());
				if(dto.getPhoto()!=null) {
					pstat.setString(10, dto.getPhoto());
				}
				
				return pstat.executeUpdate();
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.Insert()");
				e.printStackTrace();
			}
			return 0;
		}

		public CustomerDTO get(CustomerDTO dto2) {
			try {
				
				String sql = "select * from tblCustomer where seq = ? and delflag <> 1";
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, dto2.getSeq()); // 고객 번호
				
				rs = pstat.executeQuery();
				
				if(rs.next()) {
					CustomerDTO dto = new CustomerDTO();
					dto.setAddr(rs.getString("addr"));
					dto.setEgg(rs.getString("egg"));
					dto.setEmail(rs.getString("email"));
					dto.setGrade(rs.getString("grade"));
					dto.setId(rs.getString("id"));
					dto.setName(rs.getString("name"));
					dto.setPhoto(rs.getString("photo"));
					dto.setPw(rs.getString("pw"));
					dto.setSeq(rs.getString("seq"));
					dto.setSsn(rs.getString("ssn"));
					dto.setTel(rs.getString("tel"));
				
					return dto;
				}
				
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.get()");
				e.printStackTrace();
			}
			return null;
		}

		public int edit(CustomerDTO dto) {
			String sql = null;
			try {
				sql = "update tblCustomer set name = ?, id = ? , ssn = ?, photo = ?, tel = ?, addr = ?, egg = ?, pw = ?, grade = ?, email = ? where seq = ?";
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, dto.getName());
				pstat.setString(2, dto.getId());
				pstat.setString(3, dto.getSsn());
				if(dto.getPhoto()!=null) {
				pstat.setString(4, dto.getPhoto());
				}
				pstat.setString(5, dto.getTel());
				pstat.setString(6, dto.getAddr());
				pstat.setString(7, dto.getEgg());
				pstat.setString(8, dto.getPw());
				pstat.setString(9, dto.getGrade());
				pstat.setString(10, dto.getEmail());
				pstat.setString(11, dto.getSeq());
				
				return pstat.executeUpdate();
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.edit()");
				e.printStackTrace();
			}
			return 0;
		}

		public ArrayList<CusBookDTO> getBook(String seq) {
			String sql = null;
			try {
				
				sql = "select * from vwcusbook where cusseq = ?";
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, seq);
				rs = pstat.executeQuery();
				ArrayList<CusBookDTO> list = new ArrayList<CusBookDTO>();
				
				while(rs.next()) {
					CusBookDTO bookdto = new CusBookDTO();
					bookdto.setShowtitle(rs.getString("showtitle"));
					bookdto.setBdate(rs.getString("bdate").substring(0,10));
					bookdto.setBookdate(rs.getString("bookdate").substring(0,10));
					bookdto.setBookseq(rs.getString("bookseq"));
					bookdto.setBookstate(rs.getString("bookstate"));
					bookdto.setCusseq(rs.getString("cusseq"));
					list.add(bookdto);
				}
				return list;
				
			} catch (Exception e) {
				System.out.println("CustomerDAO.getBook()");
				e.printStackTrace();
			}
			
			return null;
		}

		
		
}
