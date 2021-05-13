<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 가입</title>
<link rel="stylesheet" href="LoginForm.css" />
</head>
<body>
	<div class="login">
		<form action="auth/login" method="post">
			로그인<br> ID<br> <input type="text" name="id" placeholder="ID 입력 / 이메일 형식"><br> 
			비밀번호<br> <input type="password" name="password" placeholder="비밀번호 입력"><br>
			<button type="submit" name="">로그인</button>
		</form>
	</div>
</body>
</html>