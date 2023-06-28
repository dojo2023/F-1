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
		<div class="wrapper">
			<h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/titlelg169.png" width="220"  alt="試作"></a></h1>

			<ul id="nav">
				<li><a href="/d-suppo/RecServlet">(試作1) 提案ページ</a></li>
				<li><a href="/d-suppo/DsServlet">(試作2) 管理ページ</a></li>
				<li><a href="/d-suppo/ChengePwServlet">(3)pw変更</a></li>
				<li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>

			</ul>
			<div"> 
			<div class="alcq">
			<div>
			<img src="./image/title/yajileft.png" width="50" >
			<span class="question">お酒を呑みたい気分ですか？</span>
			<img src="./image/title/yajiright.png" width="50">
			</div>
			</div>
			
				<a href="/d-suppo/RecaServlet" class="btn btn-malformation">呑む</a>
				<a href="/d-suppo/RecdServlet" class="btn btn-malformation">呑まない</a>

		</div>

		<div>
			<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
		</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="./js/recdjs.js"></script>
		<script src="./js/recdjq.js"></script>
	</body>
	<div id="footer">
		<marquee>&copy;なんかいれたい</marquee>
	</div>
</html>