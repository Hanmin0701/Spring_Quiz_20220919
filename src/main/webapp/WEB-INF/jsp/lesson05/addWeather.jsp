<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
  <!-- 부트 스트랩 -->
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"	crossorigin="anonymous"></script>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">	
	
  <link rel="stylesheet" type="text/css" hrf="/css/lesson05/style.css">
</head>
<body>
	<img alt="img" src="/img/lesson05/weather">
	
	<div id="wrap">
		<div class="contents d-flex">
			<header>
				<nav class="col-2">
					<!-- 로고 -->
					<div class="logo d-flex justify-content-center mt-3">
						<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Emblem_of_the_Government_of_the_Republic_of_Korea.svg/800px-Emblem_of_the_Government_of_the_Republic_of_Korea.svg.png"
							width="25"> 
						<span class="text-white font-weight-bold">기상청</span>
					</div>
					
					<!-- 목록 -->
					<ul class="nav flex-column">
						<li class="nav-item"><a href="/lesson05/Weatherhistory" class="nav-link menu-font">날씨</a></li>
						<li class="nav-item"><a href="/lesson05/addWeather" class="nav-link menu-font">날씨입력</a></li>
						<li class="nav-item"><a href="#" class="nav-link menu-font">테마날씨</a></li>
						<li class="nav-item"><a href="#" class="nav-link menu-font">관측기후</a></li>
					</ul>
				</nav>
			</header>
	
			<!-- 입력 페이지 -->
			<section class="col-10">
				<h3>날씨 입력</h3>
				<form method="post" action="/lesson05/add_weather">
					<div class="d-flex justify-content-between mt-5">
						<div class="d-flex align-items-center">
								<div class="input-label">날짜</div>
									<input type="text" class="form-control" id="date" name="date">
						</div>
						
						<div class="d-flex align-items-center">
							<div class="input-label">날씨</div>
							<select class="form-control" name="weather">
								<option>맑음</option>
								<option>구름조금</option>
								<option>흐림</option>
								<option>비</option>
							</select>
						</div>

						<div class="d-flex align-items-center">
							<div class="input-label">미세먼지</div>
							<select class="form-control" name="microDust">
								<option>좋음</option>
								<option>보통</option>
								<option>나쁨</option>
								<option>최악</option>
							</select>
						</div>
					</div>

					<div class="d-flex justify-content-between mt-5">
						<div class="d-flex align-items-center">
							<div class="input-label">기온</div>
							<div class="input-group">
								<input type="text" class="form-control" name="temperatures">
								<div class="input-group-append">
									<span class="input-group-text">℃</span>
								</div>
							</div>
						</div>
						<div class="d-flex align-items-center">
							<div class="input-label">강수량</div>
							<div class="input-group">
								<input type="text" class="form-control" name="precipitation">
								<div class="input-group-append">
									<span class="input-group-text">mm</span>
								</div>
							</div>
						</div>

						<div class="d-flex align-items-center">
							<div class="input-label">풍속</div>
							<div class="input-group">
								<input type="text" class="form-control" name="windSpeed">
								<div class="input-group-append">
									<span class="input-group-text">km/h</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="저장">
					</div>
				</form>
			</section>
		</div>
		
		<!-- footer -->
		<footer class="d-flex align-items-center">
			<div class="footer-logo">
				<img class="foot-logo" src="https://www.weather.go.kr/w/resources/image/foot_logo.png" width="120">
			</div>
			
			<div class="address">
				<small class="text-secondary"> 
					(07062) 서울시 동작구 여의대방로16길 61 <br>
					Copyright@2020 KMA. All Rights RESERVED.
				</small>
			</div>
		</footer>
	</div>
</body>
<script>
	$(document).ready(function)()) {
		${'input[name=date]'}.datepicker
		
	}
	
	
		
</script>

</html>