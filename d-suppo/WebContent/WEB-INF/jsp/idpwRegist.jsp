<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録ページ(試作)</title>
</head>
<body>
<p>新規登録ページ(試作)</p>
<form method="POST" action="/d-suppo/IdpwRegistServlet">
    ID<input type="text" name="ID"><br>
    PW<input type="password" name="PW"><br>
    <input type="submit" name="LOGIN" value="登録">
    <input type="reset" name="reset" value="リセット">
    </form>
   <p><a href="/d-suppo/LoginServlet">ログイン画面へ戻る</a></p>
</body>
</html>