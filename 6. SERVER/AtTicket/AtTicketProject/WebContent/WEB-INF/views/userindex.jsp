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
                            "
                            value="temp"
                        >
                            <div class="img-cover cover" value="cover">
                                <div class="text temp">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: inline-block;">
                            <div class="img img1" value="temp1">
                                <div class="img-cover1 cover1" value="cover1">
                                    <div class="text1 temp1">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img2" value="temp2">
                                <div class="img-cover1 cover2" value="cover2">
                                    <div class="text1 temp2">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img3" value="temp3">
                                <div class="img-cover1 cover3" value="cover3">
                                    <div class="text1 temp3">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div style="display: block;"></div>
                            <div class="img img4" value="temp4">
                                <div class="img-cover1 cover4" value="cover4">
                                    <div class="text1 temp4">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img5" value="temp5">
                                <div class="img-cover1 cover5" value="cover5">
                                    <div class="text1 temp5">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img6" value="temp6">
                                <div class="img-cover1 cover6" value="cover6">
                                    <div class="text1 temp6">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
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
                        onclick="location.href='user_notice.html'"
                    />
                </div>
                <hr />
            </div>
            <!-- 배너 이미지 -->
            <div id="banner">
                <div id="bannerimg"></div>
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
                        onclick="location.href='/AtTicketProject/userranking.do'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#콘서트"
                        id="hashconcert"
                        onclick="location.href='/AtTicketProject/userranking.do'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#연극"
                        id="hashplay"
                        onclick="location.href='/AtTicketProject/userranking.do'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#클래식"
                        id="hashclassic"
                        onclick="location.href='/AtTicketProject/userranking.do'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#전시"
                        id="hashexhibition"
                        onclick="location.href='/AtTicketProject/userranking.do'"
                    />
                    <!-- 랭킹 이미지 -->
                    <div style="margin-top: 20px;">
                        <div class="img rank1" value="temp12">
                            <div class="img-cover1 cover12" value="cover12">
                                <div class="text1 temp12">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img rank2" value="temp13">
                            <div class="img-cover1 cover13" value="cover13">
                                <div class="text1 temp13">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img rank3" value="temp14">
                            <div class="img-cover1 cover14" value="cover14">
                                <div class="text1 temp11">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
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
                        <div class="img musicimg1" value="temp15">
                            <div class="img-cover1 cover15" value="cover15">
                                <div class="text1 temp15">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg2" value="temp16">
                            <div class="img-cover1 cover16" value="cover16">
                                <div class="text1 temp16">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg3" value="temp17">
                            <div class="img-cover1 cover17" value="cover17">
                                <div class="text1 temp17">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg4" value="temp18">
                            <div class="img-cover1 cover18" value="cover18">
                                <div class="text1 temp18">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg5" value="temp19">
                            <div class="img-cover1 cover19" value="cover19">
                                <div class="text1 temp19">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg6" value="temp20">
                            <div class="img-cover1 cover20" value="cover20">
                                <div class="text1 temp20">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 콘서트, 클래식 목록 -->
                <div style="text-align: center;">
                    <h1>CONCERT & CLASSIC</h1>
                    <div>
                        <div class="img consertimg1" value="temp21">
                            <div class="img-cover1 cover21" value="cover21">
                                <div class="text1 temp21">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg2" value="temp22">
                            <div class="img-cover1 cover22" value="cover22">
                                <div class="text1 temp22">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg3" value="temp23">
                            <div class="img-cover1 cover23" value="cover23">
                                <div class="text1 temp23">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg4" value="temp24">
                            <div class="img-cover1 cover24" value="cover24">
                                <div class="text1 temp24">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg5" value="temp25">
                            <div class="img-cover1 cover25" value="cover25">
                                <div class="text1 temp25">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg6" value="temp26">
                            <div class="img-cover1 cover26" value="cover26">
                                <div class="text1 temp26">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 전시 목록 -->
                <div style="text-align: center; margin-bottom: 30px;">
                    <h1>EXHIBITION</h1>
                    <div>
                        <div class="img dpimg1" value="temp27">
                            <div class="img-cover1 cover27" value="cover27">
                                <div class="text1 temp27">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg2" value="temp28">
                            <div class="img-cover1 cover28" value="cover28">
                                <div class="text1 temp28">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg3" value="temp29">
                            <div class="img-cover1 cover29" value="cover29">
                                <div class="text1 temp29">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg4" value="temp30">
                            <div class="img-cover1 cover30" value="cover30">
                                <div class="text1 temp30">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg5" value="temp31">
                            <div class="img-cover1 cover31" value="cover31">
                                <div class="text1 temp31">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg6" value="temp32">
                            <div class="img-cover1 cover32" value="cover32">
                                <div class="text1 temp31">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
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
                    "./images/bg1.jpg",
                    "./images/bg2.jpg",
                    "./images/bg3.jpg",
                    "./images/bg4.jpg",
                    "./images/bg5.jpg",
                    "./images/bg6.jpg",
                    "./images/bg7.jpg",
                    "./images/bg8.jpg",
                    "./images/bg9.jpg",
                ],
                { duration: 3000, fade: 1000 }
            );

            var timer;
            //top에있는 그림 슬라이드시 글 추가
            $(window).on("backstretch.after", function (e, instance, index) {
                $(".rect").css("display", "none");
                console.log(index);
                index++;
                $(`#rect${index}`).fadeIn("slow");

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
                $(add).css("opacity", "0.7");
            });
            $(".img-cover").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0.7");
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
