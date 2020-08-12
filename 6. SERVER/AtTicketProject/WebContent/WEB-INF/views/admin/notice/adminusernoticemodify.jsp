<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/AtTicketProject/css/adminbanner.css">
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	    /* 최상단 타이틀 */
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
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
            border : 5px solid #444444;
            color : #C27BA0;
            text-align: center;
            width : 120px;
            font-size: 2em;
        }
        #right2 {
            border : 1px solid black;
            /* text-align: center; */

        }
        /* 최상단 타이틀 */
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        
        #selectable {
            width : 1330px;
            margin-left : 350px;
            height : 600px;
            margin-top : 20px;
        }

        .selectNotice {
            width : 100px;
            text-align: center;
            margin: 10px 0px;
            margin-bottom: 0px;
            background-color: white;
            border : 0px;
            border-radius: 5px;
            color : #999;
            font-size: 1.3em;
            height : 40px;
        }

        .selectNotice:hover {
            color : black;
        }
        #nttable {
            margin-left : 0px;
        }
        #nttable th {
            background-color:  #999;
            text-align: center;
        }
        #nttable td {
            text-align: center;
        }

        #nttable td:nth-child(3) {
            padding-left : 20px;
            text-align: left;
        }
        
        #nttable td:nth-child(1) {
            text-align: left;
        }        

        #nttable th:nth-child(1) {width : 40px;}
        #nttable th:nth-child(2) {width : 130px;}
        #nttable th:nth-child(3) {width : 775px;}
        #nttable th:nth-child(4) {width : 300px;}


        #nttable tbody td {
            font-size: 1.2em;
        }

        #nttable > tbody > tr > td:nth-child(3):hover {
            cursor : pointer;
            text-decoration: underline;
        }

        .pagebar {
            margin-left : 400px;
        }

       #slctp1, #slctp2 {
            float : left;
        }
        #slctp1 {
            margin-left: -13px;
        }
        #slctp2 {
            margin-top : 10px;
            margin : 10px auto;
            margin-bottom: 10px;
            width : 300px;
            margin-left: 736px;
        }

        #searchlogo:hover {
            cursor: pointer;
        }
        #topSelect div {
            float : left;
        }
        .inputInfo {
            /* border : 1px solid #D2D2D2; */
            height : 250px;
            width : 1330px;
            margin-left : 350px;
            margin-top : 0px;
            margin-bottom : 10px;
        }
        .inputTitle {
            /* border : 1px solid blue; */
            width : 1330px;
            margin-left : 350px;
            height : 40px;
            margin-bottom: 0px;
            font-size: 1.5em;
            font-weight: inherit;
        }
        .inputInfo table {
            /* border: 1px solid black; */
            border-collapse: collapse;
            margin: 20px;
            width : 1290px;
            height : 200px;
        }
        .inputInfo table td{
            border: 2px solid #D2D2D2;
            /* width : 200px; */
        }
        .inputInfo table input{
            /* background-color: red; */
            margin-left : 10px;
        }
        .inputInfo table select {
            margin-left : 10px;
        }
        .title {
            /* 제목 영역 */
            width : 150px;
            background-color: #F0F0F0;
            /* text-align: end; */
        }
        /* 표 안에 들어가는 캘린더 조정 */
        .inputCalendar {
            /* border : 1px solid green; */
            margin-bottom : 20px;
        }
        .calIng {
            /* border : 1px solid red; */
            position : relative;
            left : 10px;
            top : 10px;
        }
        .calIng:hover {
            cursor: pointer;
        }
        .consted {

            margin-bottom : 20px;
        }
        .inputBox {
            height : 30px;
        }     

        /*체크박스 제어  */
        #nttable .tdbox {
            padding-left : 15px;
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

</head>
<body>

    <!-- 여기에 내용 삽입 -->
    <div id = "title">
        <h1 id = "realTitle">공지사항 <small id = "mainHome"> > 공지수정  </small></h1>
    </div>

	
	 <!-- 게시판 -->
    <div id = "selectable">
        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>내림차순</button>
        </div>
       <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder = "ex) 뮤지컬 모차르트">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>
        <table style = "width:1330px;" class = "table table-striped table-bordered table-condensed" id = "nttable">
            <thead>
                <tr>
                    <th>선택</th>
                    <th>번호</th>
                    <th>이름</th>
                    <th>날짜</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>1</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>1</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>
                    
                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>2</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>3</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>4</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>5</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>6</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>7</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>8</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>9</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>

                </tr>
                <tr>
                    <td class = "tdbox"><input type="checkbox" class = "t5"></td>
                    <td>10</td>
                    <td>가나다 콘서트</td>
                    <td> 2020.02.17(월) 15:00</td>
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
                <li><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li class = "active"><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li><a href="">5</a></li>
                <li><a href="">6</a></li>
                <li><a href="">7</a></li>
                <li><a href="">8</a></li>
                <li><a href="">9</a></li>
                <li><a href="">10</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
        
    </div><!-- selectable --> 


<!-- 관리자가 뮤지컬 등의 정보를 등록한다. -->
    <div class = "inputTitle">
        현재화면 상태
    </div>
    <div class = "inputInfo" style = "height : 840px;">
        <table  style = "height : 800px;">
            <tr>
                <td colspan="2"><iframe src="" frameborder="0" style = "width : 1300px; height : 720px;" id = "picframe"></iframe></td>
            </tr>  
            <tr style = "height : 70px;">
                <td class = title>&nbsp;&nbsp;파일첨부</td>
                <td><input type="file" id = "fileinputer"></td>
            </table>
            </tr>          
    </div> 
    <script>
        //파일선택을 하면  현재화면상태에 변화를 준다 -> 서버 구현할떄 바뀌어야 하는 코드이다.
        var fileTimer = 0;
        $("#fileinputer").click(function(){
            fileTimer = setTimeout(function(){
                $("#picframe").attr("src","adminNtcCheck2(fix).html");
            },3000);    
        });
    </script>
    

    <div class = "inputTitle">
        티켓정보
    </div>
    <div class = "inputInfo">
        <table>
            <tr>
                <td class = title>&nbsp;&nbsp;*제목</td>
                <td colspan="3"><input type="text" style = "width : 480px;" class = "inputBox"></td>
            </tr>
            <tr>
                <td class = title>&nbsp;&nbsp;*이미지</td>
                <td colspan="3"><input type="file" id = "fileSelect" style = "background-color: white;"></td>
            </tr>
            <tr>
                <td class = title>&nbsp;&nbsp;*티켓 오픈 시작 일시</td>
                <td> 
                    <div class = "inputCalendar">       
                        <input type="text" id = "cal1" style = "text-align: center; font-size:1.2em;">
                        <label for="cal1" class = "calIng"><span style="font-size: 3em;" class="glyphicon glyphicon-calendar"></span></label>
                     </div>    
                </td>
                <td class = title>&nbsp;&nbsp;*티켓 오픈 마감 일시</td>
                <td>
                    <div class = "inputCalendar">
                        <input type="text" id = "cal2" style = "text-align: center; font-size:1.2em;">
                        <label for="cal2" class = "calIng"><span style="font-size: 3em;" class="glyphicon glyphicon-calendar"></span></label>
                     </div>
                </td>
            </tr>
        </table>
        
    </div>
    <div class = "inputTitle">
        공연개요
    </div>
    <div class = "inputInfo" style = "height : 300px;">
        <table style = "height : 260px;">
            <tr>
                <td class = "title">&nbsp;&nbsp;공연제목</td>
                <td colspan = "3" ><input type="text" style = "width : 480px;" class = "inputBox"></td>
            </tr>
            <tr>
                <td class = "title">&nbsp;&nbsp;공연 시작일</td>
                <td>
                    <div class = "consted">
                        <input type="text" id = "cal3" style = "text-align: center; font-size:1.2em;">
                        <label for="cal3" class = "calIng"><span style="font-size: 3em;" class="glyphicon glyphicon-calendar"></span></label>
                    </div>
                </td>
                <td class = "title">&nbsp;&nbsp;공연 종료일</td>
                <td>
                    <div class = "consted">
                        <input type="text" id = "cal4" style = "text-align: center; font-size:1.2em;">
                        <label for="cal4" class = "calIng"><span style="font-size: 3em;" class="glyphicon glyphicon-calendar"></span></label>
                    </div>
                </td>
            </tr>
            <tr>
                <td class = "title">&nbsp;&nbsp;공연 시작시간</td>
                <td>
                    <select name="" id="" class = "inputBox">
                        <option>PM</option>
                        <option>AM</option>
                    </select>
                    <select name="" id="" class = "inputBox">
                        <option>00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                    </select>
                     <span class = "hm">시</span>
                    <select name="" id="" class = "inputBox">
                        <option>00</option>
                        <option>10</option>
                        <option>20</option>
                        <option>30</option>
                        <option>40</option>
                        <option>50</option>
                    </select>
                     <span class = "hm">분</span>
                </td>
                <td class = "title">&nbsp;&nbsp;공연 종료시간</td>
                <td>
                    <select name="" id="" class = "inputBox">
                        <option>PM</option>
                        <option>AM</option>
                    </select>
                    <select name="" id="" class = "inputBox">
                        <option>00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                    </select>
                    <span class = "hm">시</span>
                    <select name="" id="" class = "inputBox">
                        <option>00</option>
                        <option>10</option>
                        <option>20</option>
                        <option>30</option>
                        <option>40</option>
                        <option>50</option>
                    </select>
                    <span class = "hm">분</span>
                </td>
            </tr>
            <tr>
                <td class = "title">&nbsp;&nbsp;공연 장소</td>
                <td colspan = "3"><input type="text" style = "width : 480px; height : 30px;"></td>
            </tr>
            <tr>
                <td class = "title">&nbsp;&nbsp;티켓 가격</td><!-- 가격은 나중에 더 생각해보자 -->
                <td><input type="text" class = "inputBox"> 원</td>
                <td class = "title">&nbsp;&nbsp;관람연령</td>
                <td>
                    <select name="" id="" class = "inputBox">
                        <option value="">전체 관람가</option>
                        <option value="">15세 이상 관람가</option>
                        <option value="">청소년 불가</option>
                    </select>
                </td>
            </tr>
        </table>
    </div>

    <div class = "inputTitle">
        공연소개
    </div>
    <div class = "inputInfo">
        <!-- 공연소개 내용 입력하는 칸 -->
        <textarea name="" id="" cols="30" rows="10" placeholder = "공연소개 내용을 입력하세요" style = " border : 2px solid #D2D2D2; resize : none; width : 1290px; height : 210px; margin-top : 20px; margin-left:20px"></textarea>

    </div>

    <div class = "inputTitle">
        기획사 정보
    </div>
    <div class = "inputInfo"  style = "height : 180px;">
        <table style = "height : 140px;">
            <tr>
                <td class = "title">&nbsp;&nbsp;주최</td>
                <td><input type="text" style = "width: 700px; height :30px;"></td>
            </tr>
            <tr>
                <td class = "title">&nbsp;&nbsp;주관</td>
                <td><input type="text" style = "width: 700px; height :30px;"></td>
            </tr>
            <tr>
                <td class = "title">&nbsp;&nbsp;문의</td>
                <td><input type="text" style = "width: 700px; height :30px;"></td>
            </tr>
        </table>
    </div>

    <!-- 등록 하는곳 -->
    <div style = "margin-left : 950px;">
        <input id = "confirmation" type="button" value = "수정" style = "width : 120px; height : 40px; font-size: 1.3em; font-weight: bold;">
    </div>
	
	
	
	
	
	
	
	
	<%@include file="/WEB-INF/views/inc/menu.jsp" %><!-- 왼쪽메뉴 -->
	
	
	<script>
	
		<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>
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

	    var cal1 = document.getElementById("cal1");
	    cal1.value = now.getFullYear() + "-" + parseInt(now.getMonth()+1) + "-" + now.getDate();
	    
	    $("#cal1").datepicker({
	        dateFormat: "yy-mm-dd",
	        minDate: now.getFullYear() + "-1-1",
	        maxDate: now.getFullYear() + "-12-" + "31"
	    });
	        
	    var cal2 = document.getElementById("cal2");
	    cal2.value = now.getFullYear() + "-" + parseInt(now.getMonth()+1) + "-" + now.getDate();
	    
	    $("#cal2").datepicker({
	        dateFormat: "yy-mm-dd",
	        minDate: now.getFullYear() + "-1-1",
	        maxDate: now.getFullYear() + "-12-" + "31"
	    });
	   
	    var cal3 = document.getElementById("cal3");
	    cal3.value = now.getFullYear() + "-" + parseInt(now.getMonth()+1) + "-" + now.getDate();
	    
	    $("#cal3").datepicker({
	        dateFormat: "yy-mm-dd",
	        minDate: now.getFullYear() + "-1-1",
	        maxDate: now.getFullYear() + "-12-" + "31"
	    });
	    
	    var cal4 = document.getElementById("cal4");
	    cal4.value = now.getFullYear() + "-" + parseInt(now.getMonth()+1) + "-" + now.getDate();
	    
	    $("#cal4").datepicker({
	        dateFormat: "yy-mm-dd",
	        minDate: now.getFullYear() + "-1-1",
	        maxDate: now.getFullYear() + "-12-" + "31"
	    });   
		
		
		
		
	    // 등록
	    // confirmation
	    $("#confirmation").click(function(){
	        if(confirm("해당 공지를 수정하시겠습니까?")) {
	            alert("수정완료");

	            location.href = "./adminNtc(Fix).html";
	        }
	    });

	    $("#delbtn").click(function(){
	        if(confirm("해당 공지를 삭제하시겠습니까?")) {
	            alert("삭제완료");
	            location.href = "./adminNtc(Fix).html";
	        }
	    }); 
		
	</script>
	
	
	
</body>
</html>