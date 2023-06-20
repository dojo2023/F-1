<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>呑みサポちゃん試作</title>
	</head>
	<body>
		<div>
			<h1>ログイン</h1>
			
			<div>
				<p>※デフォルト Xperia Sonyにしています</p>
			</div>
			
			<hr>
			<form method="POST" action="/d-suppo/LoginServlet">
				<div>
					ID<input type="text" name="ID"><br> 
					PW<input type="password" name="PW"><br> 
				</div>
				<div>
					<input type="submit"name="LOGIN" value="ログイン">
				</div>
			</form>
			<div>
				<p><a href="/d-suppo/IdpwRegistServlet">新規登録</a></p>
			</div>
		</div>
	</body>
</html>
