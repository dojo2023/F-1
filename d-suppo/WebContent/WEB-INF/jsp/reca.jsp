<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>吞む人用ページ</title>
<link rel="stylesheet" type="text/css" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<p>呑む人用</p>
<p>お酒の種類は？</p>
<form method="POST" action="/d-suppo/RecaServlet">
<!-- 呑む人 = 0 -->
	<input type = "hidden" name = "DRINK" value = "0">

<input type="checkbox" name="ALC[]" value="0">ビール
<input type="checkbox" name="ALC[]" value="1">日本酒
<input type="checkbox" name="ALC[]" value="2">焼酎
<input type="checkbox" name="ALC[]" value="3">赤ワイン
<input type="checkbox" name="ALC[]" value="4">白ワイン
<input type="checkbox" name="ALC[]" value="5">チューハイ
<input type="checkbox" name="ALC[]" value="6">梅酒
<input type="checkbox" name="ALC[]" value="7">ハイボール
<input type="checkbox" name="ALC[]" value="8">カクテル
<br>
<p>食事の系統は？</p>
<input type="radio"  name="CATEGORY[]" value="0" checked>がっつり
<input type="radio" name="CATEGORY[]" value="1">さっぱり
<input type="radio" name="CATEGORY[]" value="2">おつまみ系
<input type="radio" name="CATEGORY[]" value="3">甘いもの
<br>
<input type="submit" value="送信">

</form>
<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
</body>
<div id="footer">
    <marquee>&copy;なんかいれたい</marquee>
  </div>
</html>