<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>seller 추가</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>판매자 추가</h1>
		
		<form action="/lesson04/quiz01/add_seller" method="post">  <!-- 절대 경로로 하는 것이 안전하다 -->
		
			<div class="form-group">
				<lable for="nickname">닉네임</lable>
				<input type="text" id="nickname" name="nickname" class="form-control col-3" placeholder="닉네임을 입력하세요.">
			</div class="form-group">
			
			<divclass="form-group">
				<lable for="profileImageUrl">프로필 사진 URL</lable>
				<input type="text" id="profileImageUrl" name="profileImageUrl" class="form-control col-5">
			</div class="form-group">
			
			<divclass="form-group">
				<lable id="temperature">온도</lable>
				<input type="text" id="temperature" name="temperature" class="form-control col-3">
			</div>
			
			<input type="submit" class="btn btn-info text-white form-control col-1">
		</form>
	</div>
</body>
</html>