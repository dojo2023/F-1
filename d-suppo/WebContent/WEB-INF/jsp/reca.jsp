<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>?�ސl�p�y�[�W</title>
		<link rel="stylesheet" type="text/css" href="./css/reca.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
		<div>
			<p>�����̎�ނ́H</p>
		</div>
		<form method="POST" action="/d-suppo/RecaServlet">
		<!-- �ۂސl = 0 -->
			<input type = "hidden" name = "DRINK" value = "0">

		<div>
			<input type="checkbox"  class="alcCheck" name="ALC[]" value="0">�r�[��
			<input type="checkbox" class="alcCheck" name="ALC[]" value="1">���{��
			<input type="checkbox" class="alcCheck" name="ALC[]" value="2">���Ē�
			<input type="checkbox" class="alcCheck" name="ALC[]" value="3">���Ē�
			<input type="checkbox" class="alcCheck" name="ALC[]" value="4">�ԃ��C��
			<input type="checkbox" class="alcCheck" name="ALC[]" value="5">�����C��
			<input type="checkbox" class="alcCheck" name="ALC[]" value="6">�������T���[
			<input type="checkbox" class="alcCheck" name="ALC[]" value="7">�~��
			<input type="checkbox" class="alcCheck" name="ALC[]" value="8">�n�C�{�[��
			<input type="checkbox" class="alcCheck" name="ALC[]" value="9">�J�N�e��
		</div>
		<br>
		<div>
			<p>�H���̌n���́H</p>
		</div>
			<div class = "ad_radio">
				<div class = "box">
				<input type="radio"  id="radio1" name="CATEGORY[]" value="0" checked>
				<label for="radio1" >������</label>
				<input type="radio" id="radio2" name="CATEGORY[]" value="1">
				<label for="radio2" >�����ς�</label>
				<input type="radio" id="radio3" name="CATEGORY[]" value="2">
				<label for="radio3" >���܂݌n</label>
				<input type="radio" id="radio4" name="CATEGORY[]" value="3">
				<label for="radio4" >�f�U�[�g</label>
				</div>
			</div>
		<br>
		<div>
			<input type="submit" value="���M" onClick="return isCheck()">
		</div>

		</form>
			<div>
				<a href="/d-suppo/MenuServlet"><button>�߂�</button></a>
			</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="./js/recajs.js"></script>

	</body>
		<div id="footer">
	    	<marquee>&copy;�Ȃ񂩂��ꂽ��</marquee>
		</div>
</html>