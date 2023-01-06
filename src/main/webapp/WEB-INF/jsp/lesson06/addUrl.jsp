<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복 url 확인</title>
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
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title"><br>
		</div>
		
		<div class="form-group">
			<label for="url">주소</label>
			<div class="form-inline">
				<input type="text" class="form-control col-10" id="url">
				<button type="button" class="btn btn-info" id="checkBtn">중복확인</button>
			</div>
			
			<small id="duplicationText" class="text-danger d-none">중복된 URL입니다.</small>			
			<small id="availableText" class="text-success d-none">저장 가능한 URL입니다.</small>			
		</div>	

			<button type="button" class="btn btn-success">추가</button>
	</div>
</body>

	<script type="text/javascript">
		$(document).ready(function(){
			// 주소 중복 확인버튼
			$('#checkBtn').on('click', function(){
				// #urlStatusArea 하위 태그들 초기화
				$('#checkBtn').empty();
				let url = $('url').val().trim();
				
				// 주소가 입력이 되었는지 validation
				if (url == ) {
					$('urlStatusArea').append('<span class="text-danger">주소를 입력해주세요.</span>')
				}
				
				// AJAX -> DB 확인	
				$.ajax({
					
					// request
					type:"post"
					, url:"/lesson06/quiz02/is_duplication_url"
					, data:{"url":url}
				
					// response
					,success:function(data){ // 삭제가 되면 그게 계속 나오므로 하나를 감추고 하나를 노출하도록 처리하면 된다.
						if (data.is_duplication) { 
							// 중복 확인
							$('#availableText').addClass("d-none");
							$('#duplicationText').removeClass("d-none");	
						} else { 
							// 사용 가능한 url
							$('#duplicationText').addClass("d-none");
							$('#availableText').removeClass("d-none");
						}
					}
					
					,error:function(e) {
						alert("에러" + e);
					}
				});
			});
		});
	</script>
</html>