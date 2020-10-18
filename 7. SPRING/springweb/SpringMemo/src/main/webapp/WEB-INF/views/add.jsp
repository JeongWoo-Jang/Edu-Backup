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
				<li class="active">Add</li>
			</ul>
		</section>
		
		<form method="POST" action="/spring/addok.action">
			<table class="table table-bordered tblAdd">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required class="form-control"></td>
				</tr>
				<tr>
					<th>메모</th>
					<td><input type="text" name="memo" required class="form-control"></td>
				</tr>
			</table>
			<div>
				<input type="submit" value="등록하기" class="btn btn-default">
			</div>
		</form>
	</div>

	<script>
	
	</script>

</body>
</html>