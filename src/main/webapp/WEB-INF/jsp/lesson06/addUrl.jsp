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
			<input type="text" class="form-control col-3" id="title"><br>
			
			<label for="url">주소</label>
			<div class="d-flex">
				<input type="text" class="form-control col-3" id="url">
				<button type="button" class="btn btn-info" id="urlDuplicationBtn">중복확인</button>
			</div>
			
			<small id="urlStatusArea"></small>			
		</div>	

			<button type="button" class="btn btn-success">추가</button>
	</div>
</body>
	<script type="text/javascript">
		$(document).ready(function(){
			// 주소 중복 확인버튼
			$('#urlDuplicationBtn').on('click', function(){
				// #urlStatusArea 하위 태그들 초기화
				$('#urlStatusArea').empty();
				
				let url = $('url').val().trim();
				
				// 주소가 입력이 되었는지 validation
				/* if (url == ) {
					$('urlStatusArea').append('<span class="text-danger">주소를 입력해주세요.</span>')
				}
				 */
				 
				$.ajax({
					
					// request
					type:"get"
					, url:"/lesson06/quiz02/url_duplication"
					, data:{"url":url}
				
					// response
					,success:function(data){
						if (data.url_duplication) {
							$('#urlStatusArea').append('<span class="text-danger">중복된 url입니다.</span>');						
						} else {
							$('#urlStatusArea').append('<span class="text-danger">저장 가능한 url입니다.</span>')
						}
					}
					
					,error:function(e) {
						alert("실패" + e)
					}
				});
			});
		});
	</script>
</html>