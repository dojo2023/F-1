<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>呑みサポちゃん試作</title>
</head>
<body>
	<h1>ログイン</h1>
	<p>※デフォルト Xperia Sonyにしています
	<hr>
	<form method="POST" action="/d-suppo/LoginServlet">
		ID<input type="text" name="ID"><br> PW<input
			type="password" name="PW"><br> <input type="submit"
			name="LOGIN" value="ログイン">
	</form>
	<p><a href="/d-suppo/IdpwRegistServlet">新規登録</a></p>
</body>
</html>
