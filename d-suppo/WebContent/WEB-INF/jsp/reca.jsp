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
		<div>
			<p>お酒の種類は？</p>
		</div>
		<form method="POST" action="/d-suppo/RecaServlet">
			<div>
				<!-- 呑む人 = 0 -->
				<input type = "hidden" name = "DRINK" value = "0">
				
				<div>
					<input type="checkbox"  class="alcCheck" name="ALC[]" value="0">ビール
					<input type="checkbox" class="alcCheck" name="ALC[]" value="1">日本酒
					<input type="checkbox" class="alcCheck" name="ALC[]" value="2">芋焼酎
					<input type="checkbox" class="alcCheck" name="ALC[]" value="3">麦焼酎
					<input type="checkbox" class="alcCheck" name="ALC[]" value="4">赤ワイン
					<input type="checkbox" class="alcCheck" name="ALC[]" value="5">白ワイン
					<input type="checkbox" class="alcCheck" name="ALC[]" value="6">レモンサワー
					<input type="checkbox" class="alcCheck" name="ALC[]" value="7">梅酒
					<input type="checkbox" class="alcCheck" name="ALC[]" value="8">ハイボール
					<input type="checkbox" class="alcCheck" name="ALC[]" value="9">カクテル
				</div>
				<br>
				<div>
					<p>食事の系統は？</p>
				</div>
				<div>
					<input type="radio"  name="CATEGORY[]" value="0" checked>がっつり
					<input type="radio" name="CATEGORY[]" value="1">さっぱり
					<input type="radio" name="CATEGORY[]" value="2">おつまみ系
					<input type="radio" name="CATEGORY[]" value="3">デザート
				</div>
				<br>
				<div>
					<input type="submit" value="送信" onClick="return isCheck()">
				</div>
			</div>	
		</form>
		<div>
			<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="./js/recajs.js"></script>
	
	</body>
	<div id="footer">
	    <marquee>&copy;なんかいれたい</marquee>
	</div>
</html>