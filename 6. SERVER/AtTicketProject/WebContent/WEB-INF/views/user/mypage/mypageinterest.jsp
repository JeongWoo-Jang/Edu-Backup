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
        #tbl1 {
            border-collapse: collapse;
            width: 100%;
        }
        #tbl1 th, #tbl1 td {
            border-right: 1px solid #D3D3D3;
            text-align: center;
            font-size: 13px;
            color: #444;
            padding: 10px 0;
        }
        #tbl1 th {
            background-color: #EEE;
            border-top: 3px solid #7A98B4;
            border-bottom: 1px solid #CCC;
        }
        #tbl1 td { border-bottom: 1px solid #CCC; }
        #tbl1 th:nth-child(2) { width: 40%; }
        #tbl1 th:nth-child(3) { width: 20%; }
        #tbl1 th:last-child, #tbl1 td:last-child {
            border-right: 0;
        }
        #tbl1 > tbody > tr > td > div {
            padding: 5px 0;
            text-align: left;
        }
        #tbl1 > tbody > tr > td > button {
            outline: none;
        }
        #tbl1 > tbody > tr > td:nth-child(2) > div > img {
            width: 80px;
            height: 100px;
            float: left;
            margin: 0 10px;
        }
        #tbl1 > tbody > tr > td:nth-child(2) > div > p {
            margin-top: 30px;
            font-size: 12px;
            color: #444;
        }
        #tbl1 > tbody > tr > td:nth-child(3) > p > span {
            color: blue;
            text-decoration: underline;
            cursor: pointer;
        }
        #tbl1 > tbody > tr > td > button {
            font-weight: bold;
        }
        #paging {
            text-align: center;
            letter-spacing: 1px;
            margin: 40px 0;
        }
        #buttonbox {
            margin-top: 10px;
            text-align: right;
        }
        #buttonbox > input, #buttonbox > button { outline: none; }
        #buttonbox > button > span {
            color: blue;
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
                <h1>나의 관심 공연</h1>
                <table id="tbl1">
                    <thead>
                        <th>등록일</th>
                        <th>공연명</th>
                        <th>관련 컨텐츠</th>
                        <th>상세정보</th>
                    </thead>
                    <tbody>
                        <!-- <tr>
                            <td><p>2020.07.20</p><input type="checkbox" class="check"></td>
                            <td>
                                <div>
                                <img src="http://tkfile.yes24.com/upload2/PerfBlog/202007/20200709/20200709-37137_11.jpg">
                                <strong>뮤지컬 <머더 발라드></strong>
                                <p>2020.08.11 ~ 2020.10.25<br>
                                세종문화회관 S씨어터</p>
                                </div>
                            </td>
                            <td>
                                <p>관련 공지 : <span class="notice">02</span>개</p>
                            </td>
                            <td>
                                <button class="btn btn-danger btn-sm" class="book">예매하기</button>
                            </td>
                        </tr> -->
                        <tr>
                            <td colspan="4">등록한 관심공연이 없습니다.</td>
                        </tr>
                    </tbody>
                </table>
                <div id="buttonbox">
                    <button class="btn btn-default btn-sm" id="add">관심 공연 담기<span>+</span></button>
                    <input type="button" class="btn btn-default btn-sm" value="전체선택" id="selectall">
                    <input type="button" class="btn btn-default btn-sm" value="삭제" id="delete">
                </div>
                <div id="paging">
                    <button class="glyphicon glyphicon-menu-left left"></button>
                    <span>1</span>
                    <span>(<span>1</span>/1)</span>
                    <button class="glyphicon glyphicon-menu-right right"></button>
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

        //관련 컨텐츠 공지 클릭시
        $(".notice").click(function() {
            location.href = "user_notice.html";
        });

        //예매하기 클릭시
        $(".book").click(function() {
            location.href = "";
            // 해당 공연페이지로 이동
        })

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
                $("input[type='checkbox']:checked").parent().parent().remove();
            };
        });

    </script>

</body>
</html>