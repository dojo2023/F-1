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

<form method="POST" action="/d-suppo/RecResultServlet">
    <div class="form-check">
        <input class="form-check-input" type="radio" name="maker" value="genre" onclick="formSwitch()" checked>
        <label class="form-check-label"> ジャンルから選ぶ</label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="maker" value="dish" onclick="formSwitch()">
        <label class="form-check-label"> メインから選ぶ</label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="maker" value="harvest" onclick="formSwitch()">
        <label class="form-check-label"> 主食から選ぶ</label>
    </div>
    
  
  <div id="genreList">
    <div class="form-check">
      <input class="form-check-input" type="radio" value="0" id="和食" name="genre[]">
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
</div>

<div>
<input type="submit" value="送信">
</div>
  </form>
<button onclick="/d-suppo/RecServlet">戻る</button>
</body>
<div id="footer">
    <marquee>&copy;なんかいれたい</marquee>
  </div>
<script>
'use strict';


function formSwitch() {
    var hoge = document.getElementsByName('maker');
    if (hoge[0].checked) {
        // 好きな食べ物が選択されたら下記を実行します
        document.getElementById('genreList').style.display = "";
        document.getElementById('dishList').style.display = "none";
        document.getElementById('havList').style.display = "none";
        
        var inputItem = document.getElementById("dishList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
        
        var inputItem = document.getElementById("havList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
    } 
     else if (hoge[1].checked) {
        // 好きな場所が選択されたら下記を実行します
    	 document.getElementById('genreList').style.display = "none";
         document.getElementById('dishList').style.display = "";
         document.getElementById('havList').style.display = "none";
         
         var inputItem = document.getElementById("genreList").getElementsByTagName("input");
         for(var i=0; i<inputItem.length; i++){
         inputItem[i].checked = "";
         }
         
         var inputItem = document.getElementById("havList").getElementsByTagName("input");
         for(var i=0; i<inputItem.length; i++){
         inputItem[i].checked = "";
         }
    } 
     else if(hoge[2].checked) {
    	document.getElementById('genreList').style.display = "none";
        document.getElementById('dishList').style.display = "none";
        document.getElementById('havList').style.display = "";
        
        var inputItem = document.getElementById("genreList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
        
        var inputItem = document.getElementById("dishList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
    } 
     else{
    	document.getElementById('genreList').style.display = "none";
        document.getElementById('dishList').style.display = "none";
        document.getElementById('havList').style.display = "none";
        
        var inputItem = document.getElementById("genreList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
        
        var inputItem = document.getElementById("dishList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
        
        var inputItem = document.getElementById("havList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
    }
    
}
window.addEventListener('load', formSwitch());
</script>
</html>