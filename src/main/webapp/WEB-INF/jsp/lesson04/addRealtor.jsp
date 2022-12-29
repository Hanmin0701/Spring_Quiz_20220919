<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공인 중개사 추가</title>
</head>
<body>
	<div class="container"> 
		<h1>공인중개사 추가</h1>
		<form action="/lesson04/quiz02/add_realtor" method="post">
			<div class="form-group">
				<label for="name">상호명</label>
				<input type="text" id="name" name="name" class="form-control col-3" placeholder="이름을 입력하세요.">
			</div>
			<div class="form-group">
				<label for="phoneNumber">전화번호</label>
				<input type="text" id="phoneNumber" name="phoneNumber" class="form-control col-3" placeholder="전화번호를 입력하세요.">
			</div>
			<div class="form-group">
				<label for="address">이메일</label>
				<input type="text" id="address" name="address" class="form-control col-3" placeholder="이메일을 입력하세요.">
			</div>
			<div class="form-group">
				<label for="grade">등급</label>
				<input type="text" id="grade" name="grade" class="form-control col-3" placeholder="장래희망을 입력하세요.">
			</div>
			<button type="submit" class="btn btn-info form-control">추가</button>
		</form>
	</div>
</body>
</html>