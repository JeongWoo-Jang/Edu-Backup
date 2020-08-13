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
				where = String.format("and v.title like '%%%s%%' or v.genre like '%%%s%%'",map.get("search"),map.get("search"));
			}
			
			String sql = String.format("select a.* from (select rownum as rnum, v.* from vwShow v where v.delflag = 0 %s) a where rnum >= %s and rnum <= %s order by %s"
					,where ,map.get("begin"), map.get("end"),map.get("sort"));
			
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
	
	//show 서블릿 -> 페이징
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

	//showadd 서블릿 -> 공연 테이블 추가
	public int addShow(ShowDTO dto) {
		try {
			String sql = "insert into tblShow (seq,title,startdate,enddate,price,poster,content,opendate,age,genre,agencyseq,delflag,theaterSeq) values (showSeq.nextVal, ?, to_date(?,'yyyy-mm-dd'),to_date(?,'yyyy-mm-dd'),?,?,?,to_date(?,'yyyy-mm-dd'),?,?,?,default,?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getStartDate());
			pstat.setString(3, dto.getEndDate());
			pstat.setString(4, dto.getPrice());
			pstat.setString(5, dto.getPoster());
			pstat.setString(6, dto.getContent());
			pstat.setString(7, dto.getOpenDate());
			pstat.setString(8, dto.getAge());
			pstat.setString(9, dto.getGenre());
			pstat.setString(10, dto.getAgency());
			pstat.setString(11, dto.getPlace());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	//ShowHall 서블릿
	public ArrayList<HallDTO> hist(String region) {
		try {
			String sql = "select * from tblHall where region=? and delflag = 0";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, region);
			rs = pstat.executeQuery();
			
			ArrayList<HallDTO> hlist = new ArrayList<HallDTO>();
			
			while(rs.next()) {
				HallDTO dto = new HallDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setRegion(rs.getString("region"));
				
				hlist.add(dto);
			}
			
			return hlist;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	//AdminShowTheater
	public ArrayList<TheaterDTO> tlist(String hseq) {
		try {
			String sql = "select * from tblTheater where delflag = 0 and hallSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<TheaterDTO> list = new ArrayList<TheaterDTO>();
			
			while(rs.next()) {
				TheaterDTO dto = new TheaterDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setHallSeq(rs.getString("hallSeq"));
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//adminShowAddOK -> 상영관 번호 찾기
	public int loadTheater(String theater) {
		try {
			String sql = "select seq from tblTheater where name = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, theater);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("seq");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public String searchSeq() {
		try {
			String sql = "select max(seq) as seq from tblShow";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getString("seq");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public int addRound(ShowDTO dto) {
		
		try {
			String sql = "insert into tblRoundInfo (seq, startDate, endDate, showSeq, delflag) values (roundInfoSeq.nextVal,?,?,?,default)";
			
			int showmin = dto.getMin();
			String[] times = dto.getTime().split(":");
			int hour = Integer.parseInt(times[0]);
			int min = Integer.parseInt(times[1]);
			
			min += showmin;
			if(min >= 60) {
				hour++;
				min = min - 60;
			}
			
			String endTime = hour+":"+min;
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getTime());
			pstat.setString(2, endTime);
			pstat.setString(3, dto.getSeq());
			
			return pstat.executeUpdate();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}


	
}
