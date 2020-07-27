<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	String name = "홍길동";
	int age = 20;
	String color = "tomato";
	String attribute = "background-color";

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>

	h1 {
		<%= attribute %>: <%= color %>;
	}

</style>
</head>
<body>

	<h1>자바 표현식의 용도</h1>
	
	<h2>출력</h2>
	<p onclick="alert('<%= name %>');">이름 : <%= name %></p>
	<p style="color: <%= color %>">나이 : <%= age %></p>
	
	<script>
		var name = "<%= name %>";
		alert(name);
	</script>
	
</body>
</html>