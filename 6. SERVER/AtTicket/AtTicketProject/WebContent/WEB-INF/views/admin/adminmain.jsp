<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/views/inc/asset.jsp" %>
    <!-- 여러가지 라이브러리 적용하기 -->

    <style>
        @font-face { font-family: 'NanumBarunGothic'; font-style: normal; font-weight: 400; src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot'); src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype'); }
        @font-face { font-family: 'NEXON Lv1 Gothic OTF Light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Light.woff') format('woff'); font-weight: normal; font-style: normal; }
        html{
            /* width: 2500px; */
            /* border : 1px solid red; */
        }
        h1{
            font-weight: bold;
            font-family: Arial;
            font-size: 3em; 
            color: #111;
        }

        #left {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 250px;
            height: 2400px;
            /* border: 1px solid black; */
            background-color: #444;
            text-align: center;
            z-index: 10;
        }

        #left .info {
            margin-left: 56px;
            text-align: left;
            font-variant: small-caps;
            font-weight: bold;
            font-size: 1em;
        }

        .accomenu {
            /* margin-top: 30px; */
            margin-left: 10px;
            width : 260px;
            padding-right : 25px;
        }

        .btn {
            box-shadow: 3px 3px 0;
        }

        .b {
            margin-top: 30px;
            float: left;
        }

        .b::after {
            content: " ";
            clear: both;
            display: block;
        }

        /* #btn1 {
            margin-left: 50px;
            margin-right: 20px;
        } */

        #topmenu {
            /* border: 1px solid blue; */
            width: 100%;
            height: 60px;
            position: absolute;
            top: 0;
            float: right;
            align-content: right;
            /* z-index: -1; */
            /* background-color: #BBDED7; */
            /* opacity: .3; */
            
        }
        #topmenu .search {
            /* border: 1px solid black; */
            width: 250px;
            margin-top: 10px;
            float: right;
           
        }
        #topmenu .home {
            /* border: 1px solid black; */
            width: 50px;
            float: right;
            margin-top: 7px;
            cursor: pointer;
            color: #444
        }

        #calendar {
           margin-top: 70px;
           margin-left: -20px;
        }

        #cal {
            position: relative;
            top: 15px;
            left: 5px;
        }

        #bottom {
            position: absolute;
            top: 2000px;
        }

        #sw {
            margin-top: 850px;
            cursor: pointer;
        }

        /* 새로 추가한 코드 */
        /* 관리자 메인메뉴 위에 커서 두면 커서가 포인터로 변환하게만듦 */
        .accomenu tr td:hover {
            cursor : pointer;
        }

         #movetop {
            width: 40px;
            height: 40px;
            background-color: #777;
            position: fixed;
            bottom: 0px;
            right: 0px;
            text-align: center;
            padding-top: 3px;
        }
        #movetop:hover {
            background-color: #444;
            cursor : pointer;
        }

        #movetop {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1.5em;
        }

        body{
            font-family: 'NanumBarunGothic';
        }

        /* 아코디언 메뉴 css */
        .ui-state-active {
            background-color: red;
            background-image: url();
        }
        .ui-state-hover {
            background-color: #444;
            background-image: url();

        }

        .ui-accordion-header {
            background: #444;
            color: white;
            text-align: left;
            border: 0px;
            font-family: 'NEXON Lv1 Gothic OTF Light';
            /* font-weight: bolder; */
            
        }
        .ui-accordion-content {
            background: #444;
            color: white;
            text-align: left;
            border: 0px;
            font-family: 'NanumBarunGothic';
        }
        .ui-accordion-content div:hover {
            background: #333;
        }
        .ui-widget-content a{
            color: white;
            text-decoration: none;
        }
        .ui-widget-content span {
            font-size: 10px;
        }
        .ui-accordion .ui-accordion-header {
            /* border: 0px; */
            outline: none;
          
        }
       #right {
            border : 1px solid red;
            margin-left: 300px;
            margin-top: 100px;
            width : 700px;
            /* color : white;
            background-color: #C27BA0; */
        }
        #visitTitle {
            margin : 15px auto;
            border : 5px solid #C27BA0;
            color : #C27BA0;
            text-align: center;
            width : 120px;
            font-size: 2em;
        }
        #right2 {
            border : 1px solid black;
            /* text-align: center; */

        }

        /* 사내공지사항 게시판 */
        #empNotice {
            border : 1px solid black;
            width : 1500px;
            margin-top : 70px;
            margin-left : 300px;
        }

        
        /* 최상단 타이틀 */
        #title{ 
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            /* border-bottom: 1px dashed black; */
        }

        .basicBox {
            /* border: 1px solid red; */
            margin-left: 330px;
            margin-top: 50px;
            width: 1400px;
            height : 540px;
            /* border: 1px solid black; */
            padding: 20px;
        }

        /* 그리드 사용 */
        .wrapper {
            width : 1400px;
            height : 600px;
            display : grid;
            grid-template-columns: 700px 700px;
            grid-template-rows: 100px 100px;
            /* border: 1px solid red; */
            margin-left : 330px;
            margin-top : 20px;
            
        }
        .wrapper div {
            /* border : 1px solid blue; */
        }
        .wrapper div:nth-child(1) {
            /* background-color: #F4F4F4; */
            width : 280px;
            /* margin-left : 20px; */
        }
        .wrapper div:nth-child(2) {
            margin-left : 10px;
            /* background-color: #F4F4F4; */
            width : 280px;

        }
        
        .wrapper div:nth-child(3) {
            margin-top : 10px;
            height : 500px;
            border: 3px solid #EEEEEE;
        }
        .wrapper div:nth-child(4) {
            margin-left : 10px;
            margin-top : 10px;
            height : 500px;
            border: 3px solid #EEEEEE;

        }



        #bb1 {
            margin-left : 80px;
        }
        /* 게시판 제어 */
        /* 테이블 내 타이틀 중앙정렬 */
        #nttable th{
            text-align : center;
            background-color: #999999;
            /* color : white; */
        }

        #nttable {
            width : 100px;
            font-size: 1.2em;
        }

        #nttable th:nth-child(1) {width : 50px;}
        #nttable th:nth-child(2) {width : 400px;}
        #nttable th:nth-child(3) {width : 200px;}
        #nttable th:nth-child(4) {width : 100px;}
        #nttable th:nth-child(5) {width : 50px;}


        /* 게시판 내 요소 중앙정렬 해주기 -> 공지명은 왼쪽으로 */
        #nttable td {
            text-align: center;
        }

        #nttable tbody td:nth-child(2) {
            text-align: left;
            padding-left : 20px;
        }


        .pagebar {
            margin-left : 575px;
        }
        #slctp2 {
            margin-top : 10px;
            margin : 10px auto;
            margin-bottom: 10px;
            width : 400px;
            margin-left: 930px;
        }

        /* 사내공지사항 타이틀 */
        #empNoticeTitle {
            font-size : 1.7em;
            font-weight : bold;
        }
        /* 사내 공지사항 타이틀 강조 */
        #empNoticeTitleImport {
            
            font-size : .7em;
            color: #444444;
            position : relative;
            top : -2px;
            
        }
        /* 사내 공지사항 건드리면 공짓사항 수정하는 페이지로 이동한다 */
        #empNoticeTitle:hover {
            cursor : pointer;
            text-decoration: underline;
        }

        /* 열람 안했을 경우 */
        .notSee {
            color : red;
        }
        
        /* 열람 한 경우*/
        .seesee {
            color : green;
        }

        /* 새로운 공지 강조하는 역할 */
        .starpoint {
            color : red;
            border : 1px solid red;
            font-size : .9em;
            /* margin-left : 10px; */
        }

        /* 매출액을 연속적으로 보여주기 위해서 위에 부모 div 역할 수행하는~ */
        #incomeParent {
            /* border : 1px solid red; */
            margin-top : 20px;
            margin-left : 330px;
            width : 1400px;
            height : 500px;
            overflow: hidden;


        }


        /* 매출액  */
        #income {
            /* border : 1px solid yellow; */
            margin-left : 50px;
            height : 500px;
            width : 5570px;
            position: relative;
            transition : all 1s;
            /* overflow: hidden; */
            /* margin-left: 40px; */


        }

        /* 이전 다음 버튼 */
        .npbtn {
            position: relative;
        }

        /* 이전 버튼 */
        #prevbtn {
            
            position : absolute;
            top : 1750px;
            left : 330px;
        }
        #prevbtn:hover {
            cursor: pointer;
        }

        #nextbtn {
            position : absolute;
            top : 1750px;
            left : 1679px;

        }
        #nextbtn:hover {
            cursor:pointer;
        }

        /* 매출에 대한 표와 같은 볼거리  -> 하나하나의 자료라고 보면된다*/
        .inContent {
            float : left;
            position : relative;
            /* border: 1px solid blue; */
            width : 1400px;
            height : 500px;
        }

        /* 포스터1 */
        #backp1 {
            background-image: url(../images/classic10.jpeg);
            background-repeat: no-repeat;
            background-size: cover;
        }


        /* 포스터에 대한 내용1 */
        #innertextjam1 {
            width : 400px;
            height : 430px;
            border : 0px;

        }

        /* 포스터2 */
        #backp2 {
            background-image: url(../images/classic11.jpeg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* 포스터3 */
        #backp3 {
            background-image: url(../images/classic17.jpeg);
            background-repeat: no-repeat;
            background-size: cover;
        }





        /* 엔터테이먼트 이미지  */
        .conttables > tbody > tr:nth-child(1) > td{
            
            width : 300px;
            height : 430px;
           
        }

        .innervector {
            float : left;
        }

        /* 스플릿 hr */
        .splitHr {
            border : 1px solid #999;
            margin-left : 330px;
            width : 1400px;
        }

        /* 매출관리 페이지 */
        #moneyTitle {
            margin-left : 350px;
            /* border: 1px solid black; */
            font-size : 1.7em;
            font-weight : bold;
            margin-bottom : 50px;
        }
        /* 매출관리 페이지 타이틀을 선택하면 상세페이지로 가게 만들것이다. */
        #moneyTitle:hover {
            cursor : pointer;
            text-decoration: underline;
        } 

        /* 방문자 & 예매율 그래프 */
        #vistreserve {
            margin-left : 350px;
            font-size : 1.7em;
            font-weight : bold;
            margin-bottom : 50px;

        }       
        /* 방문자 & 예매율 그래프 타이틀은 선택하면 상세 페에지로 이동*/
        #vistreserve:hover {
            cursor : pointer;
            text-decoration: underline;
        } 


        /* 페이지 하단바  색 조정 */
        .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
               background-color:#999999;
           border-color: #eeeeee;
        }
        
        .pagination > li > a, .pagination > li > span{
          color: black;
        }

        

        
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminMain</title>
</head>

<body>


    <!-- 기준선 -->
    <div id = "title">
    
    </div>
    <!-- 사내공지사항 게시판 형식 -->
    <div class = "basicBox" style = "height : 600px">
        <div id = "selectable">
           <div id = "empNoticeTitle"><span id = "empNoticeTitleImport"><span><i class = "glyphicon glyphicon-pushpin"></i></span></span>&nbsp;사내 공지사항 안내</div>
           <div id = "slctp2">
	    		<div class="input-group">
	    			<input type="text" class="form-control" placeholder = "ex) 코로나 부진에 의한 봉급제한">
	    			<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
	    		</div>
            </div>
            <table style = "width:1330px;" class = "table table-striped table-bordered table-condensed" id = "nttable">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>

                </tbody>
            </table>

        <!-- 하단 페이지 선택 바 -->
            <nav class = "pagebar">
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class = "active"><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>

              </ul>
            </nav>
        </div>       
    
    </div>

    <hr class = "splitHr">
    <div id = "vistreserve">방문자 & 예매율 그래프</div>
    

    <div class = "wrapper">
        <!-- 일별 방문자수 요약 -->
        <div style = "margin-left : 200px;">
            <h4 style="margin-right: 140px; color: #666;" class = "chartWord">방문자</h4>
            <span style="color: #555; font-size: 25px;" class = "chartWord">11.2k</span><span style="color:red"> ▲ 2.1k</span>
            <span class="glyphicon glyphicon-stats" style="font-size: 35px; margin-left: 100px; color: #e09b9b;"></span>
        </div>

        <!-- 예매율 요약 -->
        <div style = "margin-left : 200px;">
            <h4 style="margin-right: 140px; color: #666;" class = "chartWord">예매율</h4>
            <span style="color: #555; font-size: 25px;" class = "chartWord">11.1%</span><span style="color: blue"> ▼ 1.6%</span>
            <span class="glyphicon glyphicon-stats" style="font-size: 35px; margin-left: 100px; color: #e09b9b;"></span>
        </div>

        <!-- 일별 방문자 수 -->
        <div id = "container2">

        </div>    
        
        <!-- 예매율 -->
        
        <div id = "container1">
            
        </div>
    </div>

    <hr class = "splitHr" style = "margin-top : 100px;">


    <!-- 매출보기 -->
    <!-- ../images/slide-dir-prev.png -->
    
    <!-- 이전으로 가기 -->
    
    <!-- **************************************************************************************** -->
    
    <div class = "npbtn" id = "prevbtn" style = "z-index : 10;"><img src="../images/slide-dir-prev.png" alt=""></div>
    <div id = "moneyTitle">매출관리</div>
    <div id = "incomeParent">
        <div id = "income">
    
            <!-- 1 element -->
            <div class = "inContent">
                <div id = "enterimg" class = "innervector">
                    <table class = "conttables">
                        <tr>
                            <td id = "backp1"></td>
                        </tr>
                    </table>
                </div>
                <div style = "float : left; margin-left : 10px;" >
                    <pre id = "innertextjam1">                     
            <span style = "font-size: 1.4em; font-weight: bold;">뮤지컬<미아 파밀리아></span>

                2020.06.09~2020.08.23

                예스24스테이지 2관    

            죽는 날까지 하늘을 우러러
                한점 부끄럼 없기를 
                잎새에 이는 바람에도
                나는 괴로와했다
                별을 노래하는 마음으로
          모든 죽어가는 것들을 사랑해야지
         그리고 나한테 주어진 길을 걸어가겠다
                
            오늘 밤에도 별이 바람에
                   스치운다   
                    </pre>
                </div>
                <div id="saleRateGraph" class = "innervector"></div>
            </div>

           <!-- 1 element -->
            <div class = "inContent">
                <div id = "enterimg" class = "innervector">
                    <table class = "conttables">
                        <tr>
                            <td id = "backp2"></td>
                        </tr>
                    </table>
                </div>
                <div style = "float : left; margin-left : 10px;" >
                    <pre id = "innertextjam1">                     
            <span style = "font-size: 1.4em; font-weight: bold;">뮤지컬<미아 파밀리아></span>

                2020.06.09~2020.08.23

                예스24스테이지 2관    

            죽는 날까지 하늘을 우러러
                한점 부끄럼 없기를 
                잎새에 이는 바람에도
                나는 괴로와했다
                별을 노래하는 마음으로
          모든 죽어가는 것들을 사랑해야지
         그리고 나한테 주어진 길을 걸어가겠다
                
            오늘 밤에도 별이 바람에
                   스치운다
                    </pre>
                </div>
                <div id="saleRateGraph1" class = "innervector"></div>
            </div>
           <!-- 1 element -->

           <!-- 1 element -->
            <div class = "inContent">
                <div id = "enterimg" class = "innervector">
                    <table class = "conttables">
                        <tr>
                            <td id = "backp3"></td>
                        </tr>
                    </table>
                </div>
                <div style = "float : left; margin-left : 10px;" >
                    <pre id = "innertextjam1">                     
            <span style = "font-size: 1.4em; font-weight: bold;">뮤지컬<미아 파밀리아></span>

                2020.06.09~2020.08.23

                예스24스테이지 2관    

            죽는 날까지 하늘을 우러러
                한점 부끄럼 없기를 
                잎새에 이는 바람에도
                나는 괴로와했다
                별을 노래하는 마음으로
          모든 죽어가는 것들을 사랑해야지
         그리고 나한테 주어진 길을 걸어가겠다
                
            오늘 밤에도 별이 바람에
                   스치운다   
                    </pre>
                </div>
                <div id="saleRateGraph2" class = "innervector"></div>
            </div>
           <!-- 1 element -->

            <!-- inContent -->
        </div>
    </div>
    
    
    <!-- **************************************************************************************** -->
    
    <!-- 다음으로 가기 -->
    <div class = "npbtn" id = "nextbtn"><img src="../images/slide-dir-next.png" alt=""></div>




    <div id="left">
        
        <img src="../images/man.png" 
            style="margin-top: 40px; width: 80px; border: 1px solid #333; border-radius:     50%; background-color: #999;">
        <div class="info" style="color:white">
            <span><br>Welcome,</span></br></span>
            <%-- <span><%=session.getAttribute("id")%></span> --%>
            <span>${id}</span><!-- session에서 id를 받아옴 -->
        </div>
        <!-- <div class="b">
            <input style="font-weight: bold; background-color: #C27BA0; margin : 80px;" type="button" value="Logout" id="btn2"
                class="btn">
        </div> -->
        <div id = "logout">
            <input style="font-weight: bold; background-color: #999; margin-top : 30px; margin-bottom : 50px; color: #D5D5D5; width: 70px; height: 30px; outline: none;"
                     type="button" value="Logout" id="btn2" class="btn">
        </div>
        <!-- 왼쪽 바 메뉴 -->
        <div class="accomenu">
            <h3>공연</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px; cursor:pointer;"><a onclick="location.href='/AtTicketProject/show.do';" ><span>▶</span> 공연 조회</a></div>
            </div>
            <h3>통계</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminViews.html"><span>▶</span> 방문자 통계</a></div>
            </div>
            <h3>정산 관리</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="salesManagement.html"><span>▶</span> 매출액 통계</a></div>
            </div>
            <h3>직원 정보</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminEmployee.html"><span>▶</span> 직원 조회</a></div>
            </div>
            <h3>이벤트</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="event.html"><span>▶</span> 이벤트 조회</a></div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="coupon.html"><span>▶</span> 쿠폰 조회</a></div>
            </div>
            <h3>1:1 문의</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminQuestion.html"><span>▶</span> 문의 조회</a></div>
            </div>
            <h3>공연 랭킹</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="Ranking.html"><span>▶</span> 랭킹 조회</a></div>
            </div>
            <h3>공지사항</h3>
            <div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminNtc(Fix).html"><span>▶</span> 공지사항 조회</a></div>
            </div>
            <h3>고객 정보</h3>
            <div>
            <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminCustomer.html"><span>▶</span> 고객 정보 조회</a></div>
            </div>
            <h3>업무 게시판</h3>
            <div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminWorking.html"><span>▶</span> 업무 게시판 조회</a></div>
            </div>
            <h3>Q&A 게시판</h3>
            <div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="hansiyeonBoard.html"><span>▶</span> Q&A 게시판 조회</a></div>
            </div> 
            <h3>배너 관리</h3>
            <div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminBannerManagementMain.html"><span>▶</span>메인 배너 수정</a></div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminBannerManagementConcert.html"><span>▶</span>콘서트 배너 수정</a></div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminBannerManagementMusical.html"><span>▶</span>뮤지컬 배너 수정</a></div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminBannerManagementTheater.html"><span>▶</span>연극 배너 수정</a></div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminBannerManagementClassic.html"><span>▶</span>클래식 배너 수정</a></div>
                <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminBannerManagementDisplay.html"><span>▶</span>전시 배너 수정</a></div>
            </div> 
        </div>


        <!-- container -->


        
        <!-- <div class="b">
            <input style="font-weight: bold; background-color: #D5A6BD;" type="button" value="Login" id="btn1"
                class="btn">
        </div> -->

        <div id="calendar">
            <input style="width: 100px;" type="text" name="date" id="date" value="">
            <label for="date"><span style="font-size: 2.5em; color:white" class="glyphicon glyphicon-calendar" id = "cal"></span></label>
        </div>

        <!-- 티켓 사이트 로고 바로가기 -->
        <div style="margin-top: 20px; position: fixed; bottom: 30px; left: 70px;">
            <img src="../images/title.png" id="tickethome" 
                    style="cursor: pointer; height: 50px;">
        </div>


    </div>


    <div id="topmenu">
        <div class="home">
            <span style="font-size: 2.5em;" class="glyphicon glyphicon-home" id = "homeLogo"></span>
        </div>
        <div class="search">
            <div class="form-group">
                <div class="input-group">
                    <span style="border-radius: 30px; cursor: pointer;" class="input-group-addon" id="btnsearch"><i
                            class="glyphicon glyphicon-search"></i></span>
                    <input style="border-radius: 30px; width: 200px;" type="text" class="form-control"
                        placeholder="검색어를 입력하세요.">
                </div>
            </div>
        </div>
    </div>

    <div id = "fixedBtn">
        <img src = "../images/switch_on.png" id="sw" name="sw"
            style="width: 70px; position: fixed; bottom: 0px; right: 50px; margin-bottom : 45px;">

        <!-- 제일 위로 돌아가기 -->
        <div id="movetop" style = "position: fixed; bottom: 0px; right: 0px;margin-bottom : 63px;">↑</div>
    </div>

    <!-- 아래 회색 바닥 페이지 없앰 -->
    <!-- <div id="bottom" style="width: 100%; height: 50px; background-color: #eeeeee;"> -->
    </div>
    





</body>



<script>
    var date = document.getElementById("date");
    var now = new Date();
    var sw = document.images["sw"];

    //날짜 자동 입력, 읽기만 가능 
    date.value = now.getFullYear() + " / " + (now.getMonth()+1) + " / " + now.getDate();
    if (date.value != null) {
        date.readOnly = true;
    }

    // 캘린더
        $("#date").datepicker({
            dateFormat: "yy-mm-dd",
            minDate: now.getFullYear() + "-1-1",
            maxDate: now.getFullYear() + "-12-" + "31"
        });

   

    document.body.bgColor = "white";
    


    //스위치 

    var swCount = 1;
    $("#sw").click(function () {
        // console.log("클릭함");

            if(swCount % 2 == 0) {
                // 배경화면 기본상태
                console.log("들어옴");
                sw.src="../images/switch_on.png";
                $("body").css("background-color","white");
                $("#homeLogo").css("color","#333333");
                $("#adminName").css("color","#333333");
                $("#nttable > tbody > tr:nth-child(2n)").css("color","#333333");
                $("#empNoticeTitle").css("color","#333");
                $(".chartWord").css("color","#333");
                $("#vistreserve").css("color","#333");
                $("#moneyTitle").css("color","#333");
            } else {
                // 배경화면이 어두운 색일 경우
                sw.src="../images/switch_off.png";
                $("body").css("background-color","#292A2D");
                $("#homeLogo").css("color","white");
                $("#adminName").css("color","white");
                $("#nttable > tbody > tr:nth-child(2n)").css("color","white");
                $("#empNoticeTitle").css("color","white");
                $(".chartWord").css("color","white");
                $("#vistreserve").css("color","white");
                $("#moneyTitle").css("color","white");
            }
            swCount++;
    });
    

    // $("#btn1").click(function(){
    //     window.open("login.html","Login","width=300, height=300");
    // });
    
    // 버튼을 클릭하면 로그아웃 창이 뜸
    $("#btn2").click(function(){
        if(confirm("로그아웃하시겠습니까?")){
            console.log("로그아웃 되었습니다.");
         }
    });

    $(".accomenu").accordion({
        collapsible: true,
        active: false
    });

    //홈버튼 링크
    $("#homeLogo").click(function() {
        location.href = "adminMain.html";
    });

    //상단 메뉴 고정
    $(document).scroll(function() {
        //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
            if ($(document).scrollTop() > $("#topmenu").position().top) {
                $("#topmenu").css({
                    width: "100%",
                    position: "fixed",
                    top: "0px",
                    bottom: "",
                    zIndex: "1"
                });

            };

        //상단 헤더(top)이 눈에 보일때 쯤
        if ($(document).scrollTop() <= $("#topmenu").position().top) {
            $("#topmenu").css({
                position: "absolute",
                top: "0px",
                bottom: ""
            });             
        }
    });


    //logout 버튼 관련 -> 커서 가져다 대면 더 밝아짐    
    $("#btn2").mouseenter(function(){
        // $("#btn2").css("background-color","cornflowerblue");
        $("#btn2").css("color","white");
    });
    $("#btn2").mouseleave(function(){
        // $("#btn2").css("background-color","#C27BA0");
        $("#btn2").css("color","#D5D5D5");
    })

    //티켓 홈
    $("#tickethome").click(function() {
        window.open("../main.html","At-Ticket");
    });

    
    //상단으로 돌아가기 -> 스무스 하게 올림
    $("#movetop").click(function(){
        	
        $("html,body").animate({
			scrollTop: 0
		}, 700);
        
    });

    //검색
    $("#btnsearch").click(function(){
        // 검색어 넘기기
        window.location.href="adminSearch.html";
    });


    //메뉴 링크
    $("#showmanage").click(function(){  window.location.href="adminShow.html"; });
    $("#emplomanage").click(function(){  window.location.href="adminEmployee.html"; });
    

    //공지명 커서 댔을때
    $("#nttable > tbody > tr > td:nth-child(2)").mouseenter(function(){
        $(this)
            .css("cursor","pointer")
            .css("text-decoration","underline");
    });

    // 공지명에서 커서를 떼었을 때
    $("#nttable > tbody > tr > td:nth-child(2)").mouseleave(function(){
    
        $(this).css("text-decoration","none");
    });

    // 공지를 누르게되면...
    // adminmainNotice.html
    var notiChild;
    $("#nttable > tbody > tr > td:nth-child(2)").click(function(){
        notiChild = window.open("./adminmainNotice.html","nc","width=920,height=900");
        // bannerChild = window.open("./adminBannerSelect.html","bs","width=630,height=1000");

    });


    //일별 방문자수
    Highcharts.chart('container2', {
        colors: [
            "#8389E0"
        ],
        chart: {
            type: 'line'
        },
        title: {
            text: '2020-07-15 ~ 2020-07-21'
        },
        subtitle: {
            text: 'At-Ticket.com'
        },
        xAxis: {
            categories: ['15', '16', '17', '18', '19', '20', '21']
        },
        yAxis: {
            title: {
                text: '방문자수(k)'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: '일별 방문자(천)',
            data: [12.7, 15.0, 25.6, 27.8, 22.2, 23.8, 25.9]
        }]
    });

    // 예매율
    Highcharts.chart('container1', {
    colors: [
        "#92D050"
    ],
    chart: {
        type: 'column'
    },
    title: {
        text: '2020-07-15 ~ 2020-07-21'
    },
    subtitle: {
        text: 'At-Ticket.com'
    },
    xAxis: {
        categories: [
            '15',
            '16',
            '17',
            '18',
            '19',
            '20',
            '21',
        ],
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: '예매율(%)'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f}%</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: '일별 예매율(%)',
        data: [26.0, 35.6, 18.5, 16.4, 14.1, 35.6, 26.9]

    }]
});

// 

$("#prevbtn").click(function(){
    console.log("ki");
});

$("#nextbtn").click(function(){
    console.log("ki");
});


     //순이익 ~1 -> 이거 다시 고쳐야 한다 -> 배열로
    Highcharts.chart('saleRateGraph', {
        colors: [
            "cornflowerblue",
            "orange",
            "#8389E0",
            "#92D050",
            "#555"
        ],
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: "pie",
        },
        title: {
            text: "sales Rate(총 매출액 : 10억)",
        },
        tooltip: {
            pointFormat:
                "{series.name}: <b>{point.percentage:.1f}%</b>",
        },
        accessibility: {
            point: {
                valueSuffix: "%",
            },
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: "pointer",
                dataLabels: {
                    enabled: true,
                    format:
                        "<b>{point.name}</b>: {point.percentage:.1f} %",
                },
            },
        },
        series: [
            {
                name: "Brands",
                colorByPoint: true,
                data: [
                    {
                        name: "비용",
                        y:70
                        // y: 41.41,
                    },
                    {
                        name: "순이익",
                        // y: 33.48,
                        y:30
                        
                    }
                ],
            },
        ],
    });



     //순이익 ~2 -> 이거 다시 고쳐야 한다
    Highcharts.chart('saleRateGraph1', {
        colors: [
            "cornflowerblue",
            "orange",
            "#8389E0",
            "#92D050",
            "#555"
        ],
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: "pie",
        },
        title: {
            text: "sales Rate(총 매출액 : 1100억)",
        },
        tooltip: {
            pointFormat:
                "{series.name}: <b>{point.percentage:.1f}%</b>",
        },
        accessibility: {
            point: {
                valueSuffix: "%",
            },
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: "pointer",
                dataLabels: {
                    enabled: true,
                    format:
                        "<b>{point.name}</b>: {point.percentage:.1f} %",
                },
            },
        },
        series: [
            {
                name: "Brands",
                colorByPoint: true,
                data: [
                    {
                        name: "비용",
                        y:70
                        // y: 41.41,
                    },
                    {
                        name: "순이익",
                        // y: 33.48,
                        y:30
                        
                    }
                ],
            },
        ],
    });

      //순이익 ~3 -> 이거 다시 고쳐야 한다
    Highcharts.chart('saleRateGraph2', {
        colors: [
            "cornflowerblue",
            "orange",
            "#8389E0",
            "#92D050",
            "#555"
        ],
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: "pie",
        },
        title: {
            text: "sales Rate(총 매출액 : 1100억)",
        },
        tooltip: {
            pointFormat:
                "{series.name}: <b>{point.percentage:.1f}%</b>",
        },
        accessibility: {
            point: {
                valueSuffix: "%",
            },
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: "pointer",
                dataLabels: {
                    enabled: true,
                    format:
                        "<b>{point.name}</b>: {point.percentage:.1f} %",
                },
            },
        },
        series: [
            {
                name: "Brands",
                colorByPoint: true,
                data: [
                    {
                        name: "비용",
                        y:70
                        // y: 41.41,
                    },
                    {
                        name: "순이익",
                        // y: 33.48,
                        y:30
                        
                    }
                ],
            },
        ],
    });

    
    // 다음 버튼 누를때
    var positionX = 0;//매출의 x좌표
    var positionY = 0;//매출의 y좌표
    var clickCount = 0;//페이지가 계속 넘어가면 안되므로 제한을 걸어준다
    var imgCount = 2;//이미지 개수-1

    $("#nextbtn").click(function(){

        if (clickCount < imgCount) {
            positionX -= 1400;
            $("#income").css("transform","translate(" + positionX +"px,0px)");   
            clickCount++;
        }
    });
    
    $("#prevbtn").click(function(){

        if(clickCount > 0) {
            positionX += 1400;
            $("#income").css("transform","translate(" + positionX +"px,0px)");   
            clickCount--;
        }
    
    });

    // 매출관리를 누르면 해당 페이지로 이동시켜줄것이다.
    $("#moneyTitle").click(function(){

        location.href = "salesManagement.html";

    });

    // 사내 공지사항 누르면 해당 페이지로 이동시켜줄것이다
    $("#empNoticeTitle").click(function(){

        location.href = "adminNtc(Fix).html";

    });

    // 방문자 & 예매율 그래프 타이틀은 선택하면 상세 페에지로 이동
    $("#vistreserve").click(function(){

        location.href = "adminViews.html";

    });
    

</script>

</html>