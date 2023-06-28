<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String)request.getAttribute("name");
	String word=(String)request.getAttribute("word");
	String filename=(String)request.getAttribute("filename");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileupload</title>
<style type="text/css">
body {
  margin: 0 0 0 0;		/* マージンなし（後で個別に設定） */
  padding: 0 0 0 0;		/* パディングなし（後で個別に設定） */
  color: black;
  font-size: 16px;
  text-align:center;
  background-color: #E2FFF7;
}

/* wrapperクラス */
.wrapper {
  margin: 0px auto;	/* 中央揃え */
  max-width: 960px;	/* 幅を固定 */
  padding: 10px;
  overflow:hidden;
}

img{
margin: 0 auto 0 auto;
max-width: 80%;
}
</style>
</head>
<body>
<div class="wrapper">
<p>名前:<%=name %></p>
<p>好きな言葉:<%=word %></p>
<p>好きな写真:<br><img src="./upload/<%=filename %>"></p>
</div>
</body>
<div id="footer">
			<marquee>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</marquee>
		</div>
</html>