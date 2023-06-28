<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>吞む人用ページ</title>
		<link rel="stylesheet" type="text/css" href="./css/recaButton.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<form method="POST" action="/d-suppo/RecaServlet">
		<!-- 呑む人 = 0 -->
			<input type = "hidden" name = "DRINK" value = "0">

		<div>
			<p>お酒の種類は？</p>
		</div>

		<div class = "al_check">
			 <div class = "box">
				<input type="checkbox" class="alcCheck" id = "check1" name="ALC[]" value="0">
				<label for="check1">ビール</label>
				<input type="checkbox" class="alcCheck" id = "check2" name="ALC[]" value="1">
				<label for="check2">日本酒</label>
				<input type="checkbox" class="alcCheck" id = "check3" name="ALC[]" value="2">
				<label for="check3">芋焼酎</label>
				<input type="checkbox" class="alcCheck" id = "check4" name="ALC[]" value="3">
				<label for="check4">麦焼酎</label>
				<input type="checkbox" class="alcCheck" id = "check5" name="ALC[]" value="4">
				<label for="check5">赤ワイン</label>
			</div>
			<div class = "box">
				<input type="checkbox" class="alcCheck" id = "check6" name="ALC[]" value="5">
				<label for="check6">白ワイン</label>
				<input type="checkbox" class="alcCheck" id = "check7" name="ALC[]" value="6">
				<label for="check7">レモンサワー</label>
				<input type="checkbox" class="alcCheck" id = "check8" name="ALC[]" value="7">
				<label for="check8">梅酒</label>
				<input type="checkbox" class="alcCheck" id = "check9" name="ALC[]" value="8">
				<label for="check9">ハイボール</label>
				<input type="checkbox" class="alcCheck" id = "check10" name="ALC[]" value="9">
				<label for="check10">カクテル</label>
			 </div>
		</div>
		<br>
		<div>
			<p>食事の系統は？</p>
		</div>
			<div class="ad_radio">
				<div class = "box" style="display:inline-flex">
					<input type="radio"  id="radio1" name="CATEGORY[]" value="0" checked>
					<label for="radio1" >がっつり</label>
					<input type="radio" id="radio2" name="CATEGORY[]" value="1">
					<label for="radio2" >さっぱり</label>
					<input type="radio" id="radio3" name="CATEGORY[]" value="2">
					<label for="radio3" >おつまみ系</label>
					<input type="radio" id="radio4" name="CATEGORY[]" value="3">
					<label for="radio4" >デザート</label>
				</div>
			</div>
		<br>
		<div>
			<input type="submit" value="送信" class = "super" onClick="return isCheck()">
		</div>

		</form>
			<div class = "button">
				<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
			</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="./js/recajs.js"></script>

	</body>
		<div id="footer">
			<marquee>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</marquee>
		</div>
</html>