<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="./images/favicon.ico">
    <link rel="stylesheet" href="css/usermypage.css" />
    <style>

        #right {
            /* border: 1px solid black; */
            float: right;
            width: 850px;
            height: 993px;
            margin-left: 15px;
        }
        #right > h1 {
            font-size: 18px;
            margin-top: 0px;
            color: #444;
        }
        #precaution {
            border: 1px solid #CCC;
            background-color: #F8F8F8;
            width: 100%;
            margin: 20px 0;
            padding: 15px;
        }
        #precaution > p > i {
            font-size: 16px;
            margin-right: 5px;
            color: #7A98B4;
        }
        #precaution > p:first-child {
            font-weight: bold;
            text-align: left;
        }
        #precaution > p > small {
            font-weight: normal;
        }
        #tel {
            border: 2px solid #7A98B4;
            border-radius: 5px;
            width: 300px;
            background-color: white;
            font-weight: bold;
            font-size: 13px;
            padding: 15px 10px;
            margin: 20px auto;
            text-align: center;
        }
        #tel + div {
            font-size: 11px;
            color: #999;
            width: 500px;
            text-align: left;
            margin: auto;
            line-height: 5px;
        }
        #list {
            border-bottom: 1px solid #CCC;
            width: 100%;
            min-height: 175px;
            font-size: 14px;
            font-weight: bold;
            overflow: hidden;
            padding-bottom: 20px;
        }
        #list > p:first-child > i,
        #alarm > p:first-child > i {
            margin-right: 5px;
            color: #888;
        }
        #list > p:first-child,
        #alarm > p:first-child {
            color: #444;
            font-size: 15px;
            font-weight: bold;
            padding-bottom: 5px;
            border-bottom: 2px solid #444;
        }
        #alarm > p:first-child {
            border-bottom: 0;
            margin-bottom: 0;
        }
        #list > p:first-child > small,
        #alarm > p:first-child > small {
            margin-left: 5px;
            font-weight: normal;
            font-size: 11px;
        }
        #list > div > ul > li {
            float: left;
            width: 350px;
            height: 103px;
            list-style: none;
        }
        #list > div > ul {
            padding: 10px;
        }
        #list > div > ul > li:nth-child(2n+1) {
            margin-right: 50px;
        }
        #list > div > ul > li input {
            display: block;
            margin-bottom: 5px;
        }
        #list > div > ul > li > img {
            width: 80px;
            height: 100px;
            float: left;
            margin-right: 5px;
        }
        #list > div > ul > li span {
            display: block;
            font-size: 11px;
            color: #666;
        }
        #list > div > ul > li em {
            font-size: 11px;
            color: #666;
            font-style: normal;
        }
        #list > div > ul > li em a {
            text-decoration: underline;
        }
        #buttonbox {
            margin-top: 10px;
            text-align: right;
        }
        #buttonbox > input, #buttonbox > button { outline: none; }
        #buttonbox > button > span {
            color: blue;
        }
        #tbl1 {
            border-collapse: collapse;
            width: 100%;
        }
        #tbl1 th, #tbl1 td {
            text-align: center;
            font-size: 13px;
            color: #444;
            padding: 10px 0;
        }
        #tbl1 th {
            background-color: #EEE;
            border: 1px solid #CCC;
            border-top: 3px solid #7A98B4;
        }
        #tbl1 td { border: 1px solid #CCC; }
        #tbl1 td:first-child { border-left: 0; }
        #tbl1 td:last-child { border-right: 0; }
        #tbl1 th:nth-child(1) { width: 45%; }
        #tbl1 th:nth-child(4) { width: 10%; }
        #alarm + div {
            margin-top: 20px;
        }
        #alarm + div > span {
            font-size: 11px;
            font-weight: bold;
        }
        #infobuttonbox { float: right; }
        #infobuttonbox button,
        #infobuttonbox input {
            outline: none;
        }
        #tips {
            margin-top: 100px;
            text-align: center;
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
                <h1>나의 맞춤 설정</h1>
                <div id="precaution">
                    <p><i class="glyphicon glyphicon-bullhorn"></i>나의 맞춤 알람 설정 <small>티켓 오픈 소식, 관심 공연 등의 정보를 받을 휴대전화번호를 확인해주세요.</small></p>
                    <div id="tel">SMS 수신 연락처 : ${usertel}</div>
                    <div>
                        <p>- 맞춤 알람 SMS는 회원정보상의 SMS 수신동의여부와 상관없이 맞춤 알람 설정에 따라 발송됩니다.</p>
                        <p>- SMS 받을 휴대전화번호 변경을 원하는 회원님은 <span>[회원정보 변경]</span> 해주세요.</p>
                    </div>
                </div>
                <div id="list">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>맞춤 알람 공연<small>해당 공연과 관련된 티켓오픈, 주요 이벤트/쿠폰 등에 대해 알려드립니다.</small></p>
                    <div>
                        <ul>
                            <!-- <li>
                                <img src="http://tkfile.yes24.com/upload2/PerfBlog/202007/20200720/20200720-angel_new_36898.jpg">
                                <input type="checkbox" name="checkbox" class="check">
                                <strong>뮤지컬 <어쩌면 해피엔딩> 2020</strong>
                                <span>2020.06.30 ~ 2020.09.13</span>
                                <span>예스24스테이지 1관</span>
                                <em>관련공지: <a href="user_notice.html">04</a>개</em>
                            </li> -->
                        	<p style="padding-top: 40px; text-align: center;">'맞춤 알람 공연'으로 설정된 공연이 없습니다.</p>
                        </ul>
                    </div>
                </div>
                <div id="buttonbox">
                    <button class="btn btn-default btn-sm" id="add">알람공연 추가<span>+</span></button>
                    <input type="button" class="btn btn-default btn-sm" value="전체선택" id="selectall">
                    <input type="button" class="btn btn-default btn-sm" value="삭제" id="delete">
                </div>
                <div id="alarm">
                    <p><i class="glyphicon glyphicon-ok-sign"></i>티켓오픈 알람<small>티켓 오픈 시간 <span style="text-decoration: underline;">1시간 전</span>에 미리 알려드립니다.</small></p>
                    <div>
                        <table id="tbl1">
                            <thead>
                                <th>공연</th>
                                <th>티켓오픈일시</th>
                                <th>SMS알람일시</th>
                                <th>상세보기</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td colspan="4">'티켓오픈 알림 SMS 서비스'를 신청한 공연이 없습니다.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div>
                    <span>※ 티켓오픈 알림 받을 공연을 추가하거나 티켓 오픈 예정 공연 확인은 공지사항을 확인해주세요.</span>
                    <div id="infobuttonbox">
                        <button class="btn btn-default btn-sm" id="checknotice">공지사항 확인</button>
                        <input type="button" class="btn btn-default btn-sm" value="전체선택" id="alarmselectall">
                        <input type="button" class="btn btn-default btn-sm" value="삭제" id="alarmdelete">
                    </div>
                </div>
                <div id="tips">
                    <img src="http://tkfile.yes24.com/img/mypage/img_notice.gif">
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

        //전체선택
        $("#selectall").click(function() {
            if ($(".check").prop("checked")) {
                $(".check").prop("checked", false);
            } else {
                $(".check").prop("checked", true);
            }
        });

        //삭제
        $("#delete").click(function() {
            if (confirm("관심 공연을 삭제하겠습니까?")) {
                $("input[type='checkbox']:checked").parent().remove();
            };
        });

        //공지사항 확인
        $("#checknotice").click(function() {
            location.href = "user_notice.html";
        });

    </script>

</body>
</html>