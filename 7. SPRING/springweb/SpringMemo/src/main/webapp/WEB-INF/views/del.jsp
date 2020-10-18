<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/spring/resources/css/bootstrap.css">
<link rel="stylesheet" href="/spring/resources/css/main.css">
<script src="/spring/resources/js/bootstrap.js"></script>

<style>

</style>

</head>
<body>

	<div class="container">
		<h1 class="page-header">Spring Memo</h1>
		<section>
			<ul class="breadcrumb">
				<li>Memo</li>
				<li class="active">Del</li>
			</ul>
		</section>
		
		<input type="button" value="삭제하기" class="btn btn-default" 
		onclick="location.href='/spring/delok.action?seq=${seq}'">
		<input type="button" value="돌아가기" class="btn btn-default" onclick="history.back();">
	</div>

	<script>
	
	</script>

</body>
</html>