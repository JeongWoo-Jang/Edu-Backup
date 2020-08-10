<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
<style>
   #title {
        /* text-align: center; */
        margin-left: 280px;
        margin-top: 50px;
        width: 1500px;
        border-bottom: 1px dashed black;
    }

    #subtitle {
        margin-top: 50px;
        margin-left: 280px;
        text-align: center;
        width: 1000px;
        height: 40px;
        background-color: #CCCCCC;
        padding-top: 10px;
        color: white;
        font-weight: bold;
        font-size: 1.3em;
    }

    #box1 {
        margin-left: 280px;
    }

    .table th {
        font-weight: bold;
        text-align: center;
    }

    .line {
        margin-top: 10px;
    }

    .modified {
        border: 0px;
        border-radius: 5px;
        background-color: #999;
        outline: none;
        font-weight: border;
        color: rgb(220, 220, 220);
        height: 35px;
        font-weight: bold
    }

    .modified:hover {
        color: white;
        /* background-color: #333; */

    }

    #img1{
        padding-left: 100px;
        padding-top: 20px;
        width: 700px;
    }

    .subject{
        width: 100px;
    }

</style>
</head>
<body><div id="title">
        <h1 style="color: #555; font-weight: bold;
                font-family: Arial;
                font-size: 3em;">글쓰기> <small>리뷰 게시판 </small><small>> Home </small></h1>
    </div>

    <div id="subtitle">글쓰기</div>
    <div id="box1" style="width: 1000px;">
        <table class="table table-bordered" style="width: 1000px">
            <tr>
                <th class = "subject" style="width: 100px; vertical-align: middle;">태그</th>
                <td>
                    <select class = "form-control" style="width: 90px;">
                        <optgroup label="태그">
                            <option value = "1">후기</option>
                        </optgroup>
                    </select>
                </td>
               

            </tr>
            <tr>
                <th class = "subject" style="width: 100px; vertical-align: middle;">장르</th>
                <td>
                    <select class = "form-control" style="width: 90px;">
                        <optgroup label="장르">
                            <option value = "1">콘서트</option>
                            <option value = "2">뮤지컬</option>
                            <option value = "2">연극</option>
                            <option value = "2">클래식</option>
                            <option value = "2">전시</option>
                        </optgroup>
                    </select>
                </td>
            </tr>
            <tr>
                <th class = "subject" style="width: 100px; vertical-align: middle;">공연제목</th>
                <td>
                    <select class = "form-control" style="width: 90px;">
                        <optgroup label="제목">
                            <option value = "1">콘서트</option>
                            <option value = "2">뮤지컬</option>
                            <option value = "2">연극</option>
                            <option value = "2">클래식</option>
                            <option value = "2">전시</option>
                        </optgroup>
                    </select>
                </td>
            </tr>
            
            <tr>
                <th class = "subject" style="vertical-align: middle;">제목</th>
                <td>
                    <input id="row2" style="width: 500px;" type="text" class="form-control" class="line">
                    <div style="margin-top: 10px;" required="required" autocomplete="off">반드시 입력하세요.</div>
                </td>
            </tr>

            <tr>
                <th class = "subject" style="vertical-align: middle;">내용</th>
                <td>
                    <textarea id = "row4" class="form-control" style="height:100px" ></textarea>
                </td>
            </tr>
            <tr>
                <th class = "subject" style="vertical-align: middle;">파일</th>
                <td>
                    <div><label for="txtphoto">첨부파일&nbsp;</label><input type="file" id="txtphoto"
                            style="display: inline;"></div>
                    <div class="img_wrap">
                        <img id="img1" />
                    </div>
                </td>
            </tr>
            <tr>
                <th class = "subject" style="vertical-align: middle;">날짜</th>
                <td>
                    <input id="row4" style="width: 150px;" type="date" class="form-control" class="line">
                    <div style="margin-top: 10px;" required="required" autocomplete="off">반드시 입력하세요.</div>
                </td>
                </td>
            </tr>
        </table>
        <div style="margin-top: 30px; margin-left: 920px; text-align: center; width: 100px;">
            <button type="submit" class="modified" id="makebtn" ><i class="glyphicon glyphicon-plus"></i>수정</button>
        </div>
    </div>
  

	<%@include file="/WEB-INF/views/inc/menu.jsp"%>
	<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	
	 //제목에 엔터를 치면 이름으로 focus
    $("#row2").keyup(function () {
        if (event.keyCode == 13) {
            $("#row3").focus();
        }
    });

     //이름에 엔터를 치면 내용으로 focus
    $("#row3").keyup(function () {
        if (event.keyCode == 13) {
            $("#row4").focus();
        }
    });


    $("#makebtn").click(function () {
        if (confirm("수정을 하시겠습니까?")) {
            location.href="hansiyeonBoard.html";
        }
    });

    var sel_file;

    $(document).ready(function () {
        $("#txtphoto").on("change", handleImgFileSelect1);
    });

    function handleImgFileSelect1(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);

        filesArr.forEach(function (f) {
            if (!f.type.match("image.*")) {
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }

            sel_file = f;

            var reader = new FileReader();
            reader.onload = function (e) {
                $("#img1").attr("src", e.target.result);
            }
            reader.readAsDataURL(f);

        });
    }
	
     $("#modifybtn").click(function () {
        if(confirm("정말로 수정하시겠습니까?")){
          
        }
    });
    
	</script>
</body>
</html>