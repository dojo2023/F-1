<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String date=(String)request.getAttribute("date");
	String month=(String)request.getAttribute("month");
	String year=(String)request.getAttribute("year");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインメニュー(試作)</title>
<link rel="stylesheet" type="text/css" href="./css/menu.css">
<style type="text/css">
@charset "UTF-8";

 * {
    outline: 1px solid #ff6666;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="wrapper">
		<h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/title.png" width="150"  alt="試作"></a></h1>

		<ul id="nav">
			<li><a href="/d-suppo/RecServlet">(試作1) 提案ページ</a></li>
			<li><a href="/d-suppo/DsServlet">(試作2) 管理ページ</a></li>
			<li><a href="/d-suppo/ChengePwServlet">(3)pw変更</a></li>
			<li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>
  		</ul>

<div class = content>
  		<form method="POST" action="/d-suppo/DsUpdateServlet" enctype="multipart/form-data">

  			<!--カレンダーを押した年月日を持ってくる-->
  			<label><%=year%>年<%=month%>月<%=date%>日</label>

  			<div>
  				<label>時間帯</label>
  				<label>食事内容</label>
  				<label>カロリー</label>
  				<label>食費</label>
  			</div>
  			<div>

  			<select name="TIMESLOT">
    			<option value="0">-選択してください-</option>
    			<option value="1">朝</option>
   				<option value="2">昼</option>
   				 <option value="3">夜</option>
    			<option value="4">間食</option>
			</select>

  				<input type="text" name="DIETNAME">
  				<input type="number" name="CALORIE">kcal
  				<input type="number" name="DIETCOST">円
  			</div>

  			<div>
  				<label>今日の体重</label>
  				<input type="number" name="WEIGHT">kg
  			</div>
			<input type="hidden" name="DATE" value=<%=date %>>
			<input type="hidden" name="MONTH" value=<%=month %>>
			<input type="hidden" name="YEAR" value=<%=year %>>
			<br>好きな写真:<input type="file" name="pict">
  			<br>
			<input type="submit" value="送信">
  		</form>
  		</div>

  		<br><br>
	<div class = content>
  		<c:forEach var="e" items="${dsList}" >
			<form method="POST" action="/d-suppo/MenuServlet"enctype="multipart/form-data"> <!--  urlはダミー -->
   				<input type="text" name="DIETNAME" value="${e.DIETNAME}"><br>
  				<input type="text" name="CALORIE" value ="${e.CALORIE}">kcal<br>
  				<input type="text" name="DIETCOST" value ="${e.DIETCOST }">円<br>
  				<img src=" ${'./upload/' +=e.UPLOADIMG}">
  				<input type="submit" value="送信">
		</form>
		</c:forEach>
</div>
  		<a href="/d-suppo/DsServlet"><button>戻る</button></a>


  <!--上メニュー、下-->

		<div id="footer">
			<marquee>&copy;なんかいれたい</marquee>
		</div>

	</div>
</body>

</html>