<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>seller �߰�</title>
</head>
<body>
	<div class="container">
		<h1>�Ǹ��� �߰�</h1>
		<form action="/lesson04/quiz01/add_seller" method="post">
		
			<div class="form-group">
				<lable for="name">�г���</lable>
				<input type="text" id="name" name="name" class="form-control col-3" placeholder="�г����� �Է��ϼ���.">
			</div class="form-group">
			
			<divclass="form-group">
				<lable for="url">������ ����url</lable>
				<input type="text" id="url" name="url" class="form-control col-5">
			</div class="form-group">
			
			<divclass="form-group">
				<lable id="name">�µ�</lable>
				<input type="text" class="form-control col-3">
			</div>
			
			<input type="submit" class="btn btn-info text-white form-control col-1">
		</form>
	</div>
</body>
</html>