<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>吞まない人用ページ</title>
<link rel="stylesheet" type="text/css" href="./css/recd.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<p>呑まない人用</p>
<div class="wrapper">
<form method="POST" action="/d-suppo/RecdServlet" id="recd-form" name="recdform">
    <!-- 呑まない人 = 1 -->
    <div class="ad_radio" style="display:inline-flex">
	    <div class="form-check">
	        <input class="form-check-input" type="radio" name="maker" value="genre" id="check1" onclick="formSwitch()" checked>
	        <label class="form-check-label" for="check1"> ジャンルから選ぶ</label>
	    </div>
	    <div class="form-check">
	        <input class="form-check-input" type="radio" name="maker" value="dish" id="check2" onclick="formSwitch()">
	        <label class="form-check-label" for="check2"> メインから選ぶ</label>
	    </div>
	    <div class="form-check">
	        <input class="form-check-input" type="radio" name="maker" value="harvest" id="check3" onclick="formSwitch()">
	        <label class="form-check-label" for="check3"> 主食から選ぶ</label>
	    </div>
    </div>

	<div class="ad_radio2" >
		<div class = "box" id="genreList">
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="0" id="和食" name="genre[]" >
		      <label class="form-check-label" for="和食">和食</label>
		    </div>
		    <div class="form-check">
		     <input class="form-check-input" type="radio" value="1" id="洋食" name="genre[]">
		      <label class="form-check-label" for="洋食">洋食</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="2" id="中華" name="genre[]">
		      <label class="form-check-label"- for="中華">中華</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="hidden" value="5" class="ダミー" name="genre[]" checked>
		    </div>
		</div>
	</div>

	<div class="ad_radio2" >
		<div class = "box" id="dishList">
		    <div  class="form-check">
		      <input class="form-check-input" type="radio" value="0" id="肉メイン" name="dish[]">
		      <label class="form-check-label" for="肉メイン">肉メイン</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="1" id="魚メイン" name="dish[]">
		      <label class="form-check-label" for="魚メイン">魚メイン</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="2" id="野菜メイン" name="dish[]">
		      <label class="form-check-label" for="野菜メイン">野菜メイン</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="hidden" value="5" class="ダミー" name="dish[]" checked>
		    </div>
		</div>
	</div>

	<div class="ad_radio2" >
		<div class = "box" id="havList">
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="0" id="パン" name="harvest[]">
		      <label class="form-check-label" for="パン">パン</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input"  type="radio" value="1" id="米" name="harvest[]">
		      <label class="form-check-label" for="米">米</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="2" id="麺" name="harvest[]">
		      <label class="form-check-label" for="麺">麺</label>
		    </div>
		    <div class="form-check">
		      <input class="form-check-input" type="hidden" value="5" class="ダミー" name="harvest[]" checked>
		    </div>
		</div>
	</div>

<div>
<input type="submit" value="送信">
</div>
  </form>
<button onclick="/d-suppo/RecServlet">戻る</button>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="./js/recdjs.js"></script>

</body>
<div id="footer">
    <marquee>&copy;なんかいれたい</marquee>
  </div>
</html>