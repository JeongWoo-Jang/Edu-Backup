<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
		<%@include file="/WEB-INF/views/inc/asset.jsp" %>
		<link rel="stylesheet" href="css/usermain.css" />
		
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
            rel="stylesheet"
        />
        <link rel="shortcut icon" href="./images/favicon.ico">

    </head>
    <body>
        <div id="main">
            <!-------------------------------- 화면 상단부 -------------------------------->
            <div id="top">
            
				<%@include file="/WEB-INF/views/inc/usertopbar.jsp" %>
                    
                <!-- 메인화면 좌우로 넘기는 버튼 -->
                <div class="switch">
                    <img src="./images/slide-dir-prev.png" class="prev" />
                    <img src="./images/slide-dir-next.png" class="after" />
                </div>
                <div class="rect" id="rect1">
                    <h2>아름다운 가을의 서울숲에서 즐기는</h2>
                    <h1>서울숲<br />재즈페스티벌</h1>
                    <h3>2020.10.09 ~ 2020.10.11 서울숲공원 일대</h3>
                </div>
                <div class="rect" id="rect2">
                    <h2>4년 만에 돌아온</h2>
                    <h1>뮤지컬<br />머더 발라드</h1>
                    <h3>2020.08.11 ~ 2020.10.25 세종문화회관 S씨어터</h3>
                </div>
                <div class="rect" id="rect3" style="color: black;">
                    <h2>5년의 기다림, 그리고 20주년!</h2>
                    <h1>뮤지컬<br />베르테르</h1>
                    <h3>7월23일(목) 오후 2시 2차 티켓오픈</h3>
                </div>
                <div class="rect" id="rect6" style="color: black;">
                    <h2>서로에게 빛이 되어준 위로의 이야기</h2>
                    <h1>뮤지컬<br />라 루미에르</h1>
                    <h3>2020.09.11 ~ 2020.10.25 대학로 유니플렉스 2관</h3>
                </div>
                <div class="rect" id="rect7" style="color: black;">
                    <h2>Ah, ah, ah, ah What can I do?</h2>
                    <h1>SURL (설)<br />concert</h1>
                    <h3>2020.08.15 ~ 2020.08.16 노들섬 라이브하우스</h3>
                </div>
                <div class="rect" id="rect8">
                    <h2>비지정석 최대 50% 할인</h2>
                    <h1 style="letter-spacing: -6px;">
                        오페라의 유령<br />월드투어
                    </h1>
                    <h3>
                        2020.08.19 ~ 2020.09.27 대구 계명아트센터<br />2020.03.14
                        ~ 2020.08.07 블루스퀘어 인터파크홀
                    </h3>
                </div>
                <div class="rect" id="rect9">
                    <h2>3천원 할인쿠폰 증정</h2>
                    <h1 style="font-size: 5em;">
                        그랜드 민트<br />페스티벌 2020
                    </h1>
                    <h3>2020.10.24 ~ 2020.10.25 올림픽공원 내</h3>
                </div>
            </div>
            <!-------------------------------- 내용부분 -------------------------------->
            <div id="middle1">
                
                <%@include file="/WEB-INF/views/inc/usersidebar.jsp" %>
                
                <br />
                <!-- 최신, 인기 공연 목록(순위별) -->
                <div style="text-align: center;">
                    <h1>WHAT'S HOT</h1>
                    <div style="padding: 10px 0;">
                        <div
                            class="img"
                            id="bigimg"
                            style="
                                width: 420px;
                                height: 675px;
                                display: inline-block;
                                background-image: url(./images/${hot.get(0).img});
                            "
                            value="temp"
                        >
                            <div class="img-cover cover" value="cover">
                                <div class="text temp">
                                    <h4>${hot.get(0).genre}</h4>
                                    <span>${hot.get(0).name}</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: inline-block; width: 730px;">
                        
                        <c:set var="i" value="1" />
                        <c:forEach items="${hot}" var="hot" begin="1" end="6" step="1">
                        	<div class="img img${i}" value="temp${i}" style="background-image: url(./images/${hot.img});">
                                <div class="img-cover1 cover${i}" value="cover${i}">
                                    <div class="text1 temp${i}">
	                                    <h4>${hot.genre}</h4>
	                                    <span>${hot.name}</span>
                                    </div>
                                </div>
                            </div>
                        <c:set var="i" value="${i + 1}" />
                        </c:forEach>
                        
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 오픈 예정 티켓 목록 -->
                <div style="text-align: center;">
                    <h1>TICKET OPEN</h1>
                    <div>
                        <div class="img opne1" value="temp7">
                            <div class="img-cover1 cover7" value="cover7">
                                <div class="text1 temp7">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne2" value="temp8">
                            <div class="img-cover1 cover8" value="cover8">
                                <div class="text1 temp8">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne3" value="temp9">
                            <div class="img-cover1 cover9" value="cover9">
                                <div class="text1 temp9">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne4" value="temp10">
                            <div class="img-cover1 cover10" value="cover10">
                                <div class="text1 temp10">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne5" value="temp11">
                            <div class="img-cover1 cover11" value="cover11">
                                <div class="text1 temp11">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 티켓오픈 더보기 버튼 -->
                    <input
                        type="button"
                        value="티켓오픈 더보기"
                        class="btn btn-default"
                        id="btnticket"
                        style="margin-top: 20px;"
                        onclick="location.href='/AtTicketProject/usernotice.do'"
                    />
                </div>
                <hr />
            </div>
            <!-- 배너 이미지 -->
            <div id="banner" style="background-color: ${banner.backcolor}">
                <div id="bannerimg" style="background-image: url(./images/${banner.img})"></div>
            </div>
            <div id="middle2">
                <hr />
                <div style="text-align: center;">
                    <h1>RANKING</h1>
                    <!-- 랭킹 해시태그 버튼 -->
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#뮤지컬"
                        id="hashmusical"
                        onclick="location.href='/AtTicketProject/userranking.do?sort=musical'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#콘서트"
                        id="hashconcert"
                        onclick="location.href='/AtTicketProject/userranking.do?sort=concert'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#연극"
                        id="hashplay"
                        onclick="location.href='/AtTicketProject/userranking.do?sort=theater'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#클래식"
                        id="hashclassic"
                        onclick="location.href='/AtTicketProject/userranking.do?sort=classic'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#전시"
                        id="hashexhibition"
                        onclick="location.href='/AtTicketProject/userranking.do?sort=exhibition'"
                    />
                    <!-- 랭킹 이미지 -->
                    <div style="margin-top: 20px;">
                    <c:set var="i" value="12" />
                    <c:forEach items="${rank}" var="rank">
                        <div class="img rank" value="temp${i}" style="background-image: url(./images/${rank.img})">
                            <div class="img-cover1 cover${i}" value="cover${i}">
                                <div class="text1 temp${i}">
                                    <h4>${rank.genre}</h4>
                                    <span>${rank.name}</span>
                                </div>
                            </div>
                        </div>
                    <c:set var="i" value="${i + 1}" />
                    </c:forEach>
                    </div>
                    <!-- 랭킹 더보기 버튼 -->
                    <input
                        type="button"
                        value="랭킹 더보기"
                        class="btn btn-default"
                        id="btnrank"
                        style="margin-top: 20px;"
                        onclick="location.href='/AtTicketProject/userranking.do'"
                    />
                </div>
                <hr />
                <!-- 뮤지컬, 연극 목록 -->
                <div style="text-align: center;">
                    <h1>MUSICAL & PLAY</h1>
                    <div>
                    <c:set var="i" value="15" />
                    <c:forEach items="${musical}" var="musical">
                        <div class="img musicimg" value="temp${i}" style="background-image: url(./images/${musical.img})">
                            <div class="img-cover1 cover${i}" value="cover${i}">
                                <div class="text1 temp${i}">
                                    <h4>${musical.genre}</h4>
                                    <span>${musical.name}</span>
                                </div>
                            </div>
                        </div>
                    <c:set var="i" value="${i + 1}" />
                    </c:forEach>
                    </div>
                </div>
                <hr />
                <!-- 콘서트, 클래식 목록 -->
                <div style="text-align: center;">
                    <h1>CONCERT & CLASSIC</h1>
                    <div>
                    <c:set var="i" value="21" />
                    <c:forEach items="${concert}" var="concert">
                        <div class="img consertimg" value="temp${i}" style="background-image: url(./images/${concert.img})">
                            <div class="img-cover1 cover${i}" value="cover${i}">
                                <div class="text1 temp${i}">
                                    <h4>${concert.genre}</h4>
                                    <span>${concert.name}</span>
                                </div>
                            </div>
                        </div>
					<c:set var="i" value="${i + 1}" />
                    </c:forEach>
                    </div>
                </div>
                <hr />
                <!-- 전시 목록 -->
                <div style="text-align: center; margin-bottom: 30px;">
                    <h1>EXHIBITION</h1>
                    <div>
                    <c:set var="i" value="27" />
                    <c:forEach items="${exhibition}" var="exhibition">
                        <div class="img dpimg" value="temp${i}" style="background-image: url(./images/${exhibition.img})">
                            <div class="img-cover1 cover${i}" value="cover${i}">
                                <div class="text1 temp${i}">
                                    <h4>${exhibition.genre}</h4>
                                    <span>${exhibition.name}</span>
                                </div>
                            </div>
                        </div>
					<c:set var="i" value="${i + 1}" />
                    </c:forEach>
                    </div>
                </div>
                <hr />
                
                <%@include file="/WEB-INF/views/inc/userchat.jsp" %>
                
                <!-- 제일 위로 돌아가기 버튼 -->
                <div id="movetop">↑</div>
                <div id="movebottom">↓</div>
            </div>
            <!-------------------------------- 화면 하단부 -------------------------------->
            
            <%@include file="/WEB-INF/views/inc/userbottombar.jsp" %>
            
        </div>

        <script>
        
            //top에있는 그림 자동 슬라이드
            $("#top").backstretch(
                [
                    "./images/${map.mainslider01}",
                    "./images/${map.mainslider02}",
                    "./images/${map.mainslider03}",
                    "./images/${map.mainslider04}",
                    "./images/${map.mainslider05}",
                    "./images/${map.mainslider06}",
                    "./images/${map.mainslider07}",
                    "./images/${map.mainslider08}",
                    "./images/${map.mainslider09}",
                ],
                { duration: 3000, fade: 1000 }
            );

            var timer;
            //top에있는 그림 슬라이드시 글 추가
            $(window).on("backstretch.after", function (e, instance, index) {
                $(".rect").css("display", "none");
                console.log(index);
                index++;
                $("#rect"+index).fadeIn("slow");

                timer = setTimeout(function () {
                    $(".rect").css("display", "none");
                }, 3100);
            });

            //top에있는 그림 이전으로
            $(".prev").click(function () {
                $("#top").backstretch("prev");
                $(".rect").css("display", "none");
                clearTimeout(timer);
            });
            //top에있는 그림 다음으로
            $(".after").click(function () {
                $("#top").backstretch("next");
                $(".rect").css("display", "none");
                clearTimeout(timer);
            });

            //이미지에 마우스 올릴때
            $(".img-cover1").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "1");
            });
            $(".img-cover").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "1");
            });
            //이미지에 마우스 올릴때
            $(".img-cover1").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0");
            });
            $(".img-cover").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0");
            });
            //이미지에 마우스 올릴때
            $(".img").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(add).css("opacity", "1");
                $(this).css("transform", "scale(1)");
            });

            //이미지에 마우스 뗄때
            $(".img").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(add).css("opacity", "0");
                $(this).css("transform", "scale(0.97)");
            });

            //이미지 클릭시 이동
            $(".img").click(function () {
                location.href = "#";
            });

            //movetop
            $("#movetop").click(function () {
                event.preventDefault();
                $("html, body").animate(
                    {
                        scrollTop: 0,
                    },
                    1000
                );
            });
            //페이지 하단으로 내려가기
            $("#movebottom").click(function () {
                //<a> 본연의 기능을 제거
                event.preventDefault();

                $("html,body").animate(
                    {
                        scrollTop: $(document).height(),
                    },
                    1000
                );
            });

            //팝업창 가운데 배치
            var popupWidth = 600;
            var popupheight = 400;
            var popupX = (window.screen.width / 2) - (popupWidth / 2);
            var popupY = (window.screen.height / 2) - (popupheight / 2);
            //관심 공연 담기 팝업창
            
            //var loginUrl = "/AtTicketProject/userlogin.do";//jsp 로 넘어가기 위함임
            //var logoutUrl = "/AtTicketProject/userlogout.do";
            
            //***여기가 좀 문제가 보이기 때문에 나중에 처리를 하도록 해보자
            //로그인 java 로 이동
            $("#login").click(function() {
                location.href = "/AtTicketProject/userlogin.do";
            	//window.open(loginUrl,"_black",`left=${popupX}, top=${popupY}, width=${popupWidth}, height=${popupheight};`);
            	//window.open(loginUrl,"_black");
            });
            
            //로그아웃 java 로 이동
            $("#logout").click(function() {
                location.href = "/AtTicketProject/userlogout.do";
            });
			//로그인 팝업창
        </script>
    </body>
</html>
