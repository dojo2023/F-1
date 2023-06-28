<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PW更新ページ(試作)</title>
<link rel="stylesheet" type="text/css" href="./css/chengepw.css">
</head>
<body>
    <h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/titlelg169.png" width="220"  alt="試作"></a></h1>

<nav class="menu">
 <ul>
  <li>
   <a href="/d-suppo/RecServlet" class="btn btn-3d-flip btn-3d-flip2">
   <span class="btn-3d-flip-box2">
   <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">(試作1) 提案ページ<i class="fas fa-angle-right fa-position-right"></i></span>
   <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">お酒と食事の提案をします<i class="fas fa-angle-right fa-position-right"></i></span>
   </span></a>
  </li>
  <li>
   <a href="/d-suppo/DsServlet" class="btn btn-3d-flip btn-3d-flip2">
   <span class="btn-3d-flip-box2">
   <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">(試作2) 管理ページ<i class="fas fa-angle-right fa-position-right"></i></span>
   <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">食事の管理ができます<i class="fas fa-angle-right fa-position-right"></i></span>
   </span></a>
  </li>
  <li>
   <a href="/d-suppo/ChengePwServlet" class="btn btn-3d-flip btn-3d-flip2">
   <span class="btn-3d-flip-box2">
   <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">pw変更<i class="fas fa-angle-right fa-position-right"></i></span>
   <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">パスワードの変更ができます<i class="fas fa-angle-right fa-position-right"></i></span>
   </span></a>
  </li>
  <li>
   <a href="/d-suppo/LogoutServlet" class="btn btn-3d-flip btn-3d-flip2">
   <span class="btn-3d-flip-box2">
   <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">ログアウト<i class="fas fa-angle-right fa-position-right"></i></span>
   <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">ログアウトします<i class="fas fa-angle-right fa-position-right"></i></span>
   </span></a>
  </li>
 </ul>
</nav>

<div class="login">
 <div class="login-triangle"></div>
  <h2 class="login-header">PW変更</h2>
  <form class="login-container" method="POST" action="/d-suppo/ChengePwServlet">
    <p><input type="password" placeholder="現在のPW" name="PWNow"></p>
    <p><input type="password" placeholder="新しいPW" name="PWNew"></p>
    <p><input type="submit" name="LOGIN" value="更新"></p>
  </form>
</div>

<br>
<div class="login">
<div class="login-triangle"></div>
  <h2 class="login-header">アカウント削除</h2>
  <form class="login-container" method="POST" action="/d-suppo/DeletePwServlet">
    <p><input type="password" placeholder="現在のPW" name="PW"></p>
    <p><input type="submit" name="LOGIN" value="削除"></p>
  </form>
</div>
<br>
	<a href="/d-suppo/MenuServlet" class="btn btn-3d-flip btn-3d-flip2">
  <span class="btn-3d-flip-box2">
    <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">メニュー画面
    <i class="fas fa-angle-right fa-position-right"></i></span>
    <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">メニュー画面へ戻る
    <i class="fas fa-angle-right fa-position-right"></i></span>
  </span>
</a>

</div>
</body>
<div id="footer">
			<p>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</p>
		</div>
</html>