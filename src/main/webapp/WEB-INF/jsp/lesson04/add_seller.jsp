<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>seller 추가</title>
</head>
<body>
	<div class="container">
		<h1>판매자 추가</h1>
		<form action="/lesson04/quiz01/add_seller" method="post">
		
			<div class="form-group">
				<lable for="name">닉네임</lable>
				<input type="text" id="name" name="name" class="form-control col-3" placeholder="닉네임을 입력하세요.">
			</div class="form-group">
			
			<divclass="form-group">
				<lable for="url">프로필 사진url</lable>
				<input type="text" id="url" name="url" class="form-control col-5">
			</div class="form-group">
			
			<divclass="form-group">
				<lable id="name">온도</lable>
				<input type="text" class="form-control col-3">
			</div>
			
			<input type="submit" class="btn btn-info text-white form-control col-1">
		</form>
	</div>
</body>
</html>