<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
<link rel="stylesheet" type="text/css" href="./css/result.css">
</head>
<body>
  <h1>
    <c:out value="${result.title}" />
  </h1>
  <div id="countdown">
  </div>
  <script>
    var seconds = 3;
    window.onload = function () {
      var countdownElement = document.getElementById("countdown");
      function countdown() {
        countdownElement.innerHTML = seconds + "秒後に登録画面へ戻ります";
        seconds--;
        if (seconds < 0) {
        	window.location.href = "${result.backTo}";
        } else {
          setTimeout(countdown, 1000);
        }
      }
      countdown();
    };
  </script>
  <hr>
  <h2><c:out value="${result.message}" /></h2>
  <a href="${result.backTo}"><button>戻る</button></a>
</body>
<div id="footer">
			<p>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</p>
		</div>
</html>
