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
<link rel="stylesheet" type="text/css" href="./css/dsresult.css">
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

<div class = content>
  		<form method="POST"  action="/d-suppo/DsUpdateServlet" enctype="multipart/form-data">
			<ul>
  			<!--カレンダーを押した年月日を持ってくる-->
			  <li class = "formday" >
  			<span><%=year%>年<%=month%>月<%=date%>日</span>
			  </li>
  			<li>
				<label>時間帯</label>
  			<select name="TIMESLOT" >
    			<option value="0">-選択してください-</option>
    			<option value="1">朝</option>
   				<option value="2">昼</option>
   				 <option value="3">夜</option>
    			<option value="4">間食</option>
			</select>
			</li>
			<li >
			<label >食事内容</label>
  				<input type="text" name="DIETNAME">&nbsp;
			</li>
			<li>
			<label>カロリー</label>
  				<input type="number" name="CALORIE">kcal&nbsp;
			</li>
			<li>
			<label>食費</label>
  				<input type="number" name="DIETCOST">円&nbsp;
  			</li>

  			<input type="hidden" name="WEIGHT" value="10">
			<input type="hidden" name="DATE" value=<%=date %>>
			<input type="hidden" name="MONTH" value=<%=month %>>
			<input type="hidden" name="YEAR" value=<%=year %>>
			<li>
			<label>好きな写真:</label><input type="file" name="pict"  >
			</li>
  			<br>
			<input class="button" type="submit"  value="送信" >
		</ul>
		</form>
      </div>
  		<br><br>
	<div class = content>
  		<c:forEach var="e" items="${dsList}" >
			<form method="POST" action="/d-suppo/DeleteDsServlet" >
					<c:choose>
			  			<c:when test="${e.TIMESLOT == 0}">
			  				<div class="diettext">未入力</div><br>
			  			</c:when>
   						<c:when test="${e.TIMESLOT == 1}">
			  				<div class="diettext">朝</div><br>
			  			</c:when>
			  			<c:when test="${e.TIMESLOT == 2}">
			  				<div class="diettext">昼</div><br>
			  			</c:when>
			  			<c:when test="${e.TIMESLOT == 3}">
			  				<div class="diettext">夜</div><br>
			  			</c:when>
			  			<c:when test="${e.TIMESLOT == 4}">
			  				<div class="diettext">間食</div><br>
			  			</c:when>
   					</c:choose>
	   				<img src=" ${'./upload/' +=e.UPLOADIMG}"><br>
	   				<label>食事内容:</label>
	   				<input type="text" name="DIETNAME" value="${e.DIETNAME}"><br>
	   				<label>カロリー:</label>
	  				<input type="text" name="CALORIE" value ="${e.CALORIE}" >kcal<br>
	  				<label>食費:</label>
	  				<input type="text" name="DIETCOST" value ="${e.DIETCOST }" >円
	  				<input type="hidden" name="NUM" value="${e.NUM}" >

	  				<input type="hidden" name="DATE" value=<%=date %> >
					<input type="hidden" name="MONTH" value=<%=month %> >
					<input type="hidden" name="YEAR" value=<%=year %> >

  					<input class="button"  type="submit" value="削除" >
		</form>
		</c:forEach>
</div>
  		<a href="/d-suppo/DsServlet" ><button>戻る</button></a>


  <!--上メニュー、下-->

		<div id="footer">
			<marquee>&copy;なんかいれたい</marquee>
		</div>

	</div>
</body>

</html>