package com.test.admin.show;

public class ShowDTO {
	private String seq;
	private String title; //제목
	private String startDate; //시작일시
	private String endDate; //종료일시
	private String price; //가격
	private String poster; //포스터
	private String content; //내용
	private String openDate; //오픈일시
	private String age; //연령제한
	private String genre; //장르
	private String agency; //기획사
	private String place; //공연 장소
	
	private int min; //소요시간
	private String round; //회차
	private String time; //시작 시간
	
	private String agencyName; //기획사 이름
	private String addr; //공연 주소
	private String hallName; //공연장이름
	private String theaterName; //상영관 이름
	private String endTime; //종료시간
	
	
	
	public String getAgencyName() {
		return agencyName;
	}
	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getHallName() {
		return hallName;
	}
	public void setHallName(String hallName) {
		this.hallName = hallName;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}

	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public String getRound() {
		return round;
	}
	public void setRound(String round) {
		this.round = round;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	
	@Override
	public String toString() {
		return String.format("seq:%s, title:%s, startDate:%s, endDate:%s, price:%s, poster:%s, content:%s, openDate:%s, age:%s, genre:%s,"
				+ "agency: %s, place: %s, min: %s, round: %s, time: %s\n"
				,seq,title,startDate,endDate,price,poster,content,openDate,age,genre,agency,place,min,round,time);
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
}
