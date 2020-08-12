package com.test.admin.show;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.atticket.DBUtil;

public class ShowDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ShowDAO() {
		//DB 연결
		DBUtil util = new DBUtil();
		conn = util.open();
	}
	
	public void close() {
		
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
	}//close()

	//Show 서블릿 -> 공연 목록 불러오기
	public ArrayList<ShowDTO> getList(HashMap<String, String> map) {
		
		try {
			//목록 or 검색
			String where = "";
			
			if(map.get("search") != null) {
				//이름 & 제목 & 내용 - 포괄 검색
				where = String.format("and (title like '%%%s%%' or genre like '%%%s%%')",map.get("search"),map.get("search"));
			}
			
			String sql = String.format("select a.* from (select rownum as rnum, v.* from vwShow v) a where rnum >= %s and rnum <= %s %s order by %s"
					,map.get("begin"), map.get("end"), where,map.get("sort"));
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<ShowDTO> list = new ArrayList<ShowDTO>();
			
			//rs -> list 복사
			while (rs.next()) {
				ShowDTO dto = new ShowDTO();

				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setGenre(rs.getString("genre"));
				
				//date 시간 잘라서 넣기
				String[] date = rs.getString("startdate").split(" ");
				dto.setStartDate(date[0]);
				date = rs.getString("enddate").split(" ");
				dto.setEndDate(date[0]);

				list.add(dto);
			}

			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}//getList()
	
	//List 서블릿 -> 페이징
	public int getTotalCount(HashMap<String, String> map) {
		try {
			String where = "";

			if (map.get("search") != null) {
				// 이름 & 제목 & 내용 - 포괄 검색
				where = String.format("where title like '%%%s%%' or genre like '%%%s%%'",
						map.get("search"), map.get("search"));
			}

			String sql = String.format("select count(*) as cnt from vwShow %s", where);
			
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
	
}
