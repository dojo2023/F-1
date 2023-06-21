<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>呑む人用提案結果表示ページ</title>
		<link rel="stylesheet" type="text/css" href="./css/reca.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
	    <div>
	     <div class="diettable">
		   <c:forEach var="recresult"  items="${cardList}"  varStatus = "status" >
		    <div class="diettext">
			 <c:choose>
			  <c:when test="${recresult.alc == 0}">
			   <c:if  test = "${status.index%3 == 0}">
			　 ビールにおすすめ！
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==1}">
			   <c:if  test = "${status.index%3 == 0}">
			　 日本酒におすすめ！
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==2}">
			   <c:if  test = "${status.index%3 == 0}">
			　 芋焼酎におすすめ！
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==3}">
			   <c:if  test = "${status.index%3 == 0}">
			　 麦焼酎におすすめ！
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==4}">
			   <c:if  test = "${status.index%3 == 0}">
			　 赤ワインにおすすめ！
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==5}">
			   <c:if  test = "${status.index%3 == 0}">
			　 白ワインにおすすめ！
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==6}">
			   <c:if  test = "${status.index%3 == 0}">
			   レモンサワーにおすすめ！
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==7}">
			   <c:if  test = "${status.index%3 == 0}">
			　 梅酒におすすめ！
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==8}">
			   <c:if  test = "${status.index%3 == 0}">
			　 ハイボールにおすすめ！
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==9}">
			   <c:if  test = "${status.index%3 == 0}">
			　 カクテルにおすすめ！
			   </c:if>
			</c:when>
		     </c:choose>
		     </div>
		     
		   <div class="item">
		    <div><c:out value="${recresult.dietname}"/></div>
		    <div class="dietpic"><img src = "${recresult.dietpic}"></div>
		    </div>
		  </c:forEach>
		  </div>
		<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
   </div>
	</body>
	<div id="footer">
	  <marquee>&copy;なんかいれたい</marquee>
	</div>
</html>