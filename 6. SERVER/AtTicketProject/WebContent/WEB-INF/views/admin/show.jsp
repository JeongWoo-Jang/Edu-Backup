<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../css/jquery-ui.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="../js/jquery-1.12.4.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/bootstrap.js"></script>

    <style>
        @font-face { font-family: 'NanumBarunGothic'; font-style: normal; font-weight: 400; src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot'); src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype'); }
        @font-face { font-family: 'NEXON Lv1 Gothic OTF Light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Light.woff') format('woff'); font-weight: normal; font-style: normal; }
        html{
            width: 1100px;
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
            height: 2000px;
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
            /* margin-left: 10px; */
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
        
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        #content {
            /* border: 1px solid red; */
            width: 80%;
            height: 1880px;
            position: absolute;
            left: 250px;
            top: 120px;
        }

        #tbl {
            /* border: 1px solid gray; */
            border-collapse: collapse;
            width: 800px;
            height: 100px;
            position: relative;
            margin: 0px auto;
        }
        #tbl th {
            text-align: center;            
            background-color: #999;
            height: 30px;
        }
        #tbl td {
            height: 30px;
        }
        #tbl th:nth-child(1), #tbl td:nth-child(1) {
            width: 70px;
            text-align: center;
        }
        #tbl th:nth-child(2), #tbl td:nth-child(2) {
            width: 70px;
            text-align: center;
        }
        #tbl th:nth-child(3), #tbl td:nth-child(3) {
            width: 100px;
            text-align: center;
        }
        #tbl th:nth-child(4), #tbl td:nth-child(4) {
            width: 200px;
            padding-left: 10px;
            text-align: center;
        }
        #tbl th:nth-child(5), #tbl td:nth-child(5) {
            width: 300px;
            text-align: center;
        }
        
        #btns {
            width: 600px;
            position: relative;
            margin-left: 940px;
            outline: none;
            font-weight: border;
            height : 35px;
            font-weight: bold;
            margin-top: 10px;
        }
        #btns > a {
            background-color: #999;
            color : rgb(220,220,220);
            margin: 3px;
            box-shadow: none;
            border: 0px;
        }
        #btns > a:hover {
            color: white;
        }
        
        /* 페이징바 색상 */
        .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
            background-color:#999999;
            border-color: #eeeeee;
        }
        
        .pagination > li > a, .pagination > li > span{
            color: black;
        }

         #slctp1 {
            width: 250px;
            /* margin-top: px; */
            position: relative;
            left: 365px;
            top: 40px;
        }
        #slctp2 {
            margin-top : 10px;
            margin-bottom: 10px;
            margin-left: 860px;
            /* margin : 10px auto; */
            width : 300px;
        }
        .selectNotice {
                /* border: 1px solid black; */
                text-align: center;
                margin: 10px 0px;
                margin-bottom: -10px;
                background-color: white;
                border : 0px;
                height : 20px;
                border-right: 1px solid #999;
                color : #777;
                padding: 0px;
                padding-right: 5px;
                /* font-size: 1.5em; */
        }
        .selectNotice:last-child {
            border-right: 0px;
        }

        .selectNotice:hover {
            color : #111;
            font-weight: bold;
        }
        
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminShow</title>
</head>

<body>

    <div id = "title">
        <h1 style="color:#555">공연 관리 <small> > Home  </small></h1>
    </div>


    <div id="left">
        
        <img src="../images/man.png" 
            style="margin-top: 40px; width: 80px; border: 1px solid #333; border-radius: 50%; background-color: #999;">
        <div class="info" style="color:white">
            <span><br>Welcome,</span></br></span>
            <span>Hong gil dong</span>
        </div>
        <!-- <div class="b">
            <input style="font-weight: bold; background-color: #C27BA0; margin : 80px;" type="button" value="Logout" id="btn2"
                class="btn">
        </div> -->
        <div id = "logout">
            <input style="font-weight: bold; background-color: #999; margin-top : 30px; margin-bottom : 50px; color: #D5D5D5; width: 70px; height: 30px; outline: none;"
                     type="button" value="Logout" id="btn2" class="btn">
        </div>
        <div class="accomenu">
            <!-- 여기에 메뉴 -->
            <h3>공연</h3>
            <div>
             <div style="margin-left:-30px; padding-left: 30px; width: 231px; height: 25px;"><a href="adminShow.html"><span>▶</span> 공연 조회</a></div>
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
             
         </div>
        <!-- container -->


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

    <div id="content">

        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>내림차순</button>
        </div>

        <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>

        <table id="tbl" class="table table-striped table-bordered table-condensed">
            <tbody id="tbody">
                <tr>
                    <th>선택</th>
                    <th>번호</th>
                    <th>장르</th>
                    <th>제목</th>
                    <th>기간</th>

                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>1</td>
                    <td>뮤지컬</td>
                    <td>렌트</td>
                    <td>2020.07.20-2020.09.17</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>2</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>3</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>4</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>5</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>6</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>7</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>8</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>9</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>10</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>11</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>12</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>13</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>14</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>15</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                
            </tbody>
        </table>
        
        <div id="btns">
            <a class="btn btn-primary" id="btnadd"><i class="glyphicon glyphicon-plus"></i> 추가</a>
            <a class="btn btn-primary" id="btnmodify"><i class="glyphicon glyphicon-pencil"></i> 수정</a>
            <a class="btn btn-primary" id="btndelete"><i class="glyphicon glyphicon-trash"></i> 삭제</a>
        </div>

        <nav class="pagebar" style="width: 500px; position: relative; margin: 20px auto;">
            <ul class="pagination">
              <li>
                <a href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">6</a></li>
              <li><a href="#">7</a></li>
              <li><a href="#">8</a></li>
              <li><a href="#">9</a></li>
              <li><a href="#">10</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
            
        </nav>
        

       

    </div>

</body>
<script>

    
    // 추가
    $("#btnadd").click(function(){
        // window.location.href="adminShowAdd.html";
        window.open("adminShowAdd.html","_self");
    });
    // 수정
    $("#btnmodify").click(function(){
        if ($("input:checkbox[name=is_check]:checked").length > 1 || $("input:checkbox[name=is_check]:checked").length < 1){
            alert("하나만 선택하세요.");
        }else {
            //선택된 체크박스의 내용 불러오기

            // window.location.href="adminShowModify.html";
            window.open("adminShowModify.html","_self");
        }
    });
    // 삭제
    $("#btndelete").click(function(){
        var result = confirm("정말 삭제하시겠습니까?");
        console.log(result);
        if(result) {
            alert("삭제되었습니다.")
        }else {

        }
    });

    var date = document.getElementById("date");
    var now = new Date();
    var sw = document.images["sw"];
    date.value = now.getFullYear() + " / " + now.getMonth() + " / " + now.getDate();
    if (date.value != null) {
        date.readOnly = true;
    }

    
        $("#date").datepicker({
            dateFormat: "yy-mm-dd",
            minDate: now.getFullYear() + "-1-1",
            maxDate: now.getFullYear() + "-12-" + "31"
        });

   

    document.body.bgColor = "white";
    
    $(".accomenu").accordion({
        collapsible: true,
        active: false
    });


    //스위치 
    var swCount = 1;
    $("#sw").click(function () {
        console.log("클릭함");

            if(swCount % 2 == 0) {
                console.log("들어옴");
                sw.src="../images/switch_on.png";
                $("body").css("background-color","white");
                $("#homeLogo").css("color","#333333");
                $("#adminName").css("color","#333333")
            } else {
                sw.src="../images/switch_off.png";
                $("body").css("background-color","#292A2D");
                $("#homeLogo").css("color","white");
                $("#adminName").css("color","white");

            }
            swCount++;
    });

    $("#btn1").click(function(){
        window.open("login.html","Login","width=300, height=300");
    });
    

    $("#btn2").click(function(){
        if(confirm("로그아웃하시겠습니까?")){
            console.log("로그아웃 되었습니다.");
         }
    });

    $(".container").accordion();
    // $(".container2").accordion();
    $('.collapse').collapse({
        toggle: false
    })


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

   //메인검색
   $("#btnsearch").click(function(){
        // 검색어 넘기기
        window.location.href="adminSearch.html";
    });

    //공연검색
    $("#btnsearch2").click(function(){
        // 검색어 넘기기
        window.location.href="adminSearch.html";
    });
    
    $("#showmanage").click(function(){  window.location.href="adminShow.html"; });
    $("#emplomanage").click(function(){  window.location.href="adminEmployee.html"; });


    
    

</script>

</html>