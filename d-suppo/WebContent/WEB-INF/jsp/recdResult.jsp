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
	<h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./image/title/title.png" width="200"  alt="試作"></a></h1>
  <ul id="nav">
	<li><a href="/d-suppo/RecServlet" class="btn btn-3d-flip btn-3d-flip2">
  	 <span class="btn-3d-flip-box2">
     <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">(試作1) 提案ページ<i class="fas fa-angle-right fa-position-right"></i></span>
     <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">お酒と食事の提案をします<i class="fas fa-angle-right fa-position-right"></i></span>
  	 </span></a>
	</li>
	<li>
	<a href="/d-suppo/DsServlet" class="btn btn-3d-flip btn-3d-flip2">
  	<span class="btn-3d-flip-box2">
    <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">(試作2) 管理ページ<i class="fas fa-angle-right fa-position-right"></i></span>
    <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">食事の管理ができます<i class="fas fa-angle-right fa-position-right"></i></span>
  	</span></a>
 	</li>
	<li>
 	 <a href="/d-suppo/ChengePwServlet" class="btn btn-3d-flip btn-3d-flip2">
  	 <span class="btn-3d-flip-box2">
     <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">pw変更<i class="fas fa-angle-right fa-position-right"></i></span>
     <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">パスワードの変更ができます<i class="fas fa-angle-right fa-position-right"></i></span>
     </span></a>
	</li>
	<li>
	 <a href="/d-suppo/LogoutServlet" class="btn btn-3d-flip btn-3d-flip2">
  	 <span class="btn-3d-flip-box2">
     <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">ログアウト<i class="fas fa-angle-right fa-position-right"></i></span>
     <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">ログアウトします<i class="fas fa-angle-right fa-position-right"></i></span>
     </span></a>
	</li>
	<li>
	 <a href="/d-suppo/UploadServlet" class="btn btn-3d-flip btn-3d-flip2">
  	 <span class="btn-3d-flip-box2">
     <span class="btn-3d-flip-box-face btn-3d-flip-box-face--front2">試作3,画像<i class="fas fa-angle-right fa-position-right"></i></span>
     <span class="btn-3d-flip-box-face  btn-3d-flip-box-face--back2">側面です<i class="fas fa-angle-right fa-position-right"></i></span>
  	 </span></a>
	</li>
 </ul>
<div>
 <div class="diettable">
  <c:forEach var="recresult"  items="${cardList}"  varStatus = "status" >
   <c:if  test = "${status.index%3 == 0}">
    <div class="container">
   </c:if>
   <c:choose>
	<c:when  test = "${status.index%3 == 0}">
	 <div class="diettext">提案結果</div>
	</c:when>
   </c:choose>
   <c:if  test = "${status.index%3 == 0}">
    <div class="item">
   </c:if>
    <div class="dietpic">
     <p class="dietname"><c:out value="${recresult.dietname}"/></p>
     <img src = "${recresult.dietpic}">
    </div>
    <c:if  test = "${status.index%3 == 2}">
     </div>
    </c:if>
    <c:if  test = "${status.index%3 == 2}">
     </div>
    </c:if>
  </c:forEach>
 </div>

 <div>
  <a href="/d-suppo/RecdServlet"><button>質問画面へ戻る</button></a>
  <a href="/d-suppo/MenuServlet"><button>メニューへ戻る</button></a>
 </div>
</body>

	<div id="footer">
	  <marquee>&copy;なんかいれたい</marquee>
	</div>
</html>