package com.test.user.ticket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Set;

import com.test.atticket.DBUtil;

public class UserShowDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	
	public UserShowDAO() {//생성자 생성
		//DB 연결
		DBUtil util = new DBUtil();
		conn = util.open();//연결 완료
		
	}
	

	//기본적인 공연에 대한 정보를 불러온다
	public UserShowDTO getShowInfo(String conSeq) {

		try {
			
			String sql = "select * from tblshow where seq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, conSeq);
			
			rs = pstat.executeQuery();
			
			UserShowDTO dto = new UserShowDTO();
			
			
			if (rs.next()) {
				
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setStartDate(rs.getString("startdate").substring(0,10));
				dto.setEndDate(rs.getString("endDate").substring(0,10));
				dto.setPrice(rs.getString("price"));
				dto.setPoster(rs.getString("poster"));
				dto.setContent(rs.getString("content"));
				dto.setOpenDate(rs.getString("opendate").substring(0,10));
				dto.setAge(rs.getString("age"));
				dto.setGenre(rs.getString("genre"));
				dto.setAgencySeq("agencyseq");
				dto.setDelflag(rs.getString("delflag"));
				dto.setTheaterSeq(rs.getString("theaterseq"));
			}
			
			//이거 해줘야 되는지는 잘 모르겠네
			//rs.close();
			//conn.close();
			
			return dto;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	//show 객체에 대한  공연건물이름,공연장소에 대한 데이터를 불러온다.
	public List<String> getPlace(String conSeq) {
		
		
		try {
			
			String sql = "select name,addr from tblhall where seq =(select hallseq from tbltheater where seq = (select theaterseq from tblshow where seq= ?))";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, conSeq);
			
			rs = pstat.executeQuery();
			
			List<String> list = new ArrayList<String>();
			
			if (rs.next()) {
				
				list.add(rs.getString("name"));
				list.add(rs.getString("addr"));
				
				
			}
			
			//rs.close();
			//conn.close();
			
			return list;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	//show 의 term 을 확인한다.
	public String getShowTerm(String conSeq) {
		
		try {
			 
			String sql = "select startdate,enddate from tblroundinfo where showseq = (select seq from tblshow where seq=?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, conSeq);
			
			rs = pstat.executeQuery();
			
			int startH = 0;//show 시작시간
			int startM = 0;//show 시작분
			
			int endH = 0;//show 마침시간.
			int endM = 0;//show 마침분
			 //System.out.println(rs.getFetchSize());
			
			while(rs.next()) {
				String[] start = rs.getString("startdate").split(":");
				startH = Integer.parseInt(start[0]);
				startM = Integer.parseInt(start[1]);
				
				String[] end = rs.getString("enddate").split(":");
				endH = Integer.parseInt(end[0]);
				endM = Integer.parseInt(end[1]);
			}
			
			return "" + (endH*60 + endM - (startH*60 + startM));//두 시각의 차를 구해준다.
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	//좋아요 수 가져오기
	public String getLikes(String conSeq) {
		
		
		try {
			
			String sql = "select count(*) as cnt from tblmyshow where showseq = ? and delflag = 0";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, conSeq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("cnt");
			}
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	//주최 기획사정보 전화번호 가져오기
	public List<String> getAgencyInfo(String conSeq) {
		
		try {
			
			String sql = "select host, management, tel from tblagency where seq = (select agencyseq from tblshow where seq=?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, conSeq);
			
			rs = pstat.executeQuery();
			
			List<String> agencyInfo = new ArrayList<String>();
			
			if (rs.next()) {
				
				agencyInfo.add(rs.getString("host"));
				agencyInfo.add(rs.getString("management"));
				agencyInfo.add(rs.getString("tel"));
				
			}
			
			return agencyInfo;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}

	//내가 이미 좋아요를 누른 데이터인지 확인한다
	public int getLikeTrue(String conSeq,int mySeq) {
		
		try {
			
			String sql = "select * from tblMyShow where cusseq = ? and showseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, mySeq);
			pstat.setString(2, conSeq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("delflag");
			}
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return -1;
	}

	//해당 show에 대하여 내가 좋아요를 누른적이 있는지 없는지 판단해주는 도구라고 생각하면 된다.
	public int likecheck(String conSeq,int mySeq) {
		
		try {
			
			String sql = "select count(*) as cnt from tblMyShow where cusseq = ? and showseq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, mySeq);
			pstat.setString(2, conSeq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return -1;
	}

	//heart insert 작업
	public void insertHeart(int mySeq, String showSeq) {
		
		
		try {
			
			String sql = "insert into tblMyShow values (myshowSeq.nextVal,to_date(sysdate,'yyyy/mm/dd'),?,?,0)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, showSeq);
			pstat.setInt(2, mySeq);
			
			pstat.executeUpdate();
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	//좋아요한 공연을 좋아요 상태를 바꾸는 작업.
	public void updateLikeState(String showSeq, int mySeq, int state) {
		
		try {
			String sql = "update tblmyshow set delflag=? where cusseq = ? and showseq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, state);
			pstat.setInt(2,mySeq);
			pstat.setString(3, showSeq);
			
			pstat.executeUpdate();
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	//해당 공연에 해당하는 쿠폰을 발급해주기 위함.
	public List<UserShowCouponDTO> getCouponList(String conSeq) {
		
		try {
			
			String sql = "select * from tblCoupon where showseq = ? and delflag = 0";
			
			List<UserShowCouponDTO> cpList = new ArrayList<UserShowCouponDTO>();
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, conSeq);
			
			rs = pstat.executeQuery();
			
			
			while(rs.next()) {
				UserShowCouponDTO dto = new UserShowCouponDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setStartDate(rs.getString("startdate").substring(0,10));
				dto.setEndDate(rs.getString("enddate").substring(0,10));
				dto.setDiscount(rs.getString("discount"));
				dto.setShowSeq(rs.getString("showseq"));
				
				//여기서 중요한건 날짜를 체크해주는 것이다 오늘 날짜 기준으로 -> 이 쿠폰이 오늘 쓸 수 있는 쿠폰인지 
				String[] startDateList = dto.getStartDate().split("-");
				String[] endDateList = dto.getEndDate().split("-");
				
				//쿠폰 시작일
				Calendar c1 = Calendar.getInstance();
				c1.set(Integer.parseInt(startDateList[0]), Integer.parseInt(startDateList[1])-1,Integer.parseInt(startDateList[2]));
				long c1tick = c1.getTimeInMillis();
				
				//쿠폰 종료일
				Calendar c2 = Calendar.getInstance();
				c2.set(Integer.parseInt(endDateList[0]), Integer.parseInt(endDateList[1])-1,Integer.parseInt(endDateList[2]));
				long c2tick = c2.getTimeInMillis();
				
				//현재시간
				Calendar c3 = Calendar.getInstance();
				long c3tick = c3.getTimeInMillis();
				
				//시간이 맞으면 list 에 넣어준다.
				if ((c1tick < c3tick) && (c2tick > c3tick)) {
					cpList.add(dto);
				}
				
			}
			
			return cpList;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	//회원이 보유하고 있는 쿠폰인지 아닌지 알려준다.
	public int getCheckCoupon(int userSeq, String couponSeq) {
		
		try {
			
			String sql = "select count(*) as cnt from tblCusCoupon where cusseq = ? and couponseq = ? and delflag = 0";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, userSeq);
			pstat.setString(2, couponSeq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				return rs.getInt("cnt");
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return 0;
	}

	//고객에게 쿠폰을 지급한다.
	public void downCoupon(int userSeq, String couponSeq) {
		try {
			
			String sql = "insert into tblCusCoupon values (cuscouponSeq.nextVal,to_date(sysdate,'yyyy/mm/dd'),?,?,0)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, couponSeq);
			pstat.setInt(2, userSeq);
			
			rs = pstat.executeQuery();
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	
	//더 빠르게! -> 새 five 이미지 가져오기
	public List<UserShowTopFive> getFiveImgList(String genre) {
		
		try {
			
			String sql = "select seq,poster from vwfivepic where genre = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, genre);
			rs = pstat.executeQuery();
			
			List<UserShowTopFive> bigFiveImgList = new ArrayList<UserShowTopFive>();
			
			int count = 0;
			
			while (rs.next()) {
				count++;
				
				if (count > 5) break;
				
				UserShowTopFive topFive = new UserShowTopFive();
				topFive.setSeq(rs.getInt("seq"));
				topFive.setImgName(rs.getString("poster"));
				
				bigFiveImgList.add(topFive);
				
			}
			
			return bigFiveImgList;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	//map 형식으로 맨 위에 

	
	
	
}
