<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminbanner.css">

    <style>
	
	   #left {
	   	 height: 5000px;
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
            width: 1000px;
            height: 400px;
            position: absolute;
            left: 360px;
            top: 150px;
        }

        #add {
            width: 1000px;
            height: 800px;
            position: relative;
            left: 40px
            /* margin: 20px auto; */
            
        }
        #content > #add > #rightbox > div {
            margin: 10px;

        }
        #content > #add > #rightbox > div > label {
            margin: 5px;
            font-size: 16px;
        }
        #content > #add > #rightbox > div > span { font-size: 16px; }
        #btnadd {
            margin-top: 0px;
            margin-left: 200px;
        }
        .addshow { margin-left: 5px; }
        .rtxt { margin: 5px ;}
        .btn { box-shadow: none; }

        #rightbox{
            position: relative;
            float:right;
            top: -600px;
            right: 200px;
        }
        #btns {
	        float: right;
	        position: relative;
	        left: 100px;
        }
        #btns > button { outline: none; }

    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminShowAdd</title>
</head>

<body>

    <div id = "title">
        <h1 style="color:#555">공연 보기 <small> > 공연관리 > Home  </small></h1>
    </div>

	<%@include file="/WEB-INF/views/inc/menu.jsp" %>

	
    <div id="content">
    
    	<div id="btns">
            <button id="btnEdit" class="btn btn-default">수정</button>
            <button id="btnDel" class="btn btn-default">삭제</button>

        </div>
        <div style="clear: both;"></div>
    

        <fieldset id="add" class="form-control" style="border: 0px;">

            <div><img id="img1" src="<%= request.getContextPath() %>/images/consertPoster.jpg"/></div>

    
            <div id="rightbox">
                <div><label for="txtname">공연 제목 : </label><span>공연테스트</span></div>

                <div>
                <label>공연 장르 : </label><span>뮤지컬</span>
                </div>

                <div>
                    <label for="txtopen">오픈 일시 : </label>
                    <span>2020.08.11</span>
                    
                </div>
                <div><label for="txtdate">공연 기간 : </label>
                    <span>2020.08.11~2020.09.01</span>
                </div>
                <div><label for="txtprice">공연 가격 : </label><span>56000</span>원</div>
                <div><label for="txtmin">소요 시간 : </label><span>100</span>분</div>
                <div><label for="txtage">연령 제한 : </label><span>15</span>세</div>
                <div id="round">
                    <label for="txtround1">공연 회차 : </label><span>1</span>
                    <label for="txttime1">시작 시간 : </label><span>13:00</span>
                </div>
                
                <div>
                    <label for="txtplace">공연 장소 : </label>
                    <span>공연장 상영관 주소</span>
                </div>

                <div>
                    <label for="txtagen">기획사 : </label><span>롸롸기획</span>
                </div>
            </div>
            <div style="clear :both;"></div>

            <div id="imgcontent" style="position: relative; top: -350px; font-size: 16px;">
            <label for="txtcontent">공연 내용 </label><br>
            <img id="img2" src="<%= request.getContextPath() %>/images/공연정보1.jpg" />
            <img id="img3" src="<%= request.getContextPath() %>/images/공연정보.jpg" />
            </div>

        </fieldset>
    

    </div>

</body>
<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>


   
</script>

</html>