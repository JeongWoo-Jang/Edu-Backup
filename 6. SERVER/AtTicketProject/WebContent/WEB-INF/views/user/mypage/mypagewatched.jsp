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
        #right #datesearch {
            border: 1px solid #DDD;
            padding: 15px 20px;
            font-size: 12px;
            background-color: #F8F8F8;
            margin: 20px 0;
        }
        #right #datesearch > p {
            border-bottom: 1px dotted #CCC;
            padding-bottom: 10px;
        }
        #right #datesearch > p > span:first-child {
            font-weight: bold;
        }
        #right #datesearch > p > span:nth-child(2) {
            font-weight: bold;
            color: red;
            text-decoration: underline;
        }
        #right #datesearch > ul > li {
            display: inline-block;
            margin-top: 15px;
            margin-bottom: -15px;
        }
        #right #datesearch > ul > li:first-child {
            margin-left: -40px;
            margin-right: 30px;
        }
        #right #datesearch > ul > li > input {
            outline: none;
        }
        #from, #to {
            margin-right: 5px;
        }
        #genre {
            padding: 2px 5px;
            width: 150px;
        }
        #right #datesearch > ul > li:last-child {
            display: block;
            margin-left:  -40px;
        }
        #right #datesearch > ul > li:last-child > input:first-child {
            width: 250px;
            padding: 2px 5px;
        }
        #list {
            border-top: 1px solid #CCC;
            border-bottom: 1px solid #CCC;
            width: 100%;
            min-height: 250px;
            font-size: 16px;
            font-weight: bold;
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
                <h1>나의 관람 공연</h1>
                <div id="datesearch">
                    <p><span>${username}</span>님의 관란 공연은 총<span>0</span>건 입니다.(<span id="today"></span>기준)</p>
                    <ul>
                        <li>
                            ▶ 기간별
                            <input type="text" id="from">
                            ~
                            <input type="text" id="to">
                        </li>
                        <li>
                            ▶ 장르별
                            <select name="genre" id="genre">
                                <option value="default">장르선택</option>
                                <option value="concert">콘서트</option>
                                <option value="musical">뮤지컬</option>
                                <option value="theater">연극</option>
                                <option value="classic">클래식</option>
                                <option value="Exhibition">전시</option>
                            </select>
                            <input type="button" value="조회" class="btn btn-default btn-sm" id="genresearch">
                        </li>
                        <li>
                            ▶ 공연명
                            <input type="text" id="nametxt" placeholder="공연명을 입력해주세요.">
                            <input type="button" value="조회" class="btn btn-default btn-sm" id="namesearch">
                        </li>
                    </ul>
                </div>
                <div id="list">
                    <div>
                        <p style="padding-top: 100px;">관람하신 공연이 없습니다.</p>
                    </div>
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

        //주문일자 텍스트창 css
        $("#from, #to").css("width", "90px");
        $("#genresearch, #namesearch")
            .css("background-color", "#666")
            .css("color", "white")
            .css("padding", "3px 7px");

        //주문일자 선택
        $(function() {
            $.datepicker.setDefaults({
                dateFormat: "yy-mm-dd",
                showOn: "button",
                buttonText: "달력"
            });
            $("#from").datepicker();
            $("#to").datepicker();

            $("#from").datepicker("setDate", "-6M");
            $("#to").datepicker("setDate", "today");
        });

        //기간별 조회 클릭시
        $(".month").click(function() {
            $("#from").datepicker("setDate", "-" + $(this).data("month") + "M");
        });

        //조회 클릭시
        $("#genresearch, #namesearch").click(function() {
            console.log($("#from").val());
            console.log($("#to").val());
        });

        //movetop
        $("#movetop").click(function() {
            event.preventDefault();
            $("html, body").animate({
                scrollTop: 0
            }, 500);
        });

    </script>

</body>
</html>