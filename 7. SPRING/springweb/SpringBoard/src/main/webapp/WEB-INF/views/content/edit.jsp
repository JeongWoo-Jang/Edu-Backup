<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- template.jsp > add.jsp -->

<style>
	.table th { width: 150px; }
	.table td { width: 650px; }
	.table textarea[name='content'] { height: 300px; }
	.filename { text-align: left; margin: 5px 0 0 5px; }
</style>

<div class="content">
	
	<form method="POST" action="/spring/editok.action" enctype="multipart/form-data">
		<table class="table table-bordered">
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" class="form-control" required autocomplete="off" value="${dto.subject}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" class="form-control" required>${dto.content}</textarea></td>
			</tr>
			<tr>
				<th>언어</th>
				<td>
					<select name="cseq" class="form-control" id="cseq">
					<c:forEach items="${clist}" var="cdto">
						<option value="${cdto.seq}">${cdto.name}</option>
					</c:forEach>						
					</select>
				</td>
			</tr>
			<tr>
				<th>코드</th>
				<td>
					<input type="file" name="attach" class="form-control">
					<div class="filename">첨부파일 : ${dto.filename}</div>
					<input type="hidden" name="filename" value="${dto.filename}">
				</td>
			</tr>
		</table>
		
		<div class="btns">
			<input type="submit" value="수정하기" class="btn btn-default">
			<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/spring/view.action?seq=${dto.seq}';">
		</div>
		
		<input type="hidden" name="seq" value="${dto.seq}">
		
	</form>
	
</div>


<script type="text/javascript">

//언어
document.getElementById("cseq").value = "${dto.cseq}";

</script>







