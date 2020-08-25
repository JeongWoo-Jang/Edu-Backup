<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="shortcut icon" href="./images/favicon.ico">
<link rel="stylesheet" href="/AtTicketProject/css/usermypage.css" />


<style>
* {
	outline: none;
}

body {
	margin: 0 auto;
}

#photo {
	border-radius: 25px;
	margin-left: 5px;
}

.b {
	width: 405px;
	margin-top: 100px;
	height: 255px;
	border: 1px solid #7E9CB6;
}

#tt {
	position: relative;
	top: 100px;
	width: 405px;
	height: 30px;
	background-color: #7E9CB6;
	text-align: center;
	color: white;
	font-weight: bold;
	padding-top: 5px;
	font-size: 1.2em;
}

#tt1 {
	width: 599px;
	height: 30px;
	background-color: #7E9CB6;
	text-align: center;
	color: white;
	font-weight: bold;
	padding-top: 5px;
	font-size: 1.2em;
}

#tt2 {
	position: relative;
	top: 20px;
	width: 1240px;
	height: 30px;
	background-color: #7E9CB6;
	text-align: center;
	color: white;
	font-weight: bold;
	padding-top: 5px;
	font-size: 1.2em;
}

#tt3 {
	width: 613px;
	height: 30px;
	background-color: #7E9CB6;
	text-align: center;
	color: white;
	font-weight: bold;
	padding-top: 5px;
	font-size: 1.2em;
}

#tt4 {
	width: 398px;
	height: 29px;
	background-color: #7E9CB6;
	text-align: center;
	color: white;
	font-weight: bold;
	padding-top: 5px;
	font-size: 1.2em;
}

#tt5 {
	width: 402px;
	height: 29px;
	background-color: #7E9CB6;
	text-align: center;
	color: white;
	font-weight: bold;
	padding-top: 5px;
	font-size: 1.2em;
}

#free {
	height: 285px;
	margin-top: 10px;
	border: 1px solid #7E9CB6;
}

#bb1 {
	margin-top: 20px;
	/* height: 480px; */
	width: 1240px;
	border: 1px solid #7E9CB6;
}

#content {
	width: 250px;
	height: 150px;
	margin-left: 150px;
	margin-top: -40px;
	border-radius: 10px;
}

#container {
	width: 590px;
	height: 220px;
}

#container1 {
	margin-top: 60px;
	width: 500px;
	height: 300px;
	margin-left: -100px;
}

/* .img1{
        position: absolute;
        height: 100%;
        width: 100%;
        background-color: rgb(0,0,0,0.7);
        z-index:1;
    } */
#myimg1:hover {
	/* position: fixed; */
	cursor: pointer;
	/* filter: brightness(60%);  */
	/* position: absolute; */
}

#myimg2:hover {
	cursor: pointer;
	/* filter: brightness(60%);  */
	/* position: absolute; */
}

#myimg3:hover {
	cursor: pointer;
	/* filter: brightness(60%);  */
	/* position: absolute; */
}

#myimg1 {
	background-image: url("/AtTicketProject/images/big_theater.jpeg");
	background-size: contain;
	background-position: center center;
	background-repeat: no-repeat;
	/* width: auto;
        height: 300px; */
}

#myimg2 {
	background-image: url("/AtTicketProject/images/classic10.jpeg");
	background-size: contain;
	background-position: center center;
	background-repeat: no-repeat;
	/* width: 300px;
        height: auto; */
}

#myimg3 {
	background-image: url("/AtTicketProject/images/classic11.jpeg");
	background-size: contain;
	background-position: center center;
	background-repeat: no-repeat;
	/* width: 300px;
        height: auto; */
}

.highcharts-figure {
	width: 10px;
	height: 10px;
}

.menubar {
	margin: 0 5px;
	cursor: pointer;
}

#container1 tspan {
	font-weight: bold;
	color: #7E9CB6 !important;
}

#sel {
	position: relative;
	z-index: 1;
	margin-bottom: 10px;
	margin-top: 10px;
	margin-left: 10px;
}

h3 {
	margin-top: 20px;
	font-weight: bold;
	font-size: 1.5em;
	color: sandybrown;
	margin-left: 10px;
}

th {
	background-color: #7E9CB6;
}

.wrapper {
	display: grid;
	grid-template-columns: 950px 950px;
	grid-template-rows: 80px 450px 580px 400px;
}

.item1 {
	grid-column: 1/3;
	grid-row: 1/2;
}

.item2 {
	margin-top: -49px;
	margin-left: 380px;
	grid-column: 1/2;
	grid-row: 2/3;
}

.item3 {
	height: 285px;
	width: 400px;
	border: 1px solid #7E9CB6;
	grid-column: 2/3;
	grid-row: 2/3;
	margin-top: 51px;
	margin-right: 380px;
	margin-left: -150px;
}

.item4 {
	margin-left: 380px;
	grid-column: 1/3;
	grid-row: 3/4;
	/* margin-top: 30px; */
}

.item5 {
	grid-column: 1/2;
	grid-row: 4/5;
	width: 600px;
	height: 300px;
	margin-left: 490px;
	border: 1px solid #7E9CB6;
	margin-top: -30px;
}

#date {
	margin-left: 50px;
	margin-bottom: 20px;
}

#date1 {
	margin-left: 50px;
	margin-bottom: 20px;
}

.item6 {
	position: relative;
	left: 20px;
	top: -70px;
	grid-column: 2/3;
	grid-row: 4/5;
	margin: 40px;
	width: 615px;
	height: 300px;
	margin-right: 380px;
	border: 1px solid #7E9CB6;
	margin-left: -2px;
}

#sel1 {
	position: relative;
	top: 13px;
	z-index: 1;
	margin-left: 10px;
	margin-bottom: 30px;
}

.graph {
	width: 520px;
}

#container2 {
	width: 590px;
	height: 230px;
}

.glyphicon {
	font-size: 2em
}

#mo {
	overflow: hidden;
	margin-top: -20px;
}

#rbox {
	transition: all 1s linear;
}

.img1 {
	/* margin-top: -200px; */
	margin-right: -4px;
	width: 135px;
	height: 200px;
}

#sel2 {
	margin-left: 10px;
	margin-top: 10px;
	margin-bottom: 5px;
}

#ul1 li {
	/* color: #333333; */
	margin-left: 20px;
	margin-bottom: 10px;
}

#ul2 li {
	/* color: #8AC6D1; */
	/* line-height: 14px; */
	margin-bottom: -10px;
	margin-left: 20px;
}

#free {
	position: relative;
	left: 420px;
	top: -291px;
}

th {
	text-align: center;
}

td {
	text-align: center;
}

tr:nth-child(1) {
	text-align: right;
}

tr:nth-child(4) {
	text-align: right;
}

#txt1 {
	opacity: 0;
}

#txt2 {
	opacity: 0;
}

#txt3 {
	opacity: 0;
}

#myimg1:hover #txt1 {
	opacity: 1;
	animation-name: key1;
	animation-duration: .5s;
	filter: brightness(100%);
	transform: scale(1, 1);
	z-index: 2;
}

#myimg2:hover #txt2 {
	opacity: 1;
	animation-name: key1;
	animation-duration: .5s;
	filter: brightness(100%);
	transform: scale(1, 1);
	z-index: 2;
}

#myimg3:hover #txt3 {
	opacity: 1;
	animation-name: key1;
	animation-duration: .5s;
	filter: brightness(100%);
	transform: scale(1, 1);
	z-index: 2;
}

th {
	color: white;
	font-weight: bold;
}

#myimg1 {
	position: relative;
	/* left: -30px; */
	height: 200px;
	width: 140px;
	/* background-color: rgba(0, 0, 0, 0.1); */
	z-index: 1;
}

#myimg2 {
	position: relative;
	/* left: 140px; */
	height: 200px;
	width: 140px;
	/* background-color: rgba(0, 0, 0, 0.1); */
	z-index: 1;
}

#myimg3 {
	position: relative;
	/* left: 140px; */
	height: 200px;
	width: 140px;
	/* background-color: rgba(0, 0, 0, 0.1); */
	z-index: 1;
}

#myimg1:hover .img-cover {
	display: block;
	position: relative;
	top: -60px;
	padding-top: 60px;
	width: 140px;
	height: 200px;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 100;
}

#myimg2:hover .img-cover {
	display: block;
	position: relative;
	top: -60px;
	padding-top: 60px;
	width: 140px;
	height: 200px;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 100;
}

#myimg3:hover .img-cover {
	display: block;
	position: relative;
	top: -60px;
	padding-top: 60px;
	width: 140px;
	height: 200px;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 100;
}
</style>
</head>
<body>

	<div id="main">

		<%@include file="/WEB-INF/views/inc/mypagetopbar.jsp"%>

		<div id="middle">
			<%@include file="/WEB-INF/views/inc/mypageleft.jsp"%>

			<div id="right" style="position:relative; left:-350px;top:-75px;">
				<div class="wrapper">
					<div class="item1">
						<div id="top">
						</div>
						<div
							style="font-weight: bold; margin-left:380px; font-size: 1.3em; background-color: #FAE4D9; text-align: center; width: 140px; color: white;">
							MyPage 상세</div>
					</div>

					<div class="item2">
						<!-- <div id="box"> -->
						<div id="tt">나의 정보</div>
						<div class="b">
							<p></p>
							<img id="photo" src="/AtTicketProject/images/아이유.png"
								width="125px" height="125px" style="float: left;">
							<div style="position: relative; top: 40px;" id="content">
								<span style="font-weight: bold;">이름 : 홍길동</span><br> <span
									style="font-weight: bold;">나이 : 26</span><br> <span
									style="font-weight: bold;">주소 : 서울 강남구 역삼동</span><br> <span
									style="font-weight: bold;">이메일 : cherry1234@naver.com</span><br>
								<span style="font-weight: bold;">전화번호 : 010-1234-5678</span><br>
								<span style="font-weight: bold;">닉네임 : 냠냠</span><br> <span
									style="font-weight: bold;">아이디 : sunny96</span><br>
							</div>
							<div
								style="margin-top: 60px; margin-left: 30px; font-size: 1.2em;">
								<span style="font-weight: bold;">[♡ 사진을 클릭하면 고객 등급이 나옵니다.
									♡]</span>
							</div>
						</div>
						<!-- </div> -->

					</div>

					<div style="clear: both;"></div>

					<div class="item3">
						<div id="tt4">Q&A 답변 여부</div>
						<div
							style="overflow-y: auto; width: 398px; height: 253px; position: relative; top: 1px;">
							<div>
								<input
									style="width: 100px; text-align: center; margin-top: 10px;"
									type="text" id="date">
							</div>
							<ul id="ul1">
								<li>1. <b>구분: </b>공연 문의<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>답변
										시간:</b> 2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>[047]</b>번이
									답변 되었습니다.
								</li>
								<li>2. <b>구분: </b>공연 문의<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>답변
										시간:</b> 2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>[047]</b>번이
									답변 되었습니다.
								</li>
								<li>3. <b>구분: </b>공연 문의<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>답변
										시간:</b> 2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>[047]</b>번이
									답변 되었습니다.
								</li>
								<li>4. <b>구분: </b>공연 문의<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>답변
										시간:</b> 2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>[047]</b>번이
									답변 되었습니다.
								</li>
								<li>5. <b>구분: </b>공연 문의<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>답변
										시간:</b> 2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>[047]</b>번이
									답변 되었습니다.
								</li>
								<li>6. <b>구분: </b>공연 문의<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>답변
										시간:</b> 2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>[047]</b>번이
									답변 되었습니다.
								</li>
							</ul>
						</div>
						<div id="free" style="margin-left: -6px; margin-top: 8px;">
							<div id="tt5">자유게시판</div>
							<div
								style="overflow-y: auto; width: 402px; height: 254px; position: relative; top: -0.5px;">
								<div>
									<input
										style="width: 100px; text-align: center; margin-left: 50px; margin-top: 10px;"
										type="text" id="date1">
								</div>
								<ul id="ul2">
									<li>1. <b>태그: </b>후기<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>시간:</b>
										2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;
									</li>
									<li>2. <b>태그: </b>후기<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>시간:</b>
										2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;
									</li>
									<li>3. <b>태그: </b>후기<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>시간:</b>
										2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;
									</li>
									<li>4. <b>태그: </b>후기<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>시간:</b>
										2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;
									</li>
									<li>5. <b>태그: </b>후기<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>시간:</b>
										2020-07-23 13:00<br> &nbsp;&nbsp;&nbsp;&nbsp;
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="item4" style="margin: -80px auto; margin-left: 380px;">
						<div id="tt2">구매 티켓 내역</div>
						<div id="bb1">
							<select style="margin-left: 250px;" name="sel1" id="sel1">
								<optgroup label="월">
									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</optgroup>
							</select>
							<div style="border: 1px #8AC6D1;">
								<div
									style="position: relative; display: inline-block; top: 80px; left: 30px; margin-left: 170px;">
									<span class="glyphicon glyphicon-chevron-left" id="conleft"></span>
								</div>
								<div id="mo"
									style="width: 135px; height: 200px; margin-left: 250px;">
									<div style="width: 420px; height: 200px;" id="rbox">
										<div
											style="color: white; text-align: center; padding-top: 60px; float: left;"
											id="myimg1" class="img1">
											<div class="img-cover">
												<span id="txt1">셜록 홈즈 <br> 2020-07-24<br>강남구
													역삼동
												</span>
											</div>
										</div>
										<div
											style="color: white; text-align: center; padding-top: 60px; float: left;"
											id="myimg2" class="img-cover img1">
											<div class="img-cover">
												<span id="txt2">셜록 홈즈 <br> 2020-07-24<br>강남구
													역삼동
												</span>
											</div>
										</div>
										<div
											style="color: white; text-align: center; padding-top: 60px; float: left;"
											id="myimg3" class="img-cover img1">
											<div class="img-cover">
												<span id="txt3">셜록 홈즈 <br> 2020-07-24<br>강남구
													역삼동
												</span>
											</div>
										</div>
										<!-- <img class="img1" src="./images/big_theater.jpeg" id="myimg1">
                        <img class="img1" src="./images/classic10.jpeg" id="myimg2">
                        <img class="img1" src="./images/classic11.jpeg" id="myimg3"> -->
									</div>
								</div>
								<!-- <div style="position: relative;left: 300px;top: -150px;color: white;">셜록 홈즈 <br> 2020-07-24<br>강남구 역삼동</div> -->
								<div
									style="position: relative; display: inline-block; position: relative; top: -133px; left: 210px; margin-left: 198px; z-index: 1;">
									<span class="glyphicon glyphicon-chevron-right" id="conright"></span>
								</div>
							</div>


							<div class="graph"
								style="position: relative; top: -330px; left: 700px;">
								<figure class="highcharts-figure">
									<div id="container1"></div>
								</figure>
							</div>

							<div
								style="border: 1px solid #7E9CB6; width: 900px; height: 150px; overflow-y: auto; margin-left: 180px; margin-top: -10px; position: relative; top: -30px;">
								<table
									style="width: 100%; height: 150px; border: 1px solid #eeee; margin: 0px;"
									class="table table-hover">
									<tr>
										<th>상태</th>
										<th>내역</th>
										<th>날짜</th>
										<th>가격</th>
										<th>장소</th>
									</tr>
									<tr>
										<td>취소</td>
										<td>오페라 유령 연극이 취소가 되었습니다.</td>
										<td>2020-07-21</td>
										<td>50000</td>
										<td>서울 강남구 역삼동 예술의 전당</td>
									</tr>
									<tr>
										<td>예약</td>
										<td>뮤지컬 타이타닉이 예약되었습니다.</td>
										<td>2020-07-23</td>
										<td>30000</td>
										<td>경기 부천시 소사 레인보우 전당</td>
									</tr>
									<tr>
										<td>예약</td>
										<td>뮤지컬 타이타닉이 예약되었습니다.</td>
										<td>2020-07-23</td>
										<td>30000</td>
										<td>경기 부천시 소사 레인보우 전당</td>
									</tr>
									<tr>
										<td>예약</td>
										<td>공연 블핑 콘서트가 예약되었습니다.</td>
										<td>2020-07-25</td>
										<td>150000</td>
										<td>경기 부천시 소사 레인보우 전당</td>
									</tr>
									<tr>
										<td>예약</td>
										<td>공연 블핑 콘서트가 예약되었습니다.</td>
										<td>2020-07-25</td>
										<td>150000</td>
										<td>경기 부천시 소사 레인보우 전당</td>
									</tr>
									<tr>
										<td>예약</td>
										<td>공연 블핑 콘서트가 예약되었습니다.</td>
										<td>2020-07-25</td>
										<td>150000</td>
										<td>경기 부천시 소사 레인보우 전당</td>
									</tr>
								</table>

							</div>

						</div>
					</div>


					<div class="item5" style="margin-left: 380px;">

						<div id="tt1">고객 포인트</div>
						<select name="sel" id="sel">
							<optgroup label="월">
								<option value="1">1월</option>
								<option value="2">2월</option>
								<option value="3">3월</option>
								<option value="4">4월</option>
								<option value="5">5월</option>
								<option value="6">6월</option>
								<option value="7">7월</option>
								<option value="8">8월</option>
								<option value="9">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
							</optgroup>
						</select>
						<div class="graph">
							<figure class="highcharts-figure">
								<div id="container"></div>
							</figure>
						</div>
					</div>

					<div class="item6" style="margin-left: 40px;">
						<div id="tt3">나의 방문 횟수</div>
						<select name="sel2" id="sel2">
							<optgroup label="월">
								<option value="1">1월</option>
								<option value="1">2월</option>
								<option value="1">3월</option>
								<option value="1">4월</option>
								<option value="1">5월</option>
								<option value="1">6월</option>
								<option value="1">7월</option>
								<option value="1">8월</option>
								<option value="1">9월</option>
								<option value="1">10월</option>
								<option value="1">11월</option>
								<option value="1">12월</option>
							</optgroup>
						</select>
						<figure class="highcharts-figure">
							<div id="container2"></div>
						</figure>
					</div>

					<!-- <div class="item7">

            </div> -->
					<%@include file="/WEB-INF/views/inc/userchat.jsp"%>
					<!-- 제일 위로 돌아가기 버튼 -->
					<div id="movetop">↑</div>
				</div>
			</div>
		</div>
			<%@include file="/WEB-INF/views/inc/mypagebottom.jsp"%>
	</div>


		<script type="text/javascript">
			Highcharts.chart('container', {

				colors : [ "#C8EBFA" ],

				title : {
					text : ''
				},

				yAxis : {
					title : {
						text : 'Points'
					}
				},
				credits : {
					enabled : false
				},

				xAxis : {
					accessibility : {
						rangeDescription : 'Range: 1 to 31'
					},
					categories : [ '1', '2', '3', '4', '5', '6', '7', '8', '9',
							'10', '11', '12', '13', '14', '15', '16', '17',
							'18', '19', '20', '21', '22', '23', '24', '25',
							'26', '27', '28', '29', '30', '31'

					]
				},

				legend : {
					layout : 'vertical',
					align : 'right',
					verticalAlign : 'middle'
				},

				plotOptions : {
					series : {
						label : {
							connectorAllowed : false
						},
						pointStart : 1

					}
				},

				series : [ {
					name : '1월',
					data : [ 0, 525, 571, 696, 1703, 1199, 1373, 1545, 1800,
							5000, 4500, 3000, 1234, 2000, 1739, 4394, 6000,
							4838, 1281, 8237, 3562, 2000, 2387, 3937, 3984,
							8008, 2039, 10000, 0, 1200, 300 ]
				} ],

				responsive : {
					rules : [ {
						condition : {
							maxWidth : 500
						},
						chartOptions : {
							legend : {
								layout : 'horizontal',
								align : 'center',
								verticalAlign : 'bottom'
							}
						}
					} ]
				}

			});

			// Build the chart
			Highcharts
					.chart(
							'container1',
							{
								chart : {
									plotBackgroundColor : null,
									plotBorderWidth : null,
									plotShadow : false,
									type : 'pie'
								},

								title : {
									text : ' ♡ 장르별 구매 티켓 ♡'
								},
								tooltip : {
									pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
								},
								accessibility : {
									point : {
										valueSuffix : '%'
									}
								},
								plotOptions : {
									pie : {
										allowPointSelect : true,
										cursor : 'pointer',
										dataLabels : {
											enabled : false
										},
										showInLegend : true
									}
								},
								credits : {
									enabled : false
								},
								series : [ {
									name : 'Brands',
									colorByPoint : true,
									data : [ {
										name : '콘서트',
										y : 61.41,
										sliced : true,
										selected : true
									}, {
										name : '뮤지컬',
										y : 11.84
									}, {
										name : '연극',
										y : 10.85
									}, {
										name : '클래식',
										y : 4.67
									}, {
										name : '전시',
										y : 4.18
									}, {
										name : 'Other',
										y : 7.05
									} ]
								} ]
							});

			Highcharts
					.chart(
							'container2',
							{
								chart : {
									type : 'column'
								},
								colors : [ "#C8EBFA" ],
								title : {
									text : ''
								},
								credits : {
									enabled : false
								},

								xAxis : {
									categories : [ '1', '2', '3', '4', '5',
											'6', '7', '8', '9', '10', '11',
											'12', '13', '14', '15', '16', '17',
											'18', '19', '20', '21', '22', '23',
											'24', '25', '26', '27', '28', '29',
											'30', '31',

									],
									crosshair : true
								},
								yAxis : {
									min : 0,
									title : {
										text : '방문횟수'
									}
								},
								tooltip : {
									headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
									pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
											+ '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
									footerFormat : '</table>',
									shared : true,
									useHTML : true
								},
								plotOptions : {
									column : {
										pointPadding : 0.2,
										borderWidth : 0
									}
								},
								series : [ {
									name : '1월',
									data : [ 49, 71, 10, 12, 14, 17, 35, 14,
											21, 19, 95, 54, 13, 14, 56, 50, 40,
											42, 50, 22, 24, 14, 45, 39, 29, 30,
											44, 36, 26, 40, 31 ]

								} ]
							});
		</script>

		<script>
			var rbox = document.getElementById("rbox")
			var distance = 0;
			$("#conright").click(
					function() {

						if (distance == 270) {
							distance = 0;
							rbox.style.transform = "translate(0px,0px)";
						} else {
							distance += 135;
							rbox.style.transform = "translate(-" + distance
									+ "px,0px)";
						}
					});
			distance = 270;
			$("#conleft").click(
					function() {
						if (distance == -135) {
							distance = 270;
						} else {
							console.log(distance);
							rbox.style.transform = "translate(-" + distance
									+ "px,0px)";
							distance -= 135;
						}
					});

			$("#photo").mouseenter(function() {
				$("#photo").css("opacity", 0.7);
			});

			$("#photo").mouseout(function() {
				$("#photo").css("opacity", 1);
			});

			$("#photo").click(function() {
				alert("VVIp");
			});

			var date = document.getElementById("date");
			var date1 = document.getElementById("date1");
			var now = new Date();

			//날짜 자동 입력, 읽기만 가능 
			date.value = now.getFullYear() + " / " + (now.getMonth() + 1)
					+ " / " + now.getDate();
			if (date.value != null) {
				date.readOnly = true;
			}
			date1.value = now.getFullYear() + " / " + (now.getMonth() + 1)
					+ " / " + now.getDate();
			if (date1.value != null) {
				date1.readOnly = true;
			}

			$(".img1").mouseover(function() {
				$(this).css("opacity", 0.5);
			});

			$(".img1").mouseout(function() {
				$(this).css("opacity", 1);
			});
		</script>
</body>
</html>