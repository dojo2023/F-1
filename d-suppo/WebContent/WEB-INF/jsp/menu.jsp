<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインメニュー(試作)</title>
<link rel="stylesheet" type="text/css" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="wrapper">
<h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./img/title.png" width="300"  alt="試作"></a></h1>

  <ul id="nav">
<li><a href="/d-suppo/RecServlet">(試作1) 提案ページ</a></li>
<li><a href="/d-suppo/DsServlet">(試作2) 管理ページ</a></li>
<li><a href="/d-suppo/ChengePwServlet">(3)枠余り</a></li>
<li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>

  </ul>
  <!--上メニュー、下-->

  <div id="footer">
    <marquee>&copy;なんかいれたい</marquee>
  </div>
</div>
</body>
</html>