<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PW更新ページ(試作)</title>
</head>
<body>
<p>PW更新ページ(試作)</p>
<div class="wrapper">
    <h1 id ="logo"><a href="/d-suppo/MenuServlet" alt="メニュー"><img src="./img/title.png" width="300"  alt="試作"></a></h1>

    <ul id="nav">
    <li><a href="/d-suppo/RecServlet">(試作1) 提案ページ</a></li>
    <li><a href="/d-suppo/DsServlet">(試作2) 管理ページ</a></li>
    <li><a href="/d-suppo/ChengePwServlet">PW変更</a></li>
    <li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>
    </ul>

    <form method="POST" action="/d-suppo/ChengePwServlet">
    現在のPW<input type="password" name="PWNow"><br>
    <br>
    新しいPW<input type="password" name="PWNew"><br>
    <input type="submit" name="LOGIN" value="更新">
    </form>
   <br>
   <p>アカウント削除</p>
   <form method="POST" action="/d-suppo/DeletePwServlet">
    現在のPW<input type="password" name="PW"><br>
    <br>
    <input type="submit" name="LOGIN" value="削除">
</form>
<p><a href="/d-suppo/MenuServlet">メニュー画面へ戻る</a></p>

</div>
</body>
</html>