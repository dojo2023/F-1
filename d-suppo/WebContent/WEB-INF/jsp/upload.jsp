<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<form action="/d-suppo/UploadServlet" method="post" enctype="multipart/form-data">
名前:<input type="text" name="name"><br>
好きな言葉:<input type="text" name="word"><br>
好きな写真:<input type="file" name="pict"><br>
<button type="submit">送信</button>
</form>
</body>
<div id="footer">
			<p>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</p>
		</div>
</html>