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
    <ul id="list">
        <li>이름 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="name"
                id="name" class="data"></li>
        <li>아이디 &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="id" id="id" class="data" onclick="location.href='/AtTicketProject/customer/admincustomerlist.do?&search=${search}';"></li>
        <li>주민번호 : <input type="text" name="ssn" id="ssn" class="data"></li>
        </li>
        <li>고객등급 : <input type = "text" name = "grade" class = "data"></li>
        <li>이메일 &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="email" id="email" class="data">
        <li>전화번호 : <input type="text" name="tel" id="tel" class="data"></li>
        <li>비번 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="pwd"
                id="pwd" class="data"></li>
        <li>주소 : 
            <div style="display: inline-block; margin-left: 30px;">
                <input type="text" id="sample4_postcode" placeholder="우편번호">
                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
                <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
                <span id="guide" style="color:#999;display:none"></span>
                <input type="text" id="sample4_detailAddress" placeholder="상세주소">
                <input type="text" id="sample4_extraAddress" placeholder="참고항목">
		<%@include file = "/WEB-INF/views/inc/adminaddress.jsp"%>
	       
            </div>
        </li>


    </ul>
    <div id="b" style="margin-left: 730px;">    
        <button class = "modified" id = "makebtn"><i class="glyphicon glyphicon-plus"></i>추가</button>
        <button class = "modified" id = "closebtn">닫기</button>
    </div>
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
            var name1 = document.getElementById('name').value;
            var email1 = document.getElementById('email').value;
            var tel1 = document.getElementById('tel').value;
            var ssn1 = document.getElementById('ssn').value;
            var id1 = document.getElementById('id').value;
            var pwd1 = document.getElementById('pwd').value;
            var addr1 = document.getElementById('addr').value;
            var index1 = 2;
            console.log(index1);
            list = ['<input type="checkbox" class="cb">', index1, name1, email1, tel1, ssn1, id1, pwd1, addr1];
            console.log(list);
            var tr = document.createElement("tr");
            tr.setAttribute("value", 2);
            for (var j = 0; j < 9; j++) {
                var td = document.createElement("td");
                if (j == 0) {
                    td.setAttribute("name", "checkRow");
                    td.setAttribute("value", 2);
                }
                td.innerHTML = list[j];
                tr.appendChild(td);
                index1++;
            }
            opener.$("#tbody1").append(tr)
        }
    });

    $("#closebtn").click(function () {
        window.close();
    });

	</script>
</body>
</html>