<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
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
		<h1>즐겨찾기 목록</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="favorite" items="${favoriteList}" varStatus="status">
					<tr>
						<td>${favorite.id}</td>
						<td>${favorite.name}</td>
						<td>${favorite.url}</td>
						<td>
							<%-- 1) name속성 + value 속성 삭제 --%>
							<%-- <button type="button" name="delBtn" class="del-btn btn btn-danger text-white form-control" value="${favorite.id}"/>--%>
							
							<%-- 2) data를 이용해서 태그에 임시 저장하기 --%>
							<%-- data-favorite-id 이거 대문자하면 동작이 안된다. --%>
							<button type="button" name="delBtn" class="del-btn btn btn-danger" data-favorite-id="${favorite.id}">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			// 삭제 버튼
			$('button[name=delBtn]').on('click', function(e){
				$(this).val();
				// 하나의 value만 있을 때 사용을 하면 된다.
				// 만약에 2개 이상을 하고 싶으면 이렇게 <input type="hidden" value=""> 해서 이 안에 숨기고 꺼내고 하면 된다.
				
			/* 	let id = $(this).val();
				let id = $(this).attr('value');
				let id = e.target.value();  // fucntion(e)가 있어야 한다.
				alert(id);
 */
				
 				// 2) data를 이용해서 태그에 임시 저장하기
				// 태그: data-favorite-id      data- 뒤에 우리가 이름을 정한다. (대문자 절대로 안됨)
				// 스크립트: $(this).data('favorite-id');
 				$('del-btn').on('click', function(){
					let id = $(this).data('favorite-id');
					// alert(id);
				
					$.ajax({
						// request
						type:"delete"
						,url:"/lesson06/quiz02/delete_favorite"
						,data:{"id": id}
					
						// response
						, success:function(data) {
							if (data.code == 1) {
								// 성공
								// location.href="" // 삭제 했을 때 스크롤이 있을 때 다시 올라갈 수 있다.
								document.location.reload =true; // 새로고침 그 자리에 있다.  작동이 안될 때: document or window라고 쓰면 된다.
							} else if (data.code == 500){
								// 에러
								alert(data.error_message);
							}
						}
						
						, error function(e) {
							alert("에러" + e);
						}
				    });
				});
			});
		});
	</script>
</body>
</html>