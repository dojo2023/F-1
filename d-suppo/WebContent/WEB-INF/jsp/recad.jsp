<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	 	<meta charset="UTF-8">
		<title>お酒質問</title>
		<link rel="stylesheet" type="text/css" href="./css/rec.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
	   <div>
			<div class="wrapper">
				<div>
					<p>お酒を呑みたい気分ですか？</p>
				</div>
				<div>
					<a href="/d-suppo/RecaServlet"><button type="button">呑む</button></a>
					<a href="/d-suppo/RecdServlet"><button type="button">呑まない</button></a>
				</div>
			</div>
			<div>
				<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
			</div>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
			<script src="./js/recdjs.js"></script>
			<script src="./js/recdjq.js"></script>
	 	</div>
	</body>
	<div id="footer">
	    <marquee>&copy;なんかいれたい</marquee>
    </div>
</html>