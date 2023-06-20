<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>提案結果表示ページ</title>
		<link rel="stylesheet" type="text/css" href="./css/recd.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>

	<body>
	    <div  class="diet">
	     <div>
	      <table>
	       <tr>
		    <c:forEach var="recresult"  items="${cardList}">
			 <td><c:out value="${recresult.dietname}" /></td>
			 <td class="diettd"><img src = "${recresult.dietpic}" class="dietpic"></td>
		   <tr>
		    </c:forEach>
		  </table>
		 </div>
	     <div>
		  <a href="/d-suppo/MenuServlet"><button>戻る</button></a>
	     </div>
        </div>
	</body>

	<div id="footer">
	  <marquee>&copy;なんかいれたい</marquee>
	</div>
</html>