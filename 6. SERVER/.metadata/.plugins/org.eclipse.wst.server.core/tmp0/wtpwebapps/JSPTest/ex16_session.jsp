<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	//session 데이터
	session.setAttribute("name", "홍길동");
	application.setAttribute("age", 20);

	int num2 = 1;
	num2 = num2 + 1;

	if (session.getAttribute("num") == null) {
		//int num = 1;
		session.setAttribute("num", 1);
	} else {
		//num = num + 1;
		session.setAttribute("num", (int)session.getAttribute("num") + 1);
	}
	
	if (application.getAttribute("num") == null) {
		application.setAttribute("num", 1);
	} else {
		application.setAttribute("num", (int)application.getAttribute("num") + 1);
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="inc/asset.jsp" %>
<style>

</style>
</head>
<body>

	<div class="container">
	
		<h1>세션, Session</h1>
		
		<div><%= session.getAttribute("name") %></div>
		<div>방문 카운트 : <%= session.getAttribute("num") %></div>
		
		<h1>어플리케이션, Application</h1>
		<div><%= application.getAttribute("age") %></div>
		<div>방문 카운트 : <%= application.getAttribute("num") %></div>
		
	
	</div>
	
	<script>
	
	</script>
	
</body>
</html>