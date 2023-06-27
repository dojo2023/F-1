<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録ページ(試作)</title>
<link rel="stylesheet" type="text/css" href="./css/resist.css">
</head>
<body>

    <a href="/d-suppo/MenuServlet"><img src="./image/title/titlelg169.png" width="170" class="logo"></a>

	<div class="login">
  <div class="login-triangle"></div>
  <h2 class="login-header">新規登録</h2>

  <form class="login-container" method="POST" action="/d-suppo/IdpwRegistServlet">
    <p><input type="text" placeholder="ID" name="ID"></p>
    <p><input type="password" placeholder="Password" name="PW"></p>

        <p><input type="submit" name="LOGIN" value="登録"></p>
    <p><input type="reset" name="reset" value="リセット"></p>
  </form>
</div>



<a href="/d-suppo/LoginServlet" class="btn btn-3d-flip btn-3d-flip2">
  <span class="btn-3d-flip-box2">
    <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">ログイン画面
    <i class="fas fa-angle-right fa-position-right"></i></span>
    <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">ログイン画面に戻る
    <i class="fas fa-angle-right fa-position-right"></i></span>
  </span>
</a>

</body>
</html>