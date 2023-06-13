<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインメニュー(試作)</title>
<link rel="stylesheet" type="text/css" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="recresult" begin="1"
end="5" step="1">
<p>画像</p>
<c:out value="${reca.dietname}" />
<c:out value="${recd.dietname}" />
</c:forEach>
</body>
</html>