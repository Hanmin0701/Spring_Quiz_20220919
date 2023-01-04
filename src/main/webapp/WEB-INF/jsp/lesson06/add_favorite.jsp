<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		<form action="/lesson06/quiz01/add_favorite" method="post">
			<div class="form-group">
				<label for="name">제목</label>
				<input type="text" id="name" name="name" class="form-control col-3">
			</div>
			
			<div class="form-group">
				<label for="url">주소</label>
				<input type="text" id="url" name="url" class="form-control col-3">
			</div>
			<input type="button" id="join" class="btn btn-success form-control" value="추가">
		</form>
	</div>
</body>
	<script type="text/javascript">
	$(doucument).ready(function(){
		$('join').on('click', function(){
			
			let name = $('name').val().trim();
			if (name.length == '') {
				alert("제목을 입력하세요.");
				return;
			}
			
			let url = $('url').val();
			if (url.length < 1) {
				alert("주소를 입력하세요.")	
			} return;
			
			$.ajax({
				// request
				type:"POST"
				, url: "/lesson06/quiz01/add_favorite"
				, date: {"name": name, "url": url}
			
				// response
				, success:function(data) {
					alert(data);
				}
				
				, error:function(e) {
                   	alert("에러")
                }
				
				
			})
			
			
		});
	});
	</script>
</html>