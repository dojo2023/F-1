<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>お酒質問</title>
		<link rel="stylesheet" type="text/css" href="./css/recad.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
<h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/titlelg169.png" width="220"  alt="試作"><img src="./image/title/titlelgB169.png" width="220"  alt="試作"></a></h1>
<nav class="menu">
 <ul>
  <li><a href="/d-suppo/RecServlet" class="btn btn-3d-flip btn-3d-flip2">
   <span class="btn-3d-flip-box2">
   <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">提案ページ<i class="fas fa-angle-right fa-position-right"></i></span>
   <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">お酒と食事の提案をします<i class="fas fa-angle-right fa-position-right"></i></span>
   </span></a>
  </li>
  <li>
   <a href="/d-suppo/DsServlet" class="btn btn-3d-flip btn-3d-flip2">
   <span class="btn-3d-flip-box2">
   <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">管理ページ<i class="fas fa-angle-right fa-position-right"></i></span>
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
<br>
<div class="wrapper">
<div class="alcq">
<span class="question">お酒を呑みたい気分ですか？</span>
</div>
<br>
 <a href="/d-suppo/RecaServlet" class="btn btn-malformation">呑む</a>
 <a href="/d-suppo/RecdServlet" class="btn btn-malformation">呑まない</a>
</div>

<br>
<div>
	<a href="/d-suppo/MenuServlet"><button class="back">戻る</button></a>
</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="./js/recdjs.js"></script>
		<script src="./js/recdjq.js"></script>
	</body>
<footer>
<div id="footer">
	<p>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</p>
</div>
</footer>
</html>