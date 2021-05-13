<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>${board.title}</h2>
		<br>
		<form action="boardUpdate" method="post">
			<div class="form-group">
				<label for="writer">게시글 번호 : ${board.number} </label> <br>
			</div>
			<div class="form-group">
				<label for="writer">작성자 : ${board.id} </label> <br>
			</div>
			<div class="form-group">
				<!-- 작성자는 고정이니 불러오는 것을 공부해서 넣을 것 -->
				<label for="write-date">게시일자 : ${board.creDate} </label> <br>
			</div>
			<div class="form-group">
				<label for="title">${board.title}</label>
			</div>
			<div class="form-group">
				<label for="content">${board.contents}</label>
			</div>
			<!-- 버튼을 누르면 수정하는 페이지로 가야함 -->
			<button type="button" class="btn btn-default"
				href="board/boardUpdate">수정</button>
			<button type="button" class="btn btn-default" name="delete"
				onclick='location.href="delete?no=${member.no}%>";'>삭제</button>
		</form>
	</div>
</body>
</html>