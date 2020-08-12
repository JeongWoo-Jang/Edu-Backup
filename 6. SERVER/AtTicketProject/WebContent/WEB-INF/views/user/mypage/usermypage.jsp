<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/usermypage.css" />

    <style>

        #right {
            /* border: 1px solid black; */
            float: right;
            width: 850px;	
            height: 993px;
            margin-left: 15px;
        }
        .event {
            border: 1px solid #D3D3D3;
            width: 410px;
            height: 100px;
            float: left;
            margin-bottom: 25px;
        }
        .event:nth-child(2) {
            float:right;
        }
        .event > p:first-child {
            background-color: #7E9CB6;
            border: 1px solid #6D88A3;
            height: 35px;
            color: white;
            font-weight: bold;
            padding: 6px 20px;
            font-size: 16px;
        }
        .event > p:first-child > span {
            font-weight: normal;
            font-size: 14px;
        }
        .event > p:first-child > span > span { text-decoration: underline; }
        .event > ul > li {
            margin-bottom: 5px;
            font-size: 13px;
        }
        .event > ul > li > span {
            text-decoration: underline;
            color: red;
            cursor: pointer;
        }
        .mycount > p > span > span { color: red; text-decoration: underline; }
        .mycount {
            /* border: 1px solid #DBE4F3; */
            width: 100%;
            height: 150px;
            margin-bottom: 25px;
        }
        .mycount > p:first-child {
            color: #444;
            font-size: 15px;
            font-weight: bold;
        }
        .mycount > p > i {
            margin-right: 3px;
            font-size: 12px;
            color: #888;
        }
        .mycount > p > span {
            font-weight: normal;
            margin-left: 10px;
            font-size: 12px;
        }
        .mycount #tbl1 {
            border-collapse: collapse;
            width: 100%;
        }
        #tbl1 th, #tbl1 td {
            border: 1px solid #D3D3D3;
            text-align: center;
            font-size: 13px;
            color: #444;
            padding: 10px 0;
        }
        #tbl1 th {
            background-color: #EEE;
            border-top: 3px solid #4E7AD1;
            border-bottom: 1px solid #CCC;
        }
        #tbl1 td {
            border-left: 0;
            border-right: 0;
        }
        .mylist {
            border: 1px solid #ccc;
            border-top: 3px solid #4E7AD1;
            height: 133px;
            overflow: hidden;
        }
        .mylist > ul > li {
            width: 34%;
            height: 110px;
            font-size: 12px;
            list-style-type: none;
            padding: 5px;
            display: inline-block;
            margin-top: 10px;
            border-right: 1px dotted #ccc;
        }
        .mylist > ul > li:first-child { margin-left: -32px; }
        .mylist > ul > li:nth-child(3) { border: 0; }
        .mylist > ul > li > img {
            width: 60px;
            height: 70px;
        }
        .mylist > ul > div {
            text-align: center;
            margin-top: 40px;
            margin-left: -32px;
            font-size: 13px;
            padding: 5px;
        }
        .mylist button span {
            color: blue;
        }
        #tbl2 {
            border: 3px solid #4E7AD1;
            width: 100%;
        }
        #tbl2 th, #tbl2 td {
            border: 1px solid #B6C1DD;
            padding: 10px 15px;
            font-size: 13px;
        }
        #tbl2 th {
            background-color: #EEE;
            width: 150px;
        }

    </style>
</head>
<body>
    
    <div id="main">
<!-------------------------------- 화면 상단부 -------------------------------->
        <%@include file="/WEB-INF/views/inc/mypagetopbar.jsp" %>
<!-------------------------------- 내용부분 -------------------------------->
        <div id="middle">
            <!-- 마이페이지 좌측 -->
        <%@include file="/WEB-INF/views/inc/mypageleft.jsp" %>
<!----------------------------------------------------------------------------->

            <!-- 마이페이지 우측 -->
            <div id="right">
                <div class="event">
                    <p>COUPON</p>
                    <ul>
                        <li>공연 할인 쿠폰 : 사용가능 <span class="coupon">${fn:length(clist)}</span> 매</li>
                        <li>공연 예매권 : 사용가능 <span class="coupon">0</span> 매</li>
                    </ul>
                </div>
                <div class="event">
                    <p>EVENT <span>| 현재 진행 중인 이벤트 <span>${fn:length(elist)}</span>건</span><input type="button" value="더보기" class="btn btn-default btn-xs" id="eventmore" style="float: right; outline: none;"></p>
                    <ul>
                    <c:forEach items="${elist}" var="event" begin="0" end="1" step="1">
                    
                        <li><a href="/AtTicketProject/userevent.do">${event.title}</a></li>
                        
                        <c:if test="${empty event.title}">
                        	<li><a href="#!">진행중인 이벤트가 없습니다.</a></li>
                        </c:if>
                        
                    </c:forEach>
                    </ul>
                </div>
                <div style="clear: both;"></div>
                <div class="mycount">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>최근 예매내역<span>${username}님께서 최근 3개월간 예매하신 내역입니다.</span></p>
                    <table id="tbl1">
                        <thead>
                            <th>예매일</th>
                            <th>예매번호</th>
                            <th>공연명</th>
                            <th>관람일시</th>
                            <th>매수</th>
                            <th>에매상태</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="6">최근 예매내역이 없습니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="mycount">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>Egg포인트 적립내역<span>공연 예매로 인해 적립된 egg포인트 내역입니다.</span></p>
                    <table id="tbl1">
                        <thead>
                            <th>공연명(예매번호)</th>
                            <th>적립일</th>
                            <th>Egg포인트</th>
                            <th>적립상태</th>
                            <th>적립유형</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="5">공연 예매로 인한 Egg포인트 적립내역이 존재하지 않습니다.</td>
                            </tr>
                        </tbody>
                    </table>
                    <p style="font-size: 11px; float: right; margin-top: 5px;">Egg포인트는 공연 관람일 혹은 후기 작성일 익일 지급됩니다.</p>
                </div>
                <div class="mycount">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>나의 관심 공연<span>'나의 관심 공연'이 <span>0</span>개 있습니다.</span></p>
                    <div class="mylist">
                    
                        <ul>
                            <!-- <li>
                                <img src="http://tkfile.yes24.com/upload2/PerfBlog/202007/20200720/20200720-angel_new_36898.jpg">
                                <a href="#">
                                    뮤지컬 <어쩌면 해피엔딩> 2020
                                </a>
                                <a href="#">
                                    2020.06.30 ~ 2020.09.13<br>
                                    예스24스테이지 1관
                                </a>
                            </li> -->
                            
                            <div>
                                <p>'나의 관심 공연'으로 담은 공연이 없습니다.</p>
                                <button class="btn btn-default btn-xs" style="outline: none; margin-top: -5px;" id="add">관심 공연 담기<span>+</span></button>
                            </div>
                        </ul>
                    </div>
                </div>
                <div class="mycount">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>나의 관람 공연</p>
                    <div class="mylist">
                        <ul>
                            <div>
                                <p>'나의 관람 공연'이 없습니다.</p>
                            </div>
                        </ul>
                    </div>
                </div>
                <div class="mycount">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>나의 맞춤 알람 소식<span>최근 1주일 간 업데이트된 맞춤 알람 소식입니다.</span></p>
                    <table id="tbl2">
                        <tbody>
                            <tr>
                                <th>맞춤알람 공연</th>
                                <td>최근 업데이트 소식이 없습니다.</td>
                            </tr>
                            <tr>
                                <th>티켓오픈 알람</th>
                                <td>최근 업데이트 소식이 없습니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- 챗봇 : 단비봇 -->
            <%@include file="/WEB-INF/views/inc/userchat.jsp" %>
            <!-- 제일 위로 돌아가기 버튼 -->
            <div id="movetop">↑</div>
        </div>
<!-------------------------------- 화면 하단부 -------------------------------->
        <%@include file="/WEB-INF/views/inc/mypagebottom.jsp" %>
    </div>



    <script>

        //이벤트 더보기 클릭시 이동
        $("#eventmore").click(function() {
            location.href = "/AtTicketProject/userevent.do";
        });

        //movetop
        $("#movetop").click(function() {
            event.preventDefault();
            $("html, body").animate({
                scrollTop: 0
            }, 500);
        });

        //팝업창 가운데 배치
        var popupWidth = 900;
        var popupheight = 650;
        var popupX = (window.screen.width / 2) - (popupWidth / 2);
        var popupY = (window.screen.height / 2) - (popupheight / 2);
        //관심 공연 담기 팝업창
        $("#add").click(function() {
            window.open("mypage_interest_popup.html","_black",`left=${popupX}, top=${popupY}, width=${popupWidth}, height=${popupheight};`);
        });

        //쿠폰에 매수 클릭시
        $(".coupon").click(function() {
            location.href = "/AtTicketProject/mypagecoupon.do";
        });

    </script>

</body>
</html>