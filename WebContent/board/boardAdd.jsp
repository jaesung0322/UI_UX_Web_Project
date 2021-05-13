<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 쓰기</title>
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
		<h2>글 쓰기</h2>
		<br>
		<form action="boardAdd" method="post">
			<!-- 일반회원은 공지사항으로 수정 못하게 만들어야함 disable을 쓰면 되는데 모르겠음 -->
			<div class="form-group">
				<label for="writer">게시글 종류 : 
				<select name="${board.grade}">
					<option>일반 게시글</option>				
					<option>공지 사항</option>
     		   </select>									
				</label><br>
			</div>
			<div class="form-group">
				<label for="writer">작성자 : ${board.id}</label><br>
			</div>
			<div class="form-group">
				<!-- 작성자는 고정이니 불러오는 것을 공부해서 넣을 것 -->
				<label for="write-date">작성일자 : ${board.creDate}</label><br>
			</div>
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title"
					placeholder="제목 입력(4-100)" name="title" maxlength="100"
					required="required" pattern=".{4,100}">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" id="content" name="contents"
					placeholder="내용 작성"></textarea>
			</div>
			<button type="submit" class="btn btn-default">작성</button>
		</form>
	</div>
</body>
</html>