<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
 <!-- 부트 스트랩 -->
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"	crossorigin="anonymous"></script>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>

		<div class="form-group">
			<label for="name">제목</label>
			<input type="text" id="name" class="form-control col-3">
		</div>
			
		<div class="form-group">
			<label for="url">주소</label>
			<input type="text" id="url" class="form-control col-3">
		</div>
		
		<button type="button" id="addFavoriteBtn" class="btn btn-success form-control" value="추가">
	</div>
</body>
	<script type="text/javascript">
	$(doucument).ready(function(){
		$('addFavoriteBtn').on('click', function(){
			let name = $('name').val().trim();
			if (name.length == '') {
				alert("제목을 입력하세요.");
				return;
			}
			
			let url = $('url').val().trim();
			if (url.length < 1) {
				alert("주소를 입력하세요.")	
			} return;
			
			// http로 시작하지도 않고, https로도 시작하지 않으면 alert
			if(url.startWith('http') == false && url.startWith('https') == false) {
				alert("주소 형식이 잘못 되었습니다.")
				return;
			}
			
			$.ajax({ 
				// request
				type:"POST"
				, url: "/lesson06/quiz01/add_favorite"
				, date: {"name": name, "url": url}
			
				// response
				, success:function(data) {  // String json으로 내려온 형태 => object
					if(data.result == "성공"){
						location.href="/lesson06/quiz01/after_add_favorite_view";
					}
				}
				
				, error:function(e) {
                   	alert("에러" + e);
                }
			})
		});
	});
	</script>
</html>