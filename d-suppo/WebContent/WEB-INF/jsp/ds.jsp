<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>カレンダーサンプル</title>
<link rel="stylesheet" type="text/css" href="./css/ds.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <h1 id ="logo"><a href="/d-supooca.html" alt="メニュー"><img src="./img/title.png" width="300"  alt="管理ページ"></a></h1>

    <ul id="nav">
        <li><a href="/d-suppo/RecServlet">(試作1) 提案ページ</a></li>
        <li><a href="/d-suppo/DsServlet">(試作2) 管理ページ</a></li>
        <li><a href="/d-suppo/ChengePwServlet">(3)PW変更</a></li>
        <li><a href="/d-suppo/LogoutServlet">ログアウト</a></li>
    </ul>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head><!--フォーム仮-->
<body>
<form method="POST" action="/d-suppo/ResultDsServlet" name="dsform">
    <input type="hidden" id="text1" name="date" value="">
    <input type="hidden" id="text2"  name="month" value="" >
    <input type="hidden" id="text3" name="year" value="" >
</form>

<div class="container-calendar">
    <h4 id="monthAndYear"></h4>
    <div class="button-container-calendar">
        <button id="previous" onclick="previous()" >‹</button>
        <button id="next" onclick="next()" >›</button>
    </div>

    <table class="table-calendar" id="calendar" data-lang="ja">
        <thead id="thead-month"></thead>
        <tbody id="calendar-body"></tbody>
    </table>

    <div class="footer-container-calendar">
        <label for="month">日付指定：</label>
        <select id="month" onchange="jump()">
            <option value=0>1月</option>
            <option value=1>2月</option>
            <option value=2>3月</option>
            <option value=3>4月</option>
            <option value=4>5月</option>
            <option value=5>6月</option>
            <option value=6>7月</option>
            <option value=7>8月</option>
            <option value=8>9月</option>
            <option value=9>10月</option>
            <option value=10>11月</option>
            <option value=11>12月</option>
        </select>
        <select id="year" onchange="jump()"></select>
    </div>
</div>



<script src="./js/dsjs.js"></script>
<script src="./js/dsjq.js"></script>
</body>