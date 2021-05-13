<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
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
		<h2>게시글 수정</h2>
		<br>
		<form action="boardUpdate" method="post">
			<!-- 일반회원은 공지사항을 못쓰게 만들어야함 disable을 쓰면 되는데 모르겠음 -->
			<label for="writer">게시글 종류 : 
			<select name="${board.grade}">
					<option>일반 게시글</option>
					<option>공지 사항</option>
			</select>
			</label>
			<div class="form-group">
				<label for="writer">게시글 번호 : ${board.number} </label> <br>
			</div>
			<div class="form-group">
				<label for="writer">작성자 : ${board.id} </label> <br>
			</div>
			<div class="form-group">
				<!-- 작성자는 고정이니 불러오는 것을 공부해서 넣을 것 -->
				<label for="write-date">수정일자 : ${board.creDate} </label> <br>
			</div>
			<div class="form-group">
				<label for="title">제목</label> <input type="text"
					class="form-control" id="title" value='${board.title}' name="title"
					maxlength="100" required="required" pattern=".{4,100}">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<!-- textarea태그라서  value값이 오류날 수 있음  -->
				<textarea class="form-control" rows="5" id="content" name="contents"
					value='${board.contents}'></textarea>
			</div>
			<button type="submit" class="btn btn-default" name="update">수정</button>
			<button type="button" class="btn btn-default" name="delete"
				onclick='location.href="delete?no=${member.no}%>";'>삭제</button>
		</form>
	</div>
</body>
</html>