<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
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
		
		<!-- header -->
		<header class="bg-danger d-flex justify-content-center align-items-center display-4">
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
		
		<h3 class="font-weight-bold text-center">예약 하기</h3>
		
		<section class="contents">
			<div class="justify-content-center align-items-center">
				<label><a href="/lesson06Pension/add_pension_view">이름</a></label><br>
				<input type="text" class="form-control col-8 mt-2" id="name">
				
				<label><a href="/lesson06Pension/add_pension_view">예약날짜</a></label><br>	
				<input type="text" class="form-control col-8 mt-2" id="date">
				
				<label><a href="/lesson06Pension/add_pension_view">숙박일수</a></label><br>	
				<input type="text" class="form-control col-8 mt-2" id="day">
				
				<label><a href="/lesson06Pension/add_pension_view">숙박인원</a></label><br>	
				<input type="text" class="form-control col-8 mt-2" id="headcount">
				
				<label><a href="/lesson06Pension/add_pension_view">전화번호</a></label><br>
				<input type="text" class="form-control col-8 mt-2" id="phoneNumber">
			</div>
			
			<button type="button" class="btn btn-warning form-control col-8" id="reservationBtn" value="예약하기"/>
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
		$('#reservationBtn').on('click', function(){
			let name = $('name').val().trim();
			if (name.length == '') {
				alert("제목을 입력하세요.");
				return;
			}
			
			let date = $('date').val().trim();
			if (date.length == '') {
				alert("날짜를 입력하세요.");
				return;
			}
			
			let day = $('day').val().trim();
			if (day.length == '') {
				alert("숙박 일수를 입력하세요.");
				return;
			}
			
			let headcount = $('headcount').val().trim();
			if (headcount.length == '') {
				alert("몇명인지를 입력하세요.");
				return;
			}
			
			let phoneNumber = $('phoneNumber').val().trim();
			if (phoneNumber.length == '') {
				alert("전화번호를 입력하세요.");
				return;
			}
			
			
			$.ajax({ 
				// request
				type:"POST"
				, url: "/lesson06/quiz01/add_pension"
				, date: {"name": name, "date": date, "day": day, "headcount": headcount, "phoneNumber": phoneNumber}
			
				// response
				, success:function(data) {  // String json으로 내려온 형태 => object
					if(data.result == "성공"){
						location.href="/lesson06Pension/quiz01/after_reservation";
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