<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- style="zoom:67%" -->
<head>
<meta charset="UTF-8">
<title>メインメニュー(試作)</title>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<link rel="stylesheet" type="text/css" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="wrapper">
<h1 id ="logo">
  <a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/titlelg169.png" width="220"  alt="試作"></a>
</h1>
<nav class="menu">
 <ul>
  <li>
   <a href="/d-suppo/RecServlet" class="btn btn-3d-flip btn-3d-flip2">
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
<!--スライドショー-->
<div class ="bird">
  <div id ="tori1" class ="torinone">
    <img class="freezeframe" src="./image/title/parrot.gif" >
  </div>
  <div id ="tori2" class ="torinone">
    <img class="freezeframe" src="./image/title/parrot.gif" >
  </div>
  <div id ="tori3" class ="torinone">
    <img class="freezeframe" src="./image/title/reverseparrot.gif" >
  </div>
  <div id ="tori4" class ="torinone">
    <img class="freezeframe" src="./image/title/reverseparrot.gif">
  </div>
</div>



<div class="container">
  <div class="swiper infinite-slider">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img src="./image/swiper/beer.jpg" alt="画像1" /></div>
      <div class="swiper-slide"><img src="./image/swiper/cocktail.jpg" alt="画像2" /></div>
      <div class="swiper-slide"><img src="./image/swiper/lemonsour.jpg" alt="画像3" /></div>
      <div class="swiper-slide"><img src="./image/swiper/plumwine.jpg" alt="画像4" /></div>
      <div class="swiper-slide"><img src="./image/swiper/sake.jpg" alt="画像5" /></div>
      <div class="swiper-slide"><img src="./image/swiper/shochu.jpg" alt="画像6" /></div>
      <div class="swiper-slide fb"><img src="./image/swiper/wine.jpg" alt="画像7" /></div>
    </div>
  </div>
</div>

  <!--上メニュー、下-->
  <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
  <script src="./js/freezeframe.min.js"></script>
  <script src="./js/menujs.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="./js/menujq.js"></script>
  <script src="./js/menufreeze.js"></script>


</body>
<div id="footer">
			<p>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</p>
		</div>
</html>