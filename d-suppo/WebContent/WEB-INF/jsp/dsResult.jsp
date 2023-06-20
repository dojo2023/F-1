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
			<li><a href="/d-suppo/ChengePwServlet">(3)pw変更</a></li>
			<li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>
  		</ul>

  		<form method="POST" action="/d-suppo/DsUpdateServlet">

  			<!--カレンダーを押した年月日を持ってくる-->
  			<label>xxxx年xx月xx日</label>

  			<div>
  				<label>時間帯</label>
  				<label>食事内容</label>
  				<label>カロリー</label>
  				<label>食費</label>
  			</div>

  			<div>
  				<label>朝</label>
  				<input type="text" name="DIETNAME">
  				<input type="number" name="CALORIE">kcal
  				<input type="number" name="DIETCOST">円
  			</div>

  			<div>
  				<label>昼</label>
  				<input type="text" name="DIETNAME">
  				<input type="number" name="CALORIE">kcal
  				<input type="number" name="DIETCOST">円
  			</div>

  			<div>
  				<label>夜</label>
  				<input type="text" name="DIETNAME">
  				<input type="number" name="CALORIE">kcal
  				<input type="number" name="DIETCOST">円
  			</div>

  			<div>
  				<label>間食</label>
  				<input type="text" name="DIETNAME">
  				<input type="number" name="CALORIE">kcal
  				<input type="number" name="DIETCOST">円
  			</div>

  			<div>
  				<label>今日の体重</label>
  				<input type="number" name="WEIGHT">kg
  			</div>


  			<br>
			<input type="submit" value="送信">
  		</form>

  		<a href="/d-suppo/DsServlet"><button>戻る</button></a>


  <!--上メニュー、下-->

		<div id="footer">
			<marquee>&copy;なんかいれたい</marquee>
		</div>

	</div>
</body>

</html>