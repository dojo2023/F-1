<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>吞まない人用ページ</title>
<link rel="stylesheet" type="text/css" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<p>呑まない人用</p>
<div class="wrapper">
<form method="POST" action="/d-suppo/RecdServlet" id="recd-form" name="recdform">
    <!-- 呑まない人 = 1 -->
    <div class="form-check">
        <input class="form-check-input" type="radio" name="maker" value="genre" id="check1" onclick="formSwitch()" checked>
        <label class="form-check-label"> ジャンルから選ぶ</label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="maker" value="dish" id="check2" onclick="formSwitch()">
        <label class="form-check-label"> メインから選ぶ</label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="maker" value="harvest" id="check3" onclick="formSwitch()">
        <label class="form-check-label"> 主食から選ぶ</label>
    </div>


  <div id="genreList">
    <div class="form-check">
      <input class="form-check-input" type="radio" value="0" id="和食" name="genre[]" >
      <label class="form-check-label">和食</label>
    </div>
    <div class="form-check">
     <input class="form-check-input" type="radio" value="1" id="洋食" name="genre[]">
      <label class="form-check-label">洋食</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" value="2" id="中華" name="genre[]">
      <label class="form-check-label">中華</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="hidden" value="5" class="ダミー" name="genre[]" checked>
    </div>
</div>


<div id="dishList">
    <div  class="form-check">
      <input class="form-check-input" type="radio" value="0" id="肉メイン" name="dish[]">
      <label class="form-check-label">肉メイン</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" value="1" id="魚メイン" name="dish[]">
      <label class="form-check-label">魚メイン</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" value="2" id="野菜メイン" name="dish[]">
      <label class="form-check-label">野菜メイン</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="hidden" value="5" class="ダミー" name="dish[]" checked>
    </div>
</div>

<div id="havList">
    <div class="form-check">
      <input class="form-check-input" type="radio" value="0" id="パン" name="harvest[]">
      <label class="form-check-label">パン</label>
    </div>
    <div class="form-check">
      <input class="form-check-input"  type="radio" value="1" id="米" name="harvest[]">
      <label class="form-check-label">米</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" value="2" id="麺" name="harvest[]">
      <label class="form-check-label">麺</label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="hidden" value="5" class="ダミー" name="harvest[]" checked>
    </div>
</div>

<div>
<input type="submit" value="送信">
</div>
  </form>
  <div>
<a href="/d-suppo/MenuServlet"><button>戻る</button></a>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="./js/recdjs.js"></script>

</body>
<div id="footer">
    <marquee>&copy;なんかいれたい</marquee>
  </div>
</html>