<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
    <style>

        @font-face { font-family: 'NanumBarunGothic'; font-style: normal; font-weight: 400; src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot'); src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype'); }
        @font-face { font-family: 'NEXON Lv1 Gothic OTF Light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Light.woff') format('woff'); font-weight: normal; font-style: normal; }
        * { outline: none; }
        html{
            width: 1100px;
        }
        h1{
            font-weight: bold;
            font-family: Arial;
            font-size: 3em; 
            color: #111;
        }
        body{
            font-family: 'NanumBarunGothic';
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
            width: 400px;
            height: 400px;
            position: absolute;
            left: 360px;
            top: 150px;
        }

        #add {
            width: 500px;
            height: 800px;
            position: relative;
            left: 40px
            /* margin: 20px auto; */
            
        }
        #content > #add > div {
            margin: 10px;

        }
        #content > #add > div > label {
            margin: 5px;
        }

        #btnadd {
            margin-top: 0px;
            margin-left: 200px;
        }
        .addshow { margin-left: 5px; }
        .rtxt { margin: 5px ;}

        .img_wrap {
            /* border: 1px solid black; */
            width: 300px;
            height: 100px;
            margin-top: 50px;
        }
        .img_wrap img {
            max-width: 30%;
        }
        
        .btn { box-shadow: none; }


    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminShowAdd</title>
    <%@include file="/WEB-INF/views/inc/menu.jsp" %>
</head>

<body>

    <div id = "title">
        <h1 style="color:#555">공연 추가 <small> > 공연관리 > Home  </small></h1>
    </div>

    <div id="content">

        <fieldset id="add" class="form-control" style="border: 0px;">
            <!-- <legend class="form-control">공연 정보 추가하기</legend> -->
            
			<form method="POST" action="/customer/showaddok.do">
			
            <div>
                <label>공연 장르 : </label>
                <select style="height: 25px;">
                    <option>뮤지컬</option>
                    <option>콘서트</option>
                    <option>연극</option>
                    <option>클래식</option>
                    <option>전시</option>
                </select>
            </div>

            <div><label for="txtname">공연 제목 : </label><input type="text" id="txtname" autofocus></div>
            <div>
                <label for="txtopen">오픈 일시 : </label>
                <input style="width: 100px;" type="text" name="date3" id="date3" class="date" value="">
                <label for "date3"><span style="font-size: 1em;" class="glyphicon glyphicon-calendar" id = "cal3"></span></label>
            </div>
            <div><label for="txtdate">공연 기간 : </label>
                <input style="width: 100px;" type="text" name="date1" id="date1" class="date" value="">
                <label for "date1"><span style="font-size: 1em;" class="glyphicon glyphicon-calendar" id = "cal1"></span></label>
                <span> - </span>
                <input style="width: 100px;" type="text" name="date2" id="date2" class="date" value="">
                <label for "date1"><span style="font-size: 1em;" class="glyphicon glyphicon-calendar" id = "cal2"></span></label>
            </div>
            <div><label for="txtprice">공연 가격 : </label><input type="text" id="txtprice" style="width: 100px;" autofocus>원</div>
            <div><label for="txtmin">소요 시간 : </label><input type="text" id="txtmin" style="width: 100px;" autofocus>분</div>
            <div><label for="txtage">연령 제한 : </label><input type="text" id="txtage" style="width: 100px;" autofocus>세</div>
            <div id="round">
                <label for="txtround1">공연 회차 : </label><input type="text" id="txtround1" style="width: 100px;" autofocus>
                <label for="txttime1">시작 시간 : </label><input type="text" id="txttime1"  style="width: 100px;" autofocus>
                <button id="addbtn" class="btn btn-default" style="height: 30px; outline: none;">회차 추가</button>
            </div>
            
            <div>
                <label for="txtplace">공연 장소 : </label>
                <input type="text" id="txtplace" style="width: 100px;" autofocus>
                <input type="button" id="btnplace" value="찾기" class="btn btn-default" style="height: 30px;">
            </div>

            <div>
                <label for="txtagen">기획사 : </label>
                <select>
                    <option>㈜프라이빗커브</option>
                    <option>㈜홍컴퍼니</option>
                    <option>롯데엔터네인먼트</option>
                    <option>오픈리뷰</option>
                    <option>주식회사 스탠바이컴퍼니</option>
                    <option>㈜월드쇼마켓</option>
                    <option>롯데컬처웍스㈜</option>
                    <option>㈜펜타토닉</option>
                    <option>㈜엠피앤컴퍼니</option>
                    <option>예술의전당</option>
                    <option>(㈜인터파크</option>
                    <option>페이지터너</option>
                </select>
            </div>

            <div><label for="txtheader">포스터  : </label><input type="file" id="txtheader" style="display: inline;" autofocus></div>
            <div class="img_wrap">
                <img id="img1" />
            </div>

            <div><label for="txtcontent">공연 내용 : </label><input type="file" id="txtcontent" style="display: inline;" autofocus></div>
            <div class="img_wrap">
                <img id="img2" />
            </div>

            <div><input type="button" id="btnadd" value="추가하기" class="btn btn-default"></div>
            
			</form>
			
        </fieldset>
    

       

    </div>

</body>
<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>
	
    $("#btnplace").click(function() {
        window.open("adminShowAdd_hall.html","adminShowAdd_hall","width=500, height=500");
    });

    var n = 2;

    $("#addbtn").mousedown(function() {

        
        $("#round").append("<div class='addshow'><label for='txtround"+ n +"'>공연 회차 : </label><input type='text' class='rtxt' id='txtround"+ n +"' style='width: 100px;' autofocus>"+
                "<label for='txttime"+ n +"'> 시작 시간 : </label><input type='text' class='rtxt' id='txttime"+ n +"' style='width: 100px;' autofocus></div>");

        n++;

    });

    $("#btnadd").click(function() {
        // alert();
        // 추가버튼 >> 입력된 정보 추가하기
        history.back();
    });

    var sel_file;

    $(document).ready(function() {
        $("#txtheader").on("change", handleImgFileSelect1);
        $("#txtcontent").on("change", handleImgFileSelect2);
    }); 

    function handleImgFileSelect1(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);

        filesArr.forEach(function(f) {
            if(!f.type.match("image.*")) {
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }

            sel_file = f;

            var reader = new FileReader();
            reader.onload = function(e) {
                $("#img1").attr("src", e.target.result);
            }
            reader.readAsDataURL(f);
            
        });
    }

    function handleImgFileSelect2(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);

        filesArr.forEach(function(f) {
            if(!f.type.match("image.*")) {
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }

            sel_file = f;

            var reader = new FileReader();
            reader.onload = function(e) {
                $("#img2").attr("src", e.target.result);
            }
            reader.readAsDataURL(f);
            
        });
    }

    $("#date1").datepicker({
        dateFormat: "yy-mm-dd",
    });

    $("#date2").datepicker({
        dateFormat: "yy-mm-dd"
    });

    $("#date3").datepicker({
        dateFormat: "yy-mm-dd"
    });


</script>

</html>