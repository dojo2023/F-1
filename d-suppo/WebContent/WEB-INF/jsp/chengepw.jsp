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
<p>PW更新ページ(試作)</p>
<div class="wrapper">
    <h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/titlelg169.png" width="220"  alt="試作"></a></h1>

    <ul id="nav">
    <li><a href="/d-suppo/RecServlet">(試作1) 提案ページ</a></li>
    <li><a href="/d-suppo/DsServlet">(試作2) 管理ページ</a></li>
    <li><a href="/d-suppo/ChengePwServlet">PW変更</a></li>
    <li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>
    </ul>
    
    
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
</html>