<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>提案結果表示ページ</title>
		<link rel="stylesheet" type="text/css" href="./css/reca.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
	    <div class="diet">
	     <div>
	      <table>
		   <c:forEach var="recresult"  items="${cardList}"  varStatus = "status" >
			<tr>	
			 <td>
			 <c:choose>
			  <c:when test="${recresult.alc == 0}">
			   <c:when  test = "${status.index%3 == 0}">
			　 ビールにおすすめ！
			   </c:when>
			  </c:when>
			  <c:when test="${recresult.alc==1}">
			　 日本酒におすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==2}">
			　 芋焼酎におすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==3}">
			　 麦焼酎におすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==4}">
			　 赤ワインにおすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==5}">
			　 白ワインにおすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==6}">
			   レモンサワーにおすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==7}">
			　 梅酒におすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==8}">
			　 ハイボールにおすすめ！
			  </c:when>
			  <c:when test="${recresult.alc==9}">
			　 カクテルにおすすめ！
			</c:when>
		     </c:choose>
		    </td>
		    <td><c:out value="${recresult.dietname}"/></td>
		    <td class="diettd"><img src = "${recresult.dietpic}" class="dietpic"></td>
		    </tr>
		  </c:forEach>
		</table>
		<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
	    </div>

   </div>
	</body>
	<div id="footer">
	  <marquee>&copy;なんかいれたい</marquee>
	</div>
</html>