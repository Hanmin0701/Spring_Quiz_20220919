<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 팬션</title>
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
	<div id="wrap" class="container bg-dark">
		<!-- header -->
		<header class="bg-danger  d-flex justify-content-center align-items-center display-4">
			통나무 팬션
		</header>
		
		<!-- 메뉴 -->
		<nav class="bg-warning aline-items-center">
			<ur class="nav nav-fill">
				<li class="nav-item"><a href="#" class="text-white">팬션소개</a></li>	
				<li class="nav-item"><a href="#" class="text-white">객실보기</a></li>	
				<li class="nav-item"><a href="#" class="text-white">예약하기</a></li>	
				<li class="nav-item"><a href="#" class="text-white">예약목록</a></li>	
			</ur>
		</nav>
		
		<h3 class="font-weight-bold text-center">예약 목록 보기</h3>
		
		<section class="contents ">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="pension" items="${booking}" varStatus="status">
					<tr>
						<td>${pension.name}</td>
						<td>${pension.date}</td>
						<td>${pension.day}</td>
						<td>${pension.headcount}</td>
						<td>${pension.phoneNumber}</td>
						<td>
							<c:choose>
								<c:when test="${pension.state eq '대기중'}">
									<span class="text-info">$pension.state}</span>
								</c:when>
								<c:when test="${pension.state eq '확정'}">
									<span class="text-success">${pension.state}</span>
								</c:when>
								<c:otherwise>
									${pension.state}
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<button type="button" name="delBtn" class="del-btn btn btn-danger text-white form-control" 
							data-booking-name="${pension.name}">삭제</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		
		<!-- 주소 -->		
		<footer>
			<small class="text-secondary">
				제주특별자치도 제주시 애월읍 <br>
				사업자등록번호: 111-22-2552222 / 농어촌민박사업자지정 / 대표:김통목<br>
				CopyRight 2025 tongnamu.All right reserved.			
			</small>
		</footer>
	</div>
</body>
<script type="text/javascript">
	$(doucument).ready(function(){
		$('button[name=delBtn]').on('click', function(){
			$(this).val();
			
			$('del-btn').on('click', function(){
				let name = $(this).data('pension-name');
				
			$.ajax({ 
				// request
				type:"delete"
				, url: "/lesson06/quiz01/delete_booking"
				, date: {"name": name}
			
				// response
				, success:function(data) {
					if (data.code == 200) {
						document.location.reload =true;
					} else if (data.code == 500){
						// 에러
						alert(data.error_message);
					}
				}
			})
		});
	});
</script>
</html>