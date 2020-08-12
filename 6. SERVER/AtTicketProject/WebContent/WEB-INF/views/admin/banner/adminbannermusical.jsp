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
        /* 최상단 타이틀 */
        #title{ 
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }
        /* 구분해주는 라인 */
        .splitHr {
            border: 1px solid #ddd;
            width : 1500px;
            margin-left: 280px;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        
        
        /* 배너 타이틀 제목 -> 어떤 배너인지 구분해주는 것임 */
        .titlebanner {
            margin-top : 50px;
            margin-left : 280px;
            font-size: 1.6em;
            font-weight: bold;
        }


</style>

</head>
<body>
	
	<!-- 메인배너 관리하는 페이지 -->
    <div id = "title">
        <h1 id = "rltitle">배너 관리 <small id = "mainHome"> > 뮤지컬 배너 관리  </small></h1>
    </div>
	
    <!-- ------------------------상단배너 관리 시작-------------------------------------------->
    <style>
        /* 상단배너 */
        #topbanner {
            /* border: 1px solid red; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 500px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 50px;
        }
        /* 사진들을 감싸는 객체 */
        #topcover {
            /* border : 1px solid blue; */
            width : 450px;
            overflow: hidden;
            margin: 0 auto;
        }
        /*상단배너 자식*/
        #topbaby {
            position : relative;
            /* border: 1px solid green; */
            height : 400px;
            width : 13000px;
            transition: all 1.3s;
        }
        /* 상단배너 자식 floating 시킨다. */
        #topbaby div {
            float: left;
            width : 450px;
            height : 400px;
        }
        /* 상단배너 배경의 속성 */
        .topsetting {
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        
        /* 상단배너 prev */
        #mainprev {
            position : absolute;
            top : 430px;
            left : 280px;
        }
        #mainprev:hover {
            cursor : pointer;
        }
        
        /* 상단배너 next */
        #mainnext {
            position : absolute;
            top : 430px;
            left : 1730px;
        }
        #mainnext:hover {
            cursor:pointer;
        }
        
        /* 전체 배너 선택들의 길이조정 너비조정 */
        .bannerTool {
            /* border : 1px solid red; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 320px;

        }
        /* 상단배너 그림 url 가져오기 */
        #topBannerSelect {
            border: 1px solid blue;
            width : 1000px;
            margin : 0px auto;
            

        }
        #topBannerSelect td {
            border: 2px solid #ddd;
            height : 35px;
        }
        #topBannerSelect td:nth-child(1) {
            padding-left : 20px;
            background-color: #f0f0f0;
        }
        #topBannerSelect td:nth-child(2) {
            padding-left : 20px;
        }
        /* 상단배너 이미지 이름 prev next 할때마다 바뀔것이다. */
        #topImgName {
            /* border: 1px solid black; */
            width: 450px;
            text-align: center;
            margin:10px auto;
            /* margin-left : 600px; */
            font-size: 1.2em;
            font-weight: bold;
        }

    </style>
    
    
    
    <div class = "titlebanner">상단배너 관리</div>
    <div id = "topbanner">
        <div id = "topcover">
            <div id = "topbaby">
                <div class = "topsetting" style = "background-image: url(../images/slide1.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/slide2.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/slide3.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/slide4.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/slide5.jpg);"></div>
            </div>
        </div>
        <div id = "topImgName">상단배너 1 번째 사진</div>
    </div>
    
    <div><img src="../images/slide-dir-prev.png" alt="" id = "mainprev"></div>
    <div><img src="../images/slide-dir-next.png" alt="" id = "mainnext"></div>
    
    <!-- 사진 움직이게 하려는 컨트롤 -->
    <script>

        var positionTopX = 0;//look 의 x좌표
        var clickCountTop = 0;//페이지가 계속 넘어가면 안되므로 제한을 걸어준다
        // 다음 페이지를 눌렀을 때
        $("#mainnext").click(function(){
            console.log("asd");
                if (clickCountTop < 4) {
                     positionTopX -= 450;
                    $("#topbaby").css("transform","translate(" + positionTopX + "px,0px)");
                    //document.getElementById("topImgName").textContent = parseInt(clickCountTop + 2) + " 번째 사진";
                    //$("#topImgName").text(`상단배너 ${clickCountTop + 2} 번째 사진`);
                    var sta1 = "상단배너 ";
                    var one = clickCountTop + 2
                   	var sta2 = " 번째 사진";
                    $("#topImgName").text(sta1 + one + sta2);
                    clickCountTop++;
                }
        });
        //이전페이지를 눌렀을 때
        $("#mainprev").click(function(){
                if (clickCountTop > 0) {
                     positionTopX += 450;
                    $("#topbaby").css("transform","translate(" + positionTopX + "px,0px)");
                    //$("#topImgName").text(`상단배너 ${clickCountTop} 번째 사진`);
                   	var sta1 = "상단배너 ";
                    var one = clickCountTop;
                   	var sta2 = " 번째 사진";
                   	$("#topImgName").text(sta1 + one + sta2);
                    clickCountTop--;
                }
        });
        
    </script>
    <!-- 상단배너 그림을 고르기 -->
    <div class = "bannerTool" style = "margin-left: 330px; width : 1400px">
        <table id = "topBannerSelect">
            <tr>
                <td>상단배너 1번째 사진</td>
                <td><input type="file"></td>
            </tr>
            <tr>
                <td>상단배너 2번째 사진</td>
                <td><input type="file"></td>
            </tr>
            <tr>
                <td>상단배너 3번째 사진</td>
                <td><input type="file"></td>
            </tr>
            <tr>
                <td>상단배너 4번째 사진</td>
                <td><input type="file"></td>
            </tr>
            <tr>
                <td>상단배너 5번째 사진</td>
                <td><input type="file"></td>
            </tr>
        </table>
    </div>

    <hr class = "splitHr">

    

    <!--------------------------- 상단배너 관리 끝------------------------------------------------->	


    <!--------------------------- WHAT'S HOT 시작------------------------------------------------->
    <style>
        /* WHAT'S HOT 배경 */
        #whatsHotPic {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 800px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 50px;
        }


        /* 큰사진 */
        #bigPic {
            /* border : 1px solid red; */
            width : 500px;
            height : 700px;
            float: left;
            background-color: black;
            /* transition: all 1s; */
        }

        #bigPic > img {
            transition: all 1s;
        }

        .whatrow {
            width : 280px;
            height : 345px;
            float: left;
            margin-left : 20px;
            margin-bottom: 10px;
            /* border: 1px solid red; */
            background-color: black;
        }

        .whatrow img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        
        .whatModify {
            /* border: 1px solid yellow; */
            height : 0px;
        }
        /* 이미지 내의 수정 버튼 */
        .whatModify button {
            /* border: 1px solid red; */
            position : relative;
            top : -190px;
            left : 37px;
            border: 1px solid #ddd;
            width : 200px;
            height : 60px;
            visibility: hidden;
        }
        /* 이미지 내의 수정버튼에 호버를 했을때 */
        .whatModify button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
        
    </style>

    <div class = "titlebanner">WHAT'S HOT 배너 관리</div>
    <div id = "whatsHotPic">
        <div id= "bigPic" >
            <img src="../images/big_music.jpeg" style = "width : 100%; height : 100%;"alt="">
            <div class = "whatModify" style= "margin-top : -200px; margin-left : 110px"><button id = "whatHotBtn1">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic1">
            <img src="../images/music14.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn2">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic2">
            <img src="../images/music3.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn3">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic3">
            <img src="../images/music4.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn4">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic4">
            <img src="../images/music5.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn5">수정하기</button></div> 
        </div>
        <div class = "whatrow" id = "smallpic5">
            <img src="../images/music6.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn6">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic6">
            <img src="../images/music7.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn7">수정하기</button></div>
        </div>
    </div>

    <!-- 사진위에 커서를 올릴때 처리해줄것 -->
    <script>


        // // 큰 이미지에 커서 대면 검은색으로 바탕이 변함
        $("#bigPic").mouseenter(function(){
            $("#bigPic button").css("visibility","visible");
            $("#bigPic > img").css("opacity",".2");
        });
        
        $("#whatHotBtn1").click(function(){
            console.log($(this)[0].id);
        });

        // 큰 이미지에서 커서 때면
        $("#bigPic").mouseleave(function(){
            $("#bigPic button").css("visibility","hidden");
            $("#bigPic > img").css("opacity","1");
        });


        //작은 이미지 처리
        for (var i = 1; i <= 6; i++) {
        	$("#smallpic"+i).mouseenter(function(){
                $("#" + $(this).context.id + " button").css("visibility","visible");
                $("#" + $(this).context.id + " img").css("opacity",".2");
            });
            
            // 클릭했을 경우~
            $("#whatHotBtn"+(i+1)).click(function() {
                console.log($(this)[0].id);
            });

            $("#smallpic"+i).mouseleave(function(){	
                $("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");

                
            });  
        }
        
    </script>
    <hr class = "splitHr">

    <!--------------------------- WHAT'S HOT 끝------------------------------------------------->

    <!--------------------------- 중간배너 시작------------------------------------------------->
       <style>

        #middleBanner {
                width : 1500px;
                /* min-width: 1600px; */
                height: 400px;
                margin-top: 20px;
                background-color: black;
                text-align: center;
                margin-left: 280px;
        }
        #bannerimg {
                width: 286px;
                height: 400px;
                background-image: url("../images/bannerimg.png");
                display: inline-block;
                margin-right: 160px;
        }
        #mbtn {
            /* float: right; */
            box-shadow: none;
            margin-left: 20px;
            background-color: white;
            border: 1px solid #ccc;
        }
        #mbtn:hover {
            background-color: #ddd;
            font-weight: bold;
        }

    </style>
    
    
    <div class = "titlebanner">Middle 배너 관리<button id="mbtn" class="btn btndefault">수정하기</button></div>

    <div id="middleBanner">

        <div id="bannerimg"></div>
                <iframe
                    width="714"
                    height="400"
                    src="https://www.youtube.com/embed/knh13N7k-TY"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
                ></iframe>
        

    </div>


    
    <!--------------------------- 중간배너 끝------------------------------------------------->


   <!--------------------------- AT'S PICKS 시작------------------------------------------------->
     <style>
        #atpbanner {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 440px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 8px;
        }

        .atpPicture {
            /* border: 1px solid red; */
            margin-left:15px;
            width : 230px;
            height : 340px;
            /* height : 100px; */
            float: left;
            background-color: black;
        }

        .atpPicture img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 이미지 내 수정 버튼 */
        .atpEditBtn {
            position : relative;
            /* border: 1px solid orange; */
            top : -180px;
            left : 0px;
        }
        .atpEditBtn button {
            width : 200px;
            height : 60px;
            margin-left: 14px;
            border: 1px solid #ddd;
            visibility: hidden;
        }
        /* 수정 버튼에 커서를 올렸을떄 */
        .atpEditBtn button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>

    <div class = "titlebanner">AT'S PICKS 배너 관리</div>    
    
    <div id = "atpbanner">
        <div class = "atpPicture" id = "atpOpen1">
            <img src="../images/music2.jpeg" alt="">
            <div class = "atpEditBtn"><button id = "atpBtn1">수정하기</button></div>
        </div>
        <div class = "atpPicture" id = "atpOpen2">
            <img src="../images/music3.jpeg" alt="">
            <div class = "atpEditBtn"><button id = "atpBtn2">수정하기</button></div>
        </div>
        <div class = "atpPicture" id = "atpOpen3">
            <img src="../images/music4.jpeg" alt="">
            <div class = "atpEditBtn"><button id = "atpBtn3">수정하기</button></div>
        </div>
        <div class = "atpPicture" id = "atpOpen4">
            <img src="../images/music10.jpeg" alt="">
            <div class = "atpEditBtn"><button id = "atpBtn4">수정하기</button></div>
        </div>
        <div class = "atpPicture" id = "atpOpen5">
            <img src="../images/music11.jpeg" alt="">
            <div class = "atpEditBtn"><button id = "atpBtn5">수정하기</button></div>
        </div>
        <div class = "atpPicture" id = "atpOpen6">
            <img src="../images/music1.jpeg" alt="">
            <div class = "atpEditBtn"><button id = "atpBtn6">수정하기</button></div>
        </div>
    </div>

    <!-- 이미지위에 올리면 수정버튼이 떠야한다 -->
    <script>
        
        for (var i = 1; i <= 6; i++) {
            //사진 영역 내에 마우스 커서를 올렸을 때
            $("#atpOpen" + i).mouseenter(function(){
                console.log($(this).context.id);
                // console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","visible")
                $("#" + $(this).context.id + " img").css("opacity",".2");

                console.log($(this).context.children[1].children[0].id);
            });

            // 수정 버튼을 클릭했을때
            $("#atpBtn" + i).click(function(){
                console.log($(this)[0].id);
            })
            //사진 영역 내에 마우스 커서를 똇을 때
            $("#atpOpen" + i).mouseleave(function(){
                console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");
            }); 
        }

    </script>

    <hr class = "splitHr">    
    <!--------------------------- AT'S PICKS 끝------------------------------------------------->

   <!---------------------------내용 저장하기 시작------------------------------------------------->
    <style>
        #saveBtn {
            margin-top : 30px;
            margin-left : 930px;
            width : 200px;
            height: 60px;
            font-size: 1.3em;
            border: 1px solid #ddd;
        }
        #saveBtn:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>
    
    
    <div><input type="button" value = "저장하기" id = "saveBtn"></div>

    <script>
        //저장하기 눌렀을때 이벤트
        $("#saveBtn").click(function(){
            if (confirm("해당 내용을 저장하시겠습니까?")) {
                alert("저장 완료.");

                location.href = "./adminMain.html";
            }    
        });

    </script>
    <!---------------------------내용 저장하기 끝------------------------------------------------->

	<%@include file="/WEB-INF/views/inc/menu.jsp" %>

<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>
</script>


</body>
</html>