<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>�ۂސl�p��Č��ʕ\���y�[�W</title>
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
			�@ �r�[���ɂ������߁I
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==1}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ ���{���ɂ������߁I
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==2}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ ���Ē��ɂ������߁I
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==3}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ ���Ē��ɂ������߁I
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==4}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ �ԃ��C���ɂ������߁I
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==5}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ �����C���ɂ������߁I
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==6}">
			   <c:if  test = "${status.index%3 == 0}">
			   �������T���[�ɂ������߁I
			    </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==7}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ �~���ɂ������߁I
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==8}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ �n�C�{�[���ɂ������߁I
			   </c:if>
			  </c:when>
			  <c:when test="${recresult.alc==9}">
			   <c:if  test = "${status.index%3 == 0}">
			�@ �J�N�e���ɂ������߁I
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
		<a href="/d-suppo/MenuServlet"><button>�߂�</button></a>
   </div>
	</body>
	<div id="footer">
	  <marquee>&copy;�Ȃ񂩂��ꂽ��</marquee>
	</div>
</html>