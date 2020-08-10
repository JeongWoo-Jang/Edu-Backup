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

    <style>

        * {
            outline: none;
        }

        body { margin: 0 auto; }
        h1 { font-family: "Arial Black"; }
        #main { width: 100%; }
        #top {
            /* border: 1px solid black; */
            min-width: 1300px;
            height: 80px;
            margin: 0 auto;
        }
        #middle {
            /* border: 1px solid black; */
            width: 1300px;
            min-height: 3000px;
            margin: 0 auto;
            padding-top: 80px;
        }
        #bottom {
            /* border: 1px solid black; */
            min-width: 1300px;
            height: 250px;
            background-color: #eee;
        }
        #bottom > div {
            float: left;
            position: relative;
            left: 21%;
            top: 22%;
        }
        #bottom .txt {
            margin-left: 30px;
            line-height: 1.1em;
            color: #666;
            top: 28%;
        }
        #bottom .txt .black {
            color: black;
        }
        #bottom #service {
            margin-left: 200px;
            top: 18%;
        }
        #bottom #service p:first-child {
            border-bottom: 1px solid #BBB;
            padding: 0 0 5px 20px;
            font-weight: bold;
            font-size: 1.1em;
        }
        #bottom #service p > span {
            color: #444;
            font-size: 1.3em;
        }
        #bottom #service p:nth-child(2) {
            text-align: center;
            font-size: 3em;
            padding-left: 10px;
        }
        #bottom #service p {
            margin-bottom: -2px;
            padding-left: 20px;
        }
        
        #topmenu {
            border-bottom: 1px solid #ddd;
            background-color: transparent;
            width: 100%;
            min-width: 1300px;
            height: 40px;
            color: black;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            padding: 40px 0;
            position: absolute;
        }
        .menubar {
            margin: 0 5px;
            cursor: pointer;
        }     
        #topleft {
            display: inline-block;
            /* border: 1px solid white; */
            width: 100px;
            height: 65px;
            background-image: url("./images//title.png");
            background-repeat: no-repeat;
            background-position: center center;
            position: absolute;
            left : 10px;
            top: 10px;
            cursor: pointer;
        }
        #topright {
            font-size: 13px;
            position: absolute;
            right : 5px;
            top: 42px;
            cursor: pointer;
        }
        #search {
            border: 0;
            border-bottom: 1px solid black;
            background-color: transparent;
            outline: none;
            color: black;
        }
        #frogue-container, .frogue-chat {
            position: absolute;
            left:20px;
            bottom: 0;
        }
        #movetop {
            width: 40px;
            height: 40px;
            background-color: gray;
            position: fixed;
            bottom: 40px;
            right: 0;
            text-align: center;
            padding-top: 3px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1.5em;
        }
        #movetop:hover {
            background-color: orange;
            cursor: pointer;
        }
        #movebottom {
            width: 40px;
            height: 40px;
            background-color: gray;
            position: fixed;
            bottom: 0;
            right: 0;
            text-align: center;
            padding-top: 3px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1.5em;
        }
        #movebottom:hover {
            background-color: orange;
            cursor: pointer;
        }

        #middle h1 {
            text-align: center;
            font-weight: bold;
            font-size: 40px;
        }

        #tabs {
            /* border: 1px solid black; */
            height: 75px;
            margin-top: 80px;
        }
        #tabMenu {
            width: 1031px;
            margin: 0 auto;
        }
        .tabMenu {
            border: 1px solid #eee;
            width: 171.4px;
            height: 70px;
            float: left;
            text-align: center;
            padding-top: 25px;
            border-right: none;
            color: black;
            cursor: pointer;
        }
        .tabMenu:first-child{
            background-color: orange;
            color: white;
        }
        .tabMenu:last-child{
            border-right: 1px solid #eee;
        }
        .tabss {
            width: 1030px;
            margin: 50px auto;
        }
        .tabss > div > ul {
            width: 300px;
            padding: 0;
            color: #999;
            display: inline-block;
        }
        .tabss > div > ul > li {
            list-style-type: none;
            width: 55px;
            font-size: 16px;
            font-weight: bold;
            display: inline-block;
            padding: 10px 5px;
            margin-right: 10px;
        }
        .tabss > div > ul > li:first-child {
            border-top: 3px solid orange;
            color: black;
        }
        .date {
            position: relative;
            font-size: 30px;
            color: #FFA500;
            font-weight: bold;
            cursor: pointer;
            border: 0;
            left: 8.5%;
            width: 250px;
            text-align: center;
        }
        .rank-best {
            /* border-bottom: 1px solid #DDD; */
            border-top: 2px solid black;
            height: 600px;
        }
        .rank-best > div {
            width: 33.3%;
            height: 100%;
            border: 1px solid #DDD;
            float: left;
            padding-top: 60px;
            text-align: center;
            background-color: #F6F6F6;
        }
        .rank-best > div img {
            width: 220px;
            height: 320px;
            transition: all .5s;
        }
        .rank-best > div > div:first-child {
            margin: 0 auto;
            width: 220px;
            height: 320px;
            overflow: hidden;
        }
        .rank-best > div > div:nth-child(2) {
            margin: 0 auto;
            width: 230px;
            padding-top: 20px;
            padding-bottom: 20px;
            margin-bottom: 10px;
            border-bottom: 1px solid #EEE;
        }
        .rank-best > div > div:nth-child(2) > p {
            font-weight: bold;
            font-size: 13px;
            margin-bottom: 30px;
        }
        .rank-best > div > div:nth-child(2) > span {
            font-size: 12px;
            color: #888;
        }
        .rank-best > div > div:nth-child(2) + p {
            font-size: 24px;
            font-weight: bold;
        }
        .rank-best > div > div:nth-child(2) + p > span {
            margin-left: 10px;
            color: #FF7D1E;
            font-size: 13px;
            font-weight: bold;
        }
        .rank-best > div > div:nth-child(2) > span > i {
            margin-right: 5px;
        }
        .first {
            background: linear-gradient(45deg, #d6f2c9, #d7cbe0, #fadae1, #eed1af, #cbf0f3);
            background-size: 600% 600%;
            animation: aurora 10s ease infinite;
        }
        @keyframes aurora {
            0% { background-position: left top; }
            25% { background-position: right top; }
            50% { background-position: right bottom; }
            75% { background-position: left bottom; }
            100% { background-position: left top; }
        }
        .rank-list {
            border-bottom: 2px solid black;
        }
        .rank-list > div {
            width: 100%;
            height: 150px;
            text-align: center;
        }
        .rank-list > div > div:first-child {
            border-bottom: 1px solid #DDD;
            width: 11%;
            height: 100%;
            float: left;
            padding: 55px 0;
            font-size: 16px;
            font-weight: bold;
            text-decoration: underline;
        }
        .rank-list > div > div:nth-child(2) {
            border-bottom: 1px solid #DDD;
            width: 10%;
            height: 100%;
            float: left;
            padding: 15px 0;
        }
        .rank-list > div > div:nth-child(2) img {
            width: 90px;
            height: 120px;
        }
        .rank-list > div > div:nth-child(3) {
            border-bottom: 1px solid #DDD;
            border-right: 2px solid #DDD;
            width: 45.7%;
            height: 100%;
            float: left;
            text-align: left;
            padding: 55px 15px;
            font-size: 16px;
        }
        .rank-list > div > div:nth-child(4) {
            border-bottom: 1px solid #DDD;
            width: 17.3%;
            height: 100%;
            float: left;
            padding: 55px 0;
            font-size: 13px;
            color: #888;
        }
        .rank-list > div > div:last-child {
            border-bottom: 1px solid #DDD;
            width: 16%;
            height: 100%;
            float: left;
            padding: 55px 0;
            font-size: 20px;
            font-weight: bold;
        }
        #goldcrown {
            position: relative;
            left: 160px;
            top: 360px;
            z-index: 1;
        }

    </style>

</head>
<body>

    <div id="main">
<!-------------------------------- 화면 상단부 -------------------------------->
        <%@include file="/WEB-INF/views/inc/mypagetopbar.jsp" %>
<!----------------------------------------- 내용 ----------------------------------------->
        <div id="middle">
            <h1>랭킹</h1>
            <img src="./images/goldcrown2.png" id="goldcrown">
            <div id="tabs">
                <div id="tabMenu">
                    <div class="tabMenu" data-tab="tab1">전체</div>
                    <div class="tabMenu" data-tab="tab2">콘서트</div>
                    <div class="tabMenu" data-tab="tab3">뮤지컬</div>
                    <div class="tabMenu" data-tab="tab4">연극</div>
                    <div class="tabMenu" data-tab="tab5">클래식/무용</div>
                    <div class="tabMenu" data-tab="tab6">전시/행사</div>
                </div>
                <div style="clear: both;"></div>
                <div id="tab1" class="tabss">
                    <div>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                        <input type="text" class="date" readonly>
                    </div>
                    <div class="rank-best">
                        <div class="first">
                            <div>
                                <img src="./images/rankbest1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 [라 루미에르 La Lumiere]</p>
                                <span>2020.09.11 ~ 2020.10.25<br>대학로 유니플렉스 2관</span>
                            </div>
                            <p>17.9%<span><i class="glyphicon glyphicon-heart"></i>70</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest2.jpg">
                            </div>
                            <div>
                                <p>2020 태사자 콘서트 [THE RETURN]</p>
                                <span>2020.07.25 ~ 2020.07.26<br>YES24 LIVE HALL(구, 악스홀)</span>
                            </div>
                            <p>14.2%<span><i class="glyphicon glyphicon-heart"></i>238</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest3.jpg">
                            </div>
                            <div>
                                <p style="margin-bottom: 10px;">뮤지컬 <오페라의 유령> 월드투어-서울<br>(The Phantom of the Opera)</p>
                                <span>2020.03.14 ~ 2020.08.07<br>블루스퀘어 인터파크홀</span>
                            </div>
                            <p>12.8%<span><i class="glyphicon glyphicon-heart"></i>859</span></p>
                        </div>
                    </div>
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>11위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>12위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>13위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>14위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>15위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab2" class="tabss">
                    <div>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                        <input type="text" class="date" readonly>
                    </div>
                    <div class="rank-best">
                        <div class="first">
                            <div>
                                <img src="./images/rankbest1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 [라 루미에르 La Lumiere]</p>
                                <span>2020.09.11 ~ 2020.10.25<br>대학로 유니플렉스 2관</span>
                            </div>
                            <p>17.9%<span><i class="glyphicon glyphicon-heart"></i>70</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest2.jpg">
                            </div>
                            <div>
                                <p>2020 태사자 콘서트 [THE RETURN]</p>
                                <span>2020.07.25 ~ 2020.07.26<br>YES24 LIVE HALL(구, 악스홀)</span>
                            </div>
                            <p>14.2%<span><i class="glyphicon glyphicon-heart"></i>238</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest3.jpg">
                            </div>
                            <div>
                                <p style="margin-bottom: 10px;">뮤지컬 <오페라의 유령> 월드투어-서울<br>(The Phantom of the Opera)</p>
                                <span>2020.03.14 ~ 2020.08.07<br>블루스퀘어 인터파크홀</span>
                            </div>
                            <p>12.8%<span><i class="glyphicon glyphicon-heart"></i>859</span></p>
                        </div>
                    </div>
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>11위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>12위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>13위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>14위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>15위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab3" class="tabss">
                    <div>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                        <input type="text" class="date" readonly>
                    </div>
                    <div class="rank-best">
                        <div class="first">
                            <div>
                                <img src="./images/rankbest1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 [라 루미에르 La Lumiere]</p>
                                <span>2020.09.11 ~ 2020.10.25<br>대학로 유니플렉스 2관</span>
                            </div>
                            <p>17.9%<span><i class="glyphicon glyphicon-heart"></i>70</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest2.jpg">
                            </div>
                            <div>
                                <p>2020 태사자 콘서트 [THE RETURN]</p>
                                <span>2020.07.25 ~ 2020.07.26<br>YES24 LIVE HALL(구, 악스홀)</span>
                            </div>
                            <p>14.2%<span><i class="glyphicon glyphicon-heart"></i>238</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest3.jpg">
                            </div>
                            <div>
                                <p style="margin-bottom: 10px;">뮤지컬 <오페라의 유령> 월드투어-서울<br>(The Phantom of the Opera)</p>
                                <span>2020.03.14 ~ 2020.08.07<br>블루스퀘어 인터파크홀</span>
                            </div>
                            <p>12.8%<span><i class="glyphicon glyphicon-heart"></i>859</span></p>
                        </div>
                    </div>
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>11위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>12위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>13위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>14위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>15위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab4" class="tabss">
                    <div>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                        <input type="text" class="date" readonly>
                    </div>
                    <div class="rank-best">
                        <div class="first">
                            <div>
                                <img src="./images/rankbest1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 [라 루미에르 La Lumiere]</p>
                                <span>2020.09.11 ~ 2020.10.25<br>대학로 유니플렉스 2관</span>
                            </div>
                            <p>17.9%<span><i class="glyphicon glyphicon-heart"></i>70</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest2.jpg">
                            </div>
                            <div>
                                <p>2020 태사자 콘서트 [THE RETURN]</p>
                                <span>2020.07.25 ~ 2020.07.26<br>YES24 LIVE HALL(구, 악스홀)</span>
                            </div>
                            <p>14.2%<span><i class="glyphicon glyphicon-heart"></i>238</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest3.jpg">
                            </div>
                            <div>
                                <p style="margin-bottom: 10px;">뮤지컬 <오페라의 유령> 월드투어-서울<br>(The Phantom of the Opera)</p>
                                <span>2020.03.14 ~ 2020.08.07<br>블루스퀘어 인터파크홀</span>
                            </div>
                            <p>12.8%<span><i class="glyphicon glyphicon-heart"></i>859</span></p>
                        </div>
                    </div>
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>11위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>12위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>13위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>14위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>15위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab5" class="tabss">
                    <div>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                        <input type="text" class="date" readonly>
                    </div>
                    <div class="rank-best">
                        <div class="first">
                            <div>
                                <img src="./images/rankbest1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 [라 루미에르 La Lumiere]</p>
                                <span>2020.09.11 ~ 2020.10.25<br>대학로 유니플렉스 2관</span>
                            </div>
                            <p>17.9%<span><i class="glyphicon glyphicon-heart"></i>70</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest2.jpg">
                            </div>
                            <div>
                                <p>2020 태사자 콘서트 [THE RETURN]</p>
                                <span>2020.07.25 ~ 2020.07.26<br>YES24 LIVE HALL(구, 악스홀)</span>
                            </div>
                            <p>14.2%<span><i class="glyphicon glyphicon-heart"></i>238</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest3.jpg">
                            </div>
                            <div>
                                <p style="margin-bottom: 10px;">뮤지컬 <오페라의 유령> 월드투어-서울<br>(The Phantom of the Opera)</p>
                                <span>2020.03.14 ~ 2020.08.07<br>블루스퀘어 인터파크홀</span>
                            </div>
                            <p>12.8%<span><i class="glyphicon glyphicon-heart"></i>859</span></p>
                        </div>
                    </div>
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>11위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>12위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>13위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>14위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>15위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab6" class="tabss">
                    <div>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                        <input type="text" class="date" readonly>
                    </div>
                    <div class="rank-best">
                        <div class="first">
                            <div>
                                <img src="./images/rankbest1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 [라 루미에르 La Lumiere]</p>
                                <span>2020.09.11 ~ 2020.10.25<br>대학로 유니플렉스 2관</span>
                            </div>
                            <p>17.9%<span><i class="glyphicon glyphicon-heart"></i>70</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest2.jpg">
                            </div>
                            <div>
                                <p>2020 태사자 콘서트 [THE RETURN]</p>
                                <span>2020.07.25 ~ 2020.07.26<br>YES24 LIVE HALL(구, 악스홀)</span>
                            </div>
                            <p>14.2%<span><i class="glyphicon glyphicon-heart"></i>238</span></p>
                        </div>
                        <div>
                            <div>
                                <img src="./images/rankbest3.jpg">
                            </div>
                            <div>
                                <p style="margin-bottom: 10px;">뮤지컬 <오페라의 유령> 월드투어-서울<br>(The Phantom of the Opera)</p>
                                <span>2020.03.14 ~ 2020.08.07<br>블루스퀘어 인터파크홀</span>
                            </div>
                            <p>12.8%<span><i class="glyphicon glyphicon-heart"></i>859</span></p>
                        </div>
                    </div>
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>11위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>12위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>13위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>14위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>15위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 챗봇 : 단비봇 -->
            <%@include file="/WEB-INF/views/inc/userchat.jsp" %>
            <!-- 제일 위로 돌아가기 버튼 -->
            <div id="movetop">↑</div>
            <div id="movebottom">↓</div>
        </div>
<!-------------------------------- 화면 하단부 -------------------------------->
        <%@include file="/WEB-INF/views/inc/mypagebottom.jsp" %>
    </div>


    <script>

        //페이지 상단으로 올라가기
        $("#movetop").click(function() {
            //<a> 본연의 기능을 제거
			event.preventDefault();

            $("html,body").animate({
                scrollTop: 0
            }, 1000);
        });
        //페이지 하단으로 내려가기
        $("#movebottom").click(function() {
            //<a> 본연의 기능을 제거
			event.preventDefault();

            $("html,body").animate({
                scrollTop: $(document).height()
            }, 1000);
        });

        //마이페이지 클릭시 이동
        $("#mypage").click(function() {
            location.href = "/AtTicketProject/usermypage.do";
        });


        //메뉴 탭기능
        $(".tabss").css("display","none");
        $("#tab1").css("display","block");
        
        $(".tabMenu").click(function(){
            // alert(this);
            $(".tabMenu").css({
                "background-color" : "white",
                "color": "black"
            })
            $(this).css({
                "background-color" : "orange",
                "color": "white"
            })

            $(".tabss").css("display","none");
            $('#'+$(this).attr("data-tab")).css("display","block");

        });

        $(document).scroll(function() {
            //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
            if ($(document).scrollTop() > $("#middle").position().top) {
                $("#topmenu").css({
                    width: "100%",
                    "min-width": "0px",
                    position: "fixed",
                    top: "0px",
                    bottom: "",
                    zIndex: "2",
                    "background-color": "white"
                });
                $(window).resize(function() {
                    if($(window).width() < 970) {
                        // console.log($(window).width());
                        $("#topcenter").css("transform", "translate(-100px, 0)");
                    } else {
                        $("#topcenter").css("transform", "translate(0, 0)");
                    }
                });
            };

            //상단 헤더(top)이 눈에 보일때 쯤
            if ($(document).scrollTop() <= $("#middle").position().top) {
                $("#topmenu").css({
                    position: "absolute",
                    "min-width": "1300px",
                    top: "0px",
                    bottom: ""
                });
            }
        });

        //페이지 실행 시 오늘 날짜 로드
        $(document).ready(function() {
            $(".date").datepicker('setDate', 'today');
        });

        //날짜 클릭
        $(".date").datepicker({
            dateFormat: "yy.mm.dd (D)",
            dayNamesShort: [ "일", "월", "화", "수", "목", "금", "토" ]
        });

        $(".rank-best > div").mouseover(function() {
            $(this).children().children("img").css("transform", "scale(1.1, 1.1)");
        });
        $(".rank-best > div").mouseout(function() {
            $(this).children().children("img").css("transform", "scale(1, 1)");
        });

    </script>


</body>
</html>