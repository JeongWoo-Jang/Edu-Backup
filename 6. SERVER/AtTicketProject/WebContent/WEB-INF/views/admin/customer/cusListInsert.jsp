<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	 #list {
            margin-top: 10px;

        }

        li {
            margin-bottom: 10px;
        }

        #b {
            margin-top: 20px;
            margin-bottom: 30px;
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
            /* background-color: #333; */

        }
        
        .data{
        	width:150px;
        }
</style>
</head>
<body>
 <legend style="width: 200px; margin:20px 25px; font-weight: bold;">고객정보 추가</legend>

 <form method = "POST" action = "/AtTicketProject/customer/cusinsertok.do" enctype = "multipart/form-data">
    <ul id="list">
        <li>이름 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="name"
                id="name" class="data"></li>
        <li>아이디 &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="id" id="id" class="data"></li>
        <li>주민번호 : <input type="text" name="ssn" id="ssn" class="data"></li>
        </li>
        <li>고객등급 : <input type = "text" name = "grade" class = "data"></li>
        <li>이메일 &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="email" id="email" class="data">
        <li>전화번호 : <input type="text" name="tel" id="tel" class="data"></li>
        <li>비번 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="pw"
                id="pw" class="data"></li>
        <li>에그머니 : <input type="text" name="egg" id="egg" class="data"></li>
		<li>주소 :
			<div style="display: inline-block; margin-left: 30px;">
				<div style="display: inline-block;">
					<input type="text" id="postcode" placeholder="우편번호">
					<input id="addr" type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
					<input name="address" type="text" id="address" placeholder="도로명주소"> 
					
					<%@include file="/WEB-INF/views/inc/adminaddress.jsp"%>
				</div>
		</li>
		<li> 파일 : <div class = "data" style="width:500px;margin-left:70px;margin-top:-25px;"><input name = "attach" type="file" class="form-control"></div></li>
    </ul>
    
    <div id="b" style="margin-left: 300px;">    
        <button type = "submit" class = "modified" id = "makebtn"><i class="glyphicon glyphicon-plus"></i>추가</button>
        <button class = "modified" id = "closebtn">닫기</button>
    </div>
    </form>
	<script>
    $("#name").keyup(function () {
        if (event.keyCode == 13)
            $("#email").focus();
    }
    );

    $("#email").keyup(function () {
        if (event.keyCode == 13)
            $("#tel").focus();
    }
    );

    $("#tel").keyup(function () {
        if (event.keyCode == 13)
            $("#ssn").focus();
    }
    );

    $("#ssn").keyup(function () {
        if (event.keyCode == 13)
            $("#id").focus();
    }
    );

    $("#id").keyup(function () {
        if (event.keyCode == 13)
            $("#pwd").focus();
    }
    );

    $("#pwd").keyup(function () {
        if (event.keyCode == 13)
            $("#addr").focus();
    }
    );

    $("#makebtn").click(function () {
        if (confirm("추가하시겠습니까?")) {
        	location.href="/AtTicketProject/customer/cusinsertok.do";
        }
    });

    $("#closebtn").click(function () {
        window.close();
    });

	</script>
</body>
</html>