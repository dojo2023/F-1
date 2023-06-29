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
    var seconds = 300;
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
  <br>
  <div id="AA">
<pre style="font-size: 16px; line-height: 18px; font-family: Mona,IPAMonaPGothic,'IPA モナー Pゴシック','MS PGothic AA','MS PGothic','ＭＳ Ｐゴシック',sans-serif;">

　　　　　　　　　　　　　　　　　　　　　／´￣￣￣ ￣ ヽ
　　　　　　　　　　　　　　　　　　　 ／　　　　　　　　　　 ＼
　　　　　　 　 　 　 　 　 　 　 　 ／:::::　　　　　　　　　　 　 ＼　もう何も信じられないお…
　＿＿＿＿＿＿＿ +　 　 　 ／::::::::: 　　　　　　　 　 　 　 　 ヽ
　|ｉ:¨￣ ,、　　 ￣¨.: i 　 　 　 |:::::::::::　　　 　 　 　 　 　 　 　 　 |
　|i:　／ﾍ:＼　　 　 :i| 　 　 _　|::.:. : :　　 　 ,,ﾉ:..:ヾ、　　　　　　　|
　.|i:〈｀_､/´_｀>.、　 :i|　,.r:;'三ヽ:: :: .　ｰ'"´ 　 ,,､ 　ｰ‐‐,,　　 　 /｀､
　 |ii~~'､;'´`,'~,;~~~~:i|;ｲ:;:":::::::::::＼;;｡（ｰ一）　　　（ｰ一）｡;:;:. ／:::::　ヽ
　 |ｉ｀::;:':::::;::;:'::::::::::;.:i|`｡⌒/7, -──～ ､（___人___,）"⌒;;::／::|:::::〆::＼
　 |i::::::;:':::::::::::::::::::::::i| ::::://,::::..　 　 " ニﾆヽ､⌒ij~";_ ィ /:::::::|:::::〃::: : ヽ
─|｀ー＝===＝一 | ::::::|_|;;､:::._＿y-ﾆﾆ'ｰ-ｧ ﾟ‐─'───┴──────　‐
::::::｀ー―――‐一´
  </pre>
  </div>
</body>

<div id="footer">

			<p>&copy;Copyright 2023 F1 ネットワーク動物園. All rights reserved.</p>
		</div>
</html>
