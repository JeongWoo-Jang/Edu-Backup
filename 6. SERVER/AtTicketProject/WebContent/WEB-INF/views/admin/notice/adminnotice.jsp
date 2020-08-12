<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>



<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminbanner.css">
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        /* 매인배너 타이틀 */

       #left {
           position: absolute;
           left: 0px;
           top: 0px;
           width: 250px;
           height: 2800px;
           background-color: #444;
           text-align: center;
           z-index: 10;
       }
        
        #bannermg {
            border : 0px;
            border-radius: 5px;
            background-color: #444444;
            outline: none;
            margin : 20px;
            margin-top : 50px;
            font-weight: border;
            color : rgb(220,220,220);
            height : 40px;
            margin-left : -100px; 
        }
        
        #bannermg:hover {
            color : white;
        }
        #mainBanner {
            width :1500px;
            height : 700px;
            margin-left : 280px; 
            margin-bottom: 20px;
        }
        
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }
        
       /* 구분선 */
      .splitHr {
          margin-top : 40px;
          border : 1px solid #999999;
          margin-left : 280px;
          width : 1500px;
      }


</style>

</head>
<body>
	
	
	<!-- 최상단 -->
    <div id = "title">
        <h1 id = "rltitle">공지사항 <small id = "mainHome"> > Home  </small></h1>
    </div>
	
   <!-------------------------- 회원공지 메인배너 관리 시작 -------------------------->
    <style>
       
       
       /* 배너 타이틀 */
       #banner {
            color:#333;
            padding : 20px;
            width : 400px;
            font-weight: bold;
            font-size: 1.5em;
            padding-top : 60px;
            margin-left : 10px;
        }
        
        
        #slctp1, #slctp2 {
            float : left;
            /* margin-left : 100px; */
            margin-bottom: 0px;
        }
        #slctp1 {
            margin-left : -10px;
            /* margin-bottom:-10px; */
        }

        #slctp2 {
            margin-top : 10px;
            margin : 10px auto;
            margin-bottom: 10px;
            width : 300px;
            margin-left: 792px;
        }
        #searchlogo:hover {
            cursor: pointer;
        }

        #manipulate {
            margin-left: 1085px;
        }
        /* 수정하는 버튼  */
        .edit {
            width : 120px;
            height : 50px;
            border: 0px;
            font-size: 1.3em;
            font-weight: bold;
            margin: auto 30px;
            margin-top : 80px;
            background-color: #D5D5D5;
            color:#333;
            border-radius: 10px;
            visibility: hidden;
        }
        
        /* 배너 내에 들어가는 이미지*/
        .bannerImg {
            width : 300px;
            height : 430px;
            margin : 20px;
            margin-top : 30px;
            float : left;
        }
        #inbanner1 {
            background-image: url("../images/theater14.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner2 {
            background-image: url("../images/theater16.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner3 {
            background-image: url("../images/theater11.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner4 {
            background-image: url("../images/theater2.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner5 {
            background-image: url("../images/theater9.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner6 {
            background-image: url("../images/theater5.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner7 {
            background-image: url("../images/theater13.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #inbanner8 {
            background-image: url("../images/theater20.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }

          /* 이미지 배너 내에 들어가는 화살표 */
        /* 이전 표시 */
        #lookprev {
            position : absolute;
            /* z-index : 1px; */
            top : 450px;
            left : 310px;
        }
        #lookprev:hover {
            cursor : pointer;
        }   
        /* 다음 표시 */
        #looknext {
            position : absolute;
            top : 450px;
            left : 1700px;
        }
        #looknext:hover{
            cursor : pointer;
        }
        /* 클라이언트에게 보여질 그림들~~~-> 오버플로우 시켜서 그림이 차례대로 보이게 해야한다. */
        #seeBanner {
            width : 1360px;
            height : 500px;
            overflow: hidden;
        }

        #look {
            /* border:1px solid red; */
            width : 5000px;
            height : 500px;
            transition: all 1s;
            position:relative;
        }

        /* 내부에 들어가는 요소집합 -> 수정버튼과 내용버튼을 감싸는 div 태그라고 보면 된다. */
        .inner {
            width : 250px; 
            height : 150px;
            /* border : 1px solid orange; */
            display: inline-block;
            visibility: hidden;
            /* float: left; */
        }

        /* 이미지 내 수정버튼 */
        .innerbtn1 {
            width : 200px;
            height : 50px;
            font-weight: bold;
            font-size: 1.3em;
            border-radius: 10px;
            background-color: #F0F0F0;
            margin-left : 25px;
            border: 0px;

        }
        /* 버튼에 커서를 올렸을때 반응 */
        .innerbtn1:hover{
            background-color: #D5D5D5;
        }
        /* 이미지 내 내용 */
        .innercontxt {
            border: 0px;
            background-color: #F0F0F0;

        }


    </style>
    
    
    <div id = "mainBanner" style = "padding : 0px; padding-left : 70px; background-color: #F0F0F0;">
        <div id = "banner" style = "font-size : 1.6em;">
            회원 공지 메인배너 관리
        </div>

        <div id = "lookprev" ><img src="../images/slide-dir-prev.png" alt=""></div>
        <div id = "looknext"><img src="../images/slide-dir-next.png" alt=""></div>
        
        <!-- seeBanner -->
        <div id = "seeBanner">
            <div id = "look">
                <!-- 첫번째 그림 -->
                <div class = "bannerImg" id = "inbanner1"></div>
                <div class = "inner" id = "inner1" style = "transform: translate(-2675px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn1">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>

                <!-- 두번째 그림 -->
                <div class = "bannerImg" id = "inbanner2"></div>         
                <div class = "inner" id = "inner2" style = "transform: translate(-2590px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn2">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>     
                <!-- 세번째 그림 -->
                <div class = "bannerImg" id = "inbanner3"></div>
                <div class = "inner" id = "inner3" style = "transform: translate(-2505px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn3">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>
                <!-- 네번쨰 그림 -->
                <div class = "bannerImg" id = "inbanner4"></div>
                <div class = "inner" id = "inner4" style = "transform: translate(-2418px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn4">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>
                <!-- 다섯번째 그림 -->
                <div class = "bannerImg" id = "inbanner5"></div>
                <div class = "inner" id = "inner5"style = "transform: translate(-2330px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn5">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>
                <!-- 여섯번째 그림 -->
                <div class = "bannerImg" id = "inbanner6"></div>
                <div class = "inner" id = "inner6" style = "transform: translate(-2244px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn6">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>
                <!-- 일곱번쨰 그림 -->
                <div class = "bannerImg" id = "inbanner7"></div>
                <div class = "inner" id = "inner7" style = "transform: translate(-2159px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn7">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>
                <!-- 여덜번째 그림 -->
                <div class = "bannerImg" id = "inbanner8"></div>
                <div class = "inner" id = "inner8" style = "transform: translate(-2072px,200px);">
                    <input type="button" value = "수정하기" class = "innerbtn1" id = "modbtn8">
                    <pre style = "margin: 10px;" class = "innercontxt">
2020.07.06(목) 16:00
	
뮤지컬 [머더발라드] 2020...</pre>                
                </div>
            
            
            </div>

        </div>
        
    </div>

	<script>
	

    // 배너사진 효과 수정**
    
    
    var positionX = 0;//look 의 x좌표
    var positionY = 0;//look 의 y좌표
    var clickCountLook = 0;//페이지가 계속 넘어가면 안되므로 제한을 걸어준다
    
    // 이전페이지를 눌렀을 경우
    $("#lookprev").click(function(){
        if(clickCountLook > 0) {
            positionX += 340;
            $("#look").css("transform","translate(" + positionX +"px,0px)");
            clickCountLook--;  
        }
    });

    // 다음 페이지를 눌렀을 경우
    $("#looknext").click(function(){
        if(clickCountLook < 4) {
            positionX -= 340;
            $("#look").css("transform","translate(" + positionX +"px,0px)");   
            clickCountLook++;
        }
    });

    var imgId;//현재 건드린 이미지 아이디
    
    // 이미지에 커서를 올린 경우
    $(".bannerImg").mouseenter(function(){
        $(event.srcElement).css("filter","opacity(.4)");
        imgId = event.srcElement.id;
        console.log(imgId)        
        
        if (imgId == "inbanner1") {
            $("#inner1").css("visibility","visible");
            $("#inner1").mouseenter(function(){
                $("#inner1").css("visibility","visible");
                $("#inbanner1").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner2") {
            $("#inner2").css("visibility","visible");
            $("#inner2").mouseenter(function(){
                $("#inner2").css("visibility","visible");
                $("#inbanner2").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner3") {
            $("#inner3").css("visibility","visible");
            $("#inner3").mouseenter(function(){
                $("#inner3").css("visibility","visible");
                $("#inbanner3").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner4") {
            $("#inner4").css("visibility","visible");
            $("#inner4").mouseenter(function(){
                $("#inner4").css("visibility","visible");
                $("#inbanner4").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner5") {
            $("#inner5").css("visibility","visible");
            $("#inner5").mouseenter(function(){
                $("#inner5").css("visibility","visible");
                $("#inbanner5").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner6") {
            $("#inner6").css("visibility","visible");
            $("#inner6").mouseenter(function(){
                $("#inner6").css("visibility","visible");
                $("#inbanner6").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner7") {
            $("#inner7").css("visibility","visible");
            $("#inner7").mouseenter(function(){
                $("#inner7").css("visibility","visible");
                $("#inbanner7").css("filter","opacity(.4)");
            })
        } else if (imgId == "inbanner8") {
            $("#inner8").css("visibility","visible");
            $("#inner8").mouseenter(function(){
                $("#inner8").css("visibility","visible");
                $("#inbanner8").css("filter","opacity(.4)");
            })
        }
    
    });
     


    // 이미지에 커서를 뗀 경우
    $(".bannerImg").mouseleave(function(){
        // $(event.srcElement).css("filter","opacity(1)")
        for(var i = 1; i <= 8; i++) {
            $("#inbanner"+i).css("filter","opacity(1)");
        }

        $(".inner").css("visibility","hidden");
    });


	</script>


    <!-------------------------- 회원공지 메인배너 관리 끝 -------------------------->
    <hr class = "splitHr">
    

    <!-------------------------- 회원대상 공지사항  게시판 시작 -------------------------->	
    <style>
        #selectable {
            /* border : 1px solid blue; */
            width : 1330px;
            margin-left : 350px;
            height : 1100px;
        }
        .selectNotice {
                width : 80px;
                /* text-align: center; */
                margin: 10px 0px;
                margin-bottom: -10px;
                background-color: white;
                border : 0px;
                height : 20px;
                border-right: 1px solid #999;
                color : #777;
                padding: 0px;
                /* padding-left : -120px; */
                padding-right: 5px;
                font-size: 1.1em;
        }
        .selectNotice:last-child {
            border-right: 0px;
        }

        .selectNotice:hover {
            color : #111;
            font-weight: bold;
        }


        /* 고객들을 위한 공지 */
        #nttable {
            margin-left : 0px;
        }
        #nttable th {
            background-color:  #999;
            /* color : white; */
        }
        #nttable th:nth-child(1) {width : 25px;}
        #nttable th:nth-child(2) {width : 130px;}
        #nttable th:nth-child(3) {width : 775px;}
        #nttable th:nth-child(4) {width : 300px;}
        #nttable th:nth-child(5) {width : 100px;}


        #nttable tbody td {
            text-align: center;

        }

        #nttable tbody td:nth-child(3) {
            text-align: left;
            padding-left: 20px;
        }


        #nttable > tbody > tr > td:nth-child(3):hover {
            cursor : pointer;
            text-decoration: underline;
        }

        .modified {
            border : 0px;
            border-radius: 5px;
            background-color: #999;
            outline: none;
            font-weight: border;
            color : rgb(220,220,220);
            height : 35px;
            font-weight: bold    
        }
        .modified:hover {
            color : white;
        }
        .pagebar {
            margin-left : 400px;
        }
        
        /* 게시판 th 관리 */
        .tableth {
            text-align: center;
        }

       .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
           background-color:#999999;
           border-color: #eeeeee;
       }
        
      .pagination > li > a, .pagination > li > span{
          color: black;
      }



    </style>

	

    <!-- 등록순 오름차순 조회순 -->
    <div id = "selectable">
        <div class = "tableInnerTitle">회원 대상 공지</div>
        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>내림차순</button>
            <!-- <input type="button" class = "selectNotice" value = "등록순">
            <input type="button" class = "selectNotice" value = "오름차순">
            <input type="button" class = "selectNotice" value = "내림차순"> -->
        </div>

        <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>
        
        <table style = "width:1330px;" class = "table table-striped table-bordered table-condensed" id = "nttable">
            <thead>
                <tr>
                    <th><input type="checkbox" id = "total5"></th>
                    <th class = "tableth">구분</th>
                    <th class = "tableth">제목</th>
                    <th class = "tableth">티켓오픈일시</th>
                    <th class = "tableth">조회수</th>
                   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td id = "remi">레미제라블 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td id = "morning">아침을여는 클래식</td>
                    <td> 2020.03.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>

                </tr>               
                 <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>               
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>               
                 <tr>
                     <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>                
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>티켓오픈</td>
                    <td>지킬 엔 하이드 - 박효신 출현 서울시 강남구 상섬동 코엑스</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>2016</td>
                    

                </tr>
            </tbody>
        </table>

        <!-- 내용물 수정/삭제 페이지 -->
        <div id = "manipulate">
            <button class = "modified" id = "makebtn"><i class="glyphicon glyphicon-plus"></i> 공지작성</button>
            <button class = "modified" id = "modifybtn"><i class="glyphicon glyphicon-pencil"></i> 공지수정</button>
            <button class = "modified" id = "delbtn"><i class="glyphicon glyphicon-trash"></i> 공지삭제</button>
        </div>
            <!-- <input type="button" class = "modified" value = "공지삭제"> -->
        <!-- <input type="button" class = "modified" value = "공지작성"> -->
        <!-- <input type="button" class = "modified" value = "공지수정"> -->


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

	<!-------------------------- 회원대상 공지사항 끝 -------------------------->	
	
	




	<%@include file="/WEB-INF/views/inc/menu.jsp" %>
	
<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>
</script>


</body>
</html>