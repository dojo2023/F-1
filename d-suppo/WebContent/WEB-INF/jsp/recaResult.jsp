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
		    
		   <c:if  test = "${status.index%3 == 0}">
			<div class="container">
		 </c:if>

			 <c:choose>
			  <c:when test="${recresult.alc == 0}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">ビールにおすすめ！</div>
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==1}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">日本酒におすすめ！</div>
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==2}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext"> 芋焼酎におすすめ！</div>
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==3}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">麦焼酎におすすめ！</div>
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==4}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">赤ワインにおすすめ！</div>
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==5}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">白ワインにおすすめ！</div>
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==6}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">レモンサワーにおすすめ！</div>
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==7}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">梅酒におすすめ！</div>
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==8}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">ハイボールにおすすめ！</div>
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==9}">
			   <c:if  test = "${status.index%3 == 0}">
				<div class="diettext">カクテルにおすすめ！</div>
			   </c:if>
			</c:when>
		     </c:choose>
		     
		<c:if  test = "${status.index%3 == 0}">
		   <div class="item">
		</c:if>
			    <div class="dietpic">
					<p><c:out value="${recresult.dietname}"/></p>
			    <img src = "${recresult.dietpic}">
			</div>

   			    <c:if  test = "${status.index%3 == 2}">
	   			    <div class="kaigyou">
	   			    	<p> </p>
	   			    </div>
			    </c:if>
		<c:if  test = "${status.index%3 == 2}">
			</div>
		</c:if>	

		<c:if  test = "${status.index%3 == 2}">
			</div>
		 </c:if>

		  </c:forEach>
		  </div>
		<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
   </div>
	</body>
	<div id="footer">
	  <marquee>&copy;なんかいれたい</marquee>
	</div>
</html>