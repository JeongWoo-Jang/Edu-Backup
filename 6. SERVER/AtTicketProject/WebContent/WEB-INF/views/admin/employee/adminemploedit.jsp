<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>


    <style>
        @font-face { font-family: 'NanumBarunGothic'; font-style: normal; font-weight: 400; src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot'); src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype'); }

        body{
            font-family: 'NanumBarunGothic';
        }
        html{
            width: 600;
        }
       
        #title{
            margin-left: 30px;
            margin-top: 30px;
            margin-bottom: 20px;
            width: 600px;
            border-bottom: 1px dashed black;
        }


        h1{
            font-weight: bold;
            font-family: Arial;
            /* font-size: 3em;  */
            color: #555;
        }

        #content {
            /* border: 1px solid red; */
            width: 600px;
            height: 100px;
          
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
    </style>

    <style type="text/css">
        .img_wrap {
            /* border: 1px solid black; */
            width: 300px;
            height: 100px;
            margin-top: 50px;
        }
        .img_wrap img {
            max-width: 50%;
        }

    </style>
   

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>adminEmployeeModify</title>
</head>

<body>

    <div id = "title">
        <h1 style="color: #555;">직원 수정</h1>
    </div>


    <div id="content">
        <fieldset id="add" class="form-control" style="border: 0px;">

            <!-- ------------------------------- 선택 직원의 value값 넘겨오기 --------------------------->
            <div><label for="txtname">이름 : </label><input type="text" id="txtname" style="width: 100px;" autofocus></div>
            <div><label for="txtjumin">주민번호 : </label>
                 <input type="text" class="txtjumin" style="width: 100px;" autofocus><span> - </span><input type="text" class="txtjumin" style="width: 100px;" autofocus>
            </div>
            <div><label for="txtphone">전화번호: </label>
                <input type="text" value="010" class="txtphone" style="width: 50px;">
                <span> - </span>
                <input type="text" class="txtphone" style="width: 50px;" autofocus>
                <span> - </span>
                <input type="text" class="txtphone" style="width: 50px;" autofocus>
            </div>
            <div><label for="txtgrade">직급 : </label><input type="text" id="txtgrade" style="width: 70px;" autofocus></div>
            <div><label for="txtsalary">월급 : </label><input type="text" id="txtsalary" style="width: 70px;" autofocus></div>

            <div><label for="txtphoto">증명사진 </label><input type="file" id="txtphoto" style="display: inline;" autofocus></div>
            <div class="img_wrap">
                <img id="img1" />
            </div>

            
            <div><input type="button" id="btnadd" value="수정하기" class="btn btn-default"></div>
        </fieldset>
    </div>



</body>
<script>

    $("#btnadd").click(function() {
        // 수정버튼 >> 입력된 정보 수정하기
    });

    var sel_file;

    $(document).ready(function() {
        $("#txtphoto").on("change", handleImgFileSelect1);
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



</script>
