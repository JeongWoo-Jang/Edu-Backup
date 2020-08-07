<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>



<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>
	    #btn1 {
            margin-top: 10px;
        }
</style>


</head>
<body>
	
	
	<!-- POST 방식으로 넘겨준다 AdminLogin.java 로 넘어갈 것이다-->													
	<form style="width: 200px; margin: auto; margin-top: 50px; text-align: center;" name="login" method = "POST" action = "/AtTicketProject/adminlogin.do">
        <div><img src="images/title2.png" ></div>
        <fieldset style="width: 200px;">
            <legend align="center">로그인</legend>
            아이디: <input type="text" id="id" name = "id" autocomplete = "off" required><br>
            암호: <input type="password" id="pw" name = "pw" required>
            <input type="submit" value="로그인" id="btn1">
        </fieldset>
    </form>
    
    
    <script>
		
    </script>


</body>
</html>