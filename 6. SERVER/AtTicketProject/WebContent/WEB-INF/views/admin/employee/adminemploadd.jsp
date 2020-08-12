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
            width: 500px;
        }
        #title{
            margin-left: 30px;
            margin-top: 30px;
            margin-bottom: 20px;
            width: 500px;
            border-bottom: 1px dashed black;
        }
        h1{
            font-weight: bold;
            font-family: Arial;
            font-size: 3em; 
            /* color: #B4A7D6; */
        }


        #content {
            /* border: 1px solid red; */
            width: 100%;
            height: 450px;
           
        }

        #add {
            width: 500px;
            height: 450px;
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
    <title>adminEmployeeAdd</title>
</head>

<body>

    <div id = "title">
        <h1 style="color: #444;">직원 추가</h1>
    </div>




    <div id="content">
        <fieldset id="add" class="form-control" style="border: 0px;">

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
			<div><label for="txtbuseo">부서배치 : </label>
				<select>
					<option value = "">인사부</option>
					<option value = "">개발부</option>
					<option value = "">기획부</option>
					<option value = "">경영지원</option>
					<option value = "">홍보부</option>
					<option value = "">영업부</option>
				</select>
			</div>
            <div class="img_wrap">
                <img id="img1" />
            </div>

            
            <div><input type="button" id="btnadd" value="추가하기" class="btn btn-default"></div>
        </fieldset>
    </div>


</body>
<script>

    $("#btnadd").click(function() {
        // 추가버튼 >> 입력된 정보 추가하기
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


    var date = document.getElementById("date");
    // var date = document.getElementsByClassName("date");
    var now = new Date();
    var sw = document.images["sw"];
    date.value = now.getFullYear() + " / " + (now.getMonth()+1) + " / " + now.getDate();
    if (date.value != null) {
        date.readOnly = true;
    }

    
    $("#date1").datepicker({
        dateFormat: "yy-mm-dd",
        minDate: now.getFullYear() + "-1-1",
        maxDate: now.getFullYear() + "-12-" + "31"
    });

    $("#date2").datepicker({
        dateFormat: "yy-mm-dd",
        minDate: now.getFullYear() + "-1-1",
        maxDate: now.getFullYear() + "-12-" + "31"
    });



    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }



</script>
