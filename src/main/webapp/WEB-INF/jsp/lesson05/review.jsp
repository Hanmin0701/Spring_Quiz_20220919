<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"	crossorigin="anonymous"></script>
</head>
<body>	
	<div id="wrap">
		<header class="bg-info justify-content-center align-items-center">
			<div class="text-white">배탈의 민족</div>
		</header>
		<h1>배달 삼겹 리뷰</h1>
		<section class="contents bg-success">
		<c:forEach var="reviewInfo" items="review">
			<!-- 1번 -->
			<div class="border border-info">
				<div class="d-flex">
					<span>${reviewInfo.userName}</span>
					<div>
						${reviewInfo.point}
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
					</div>
				</div>
				<small>2021년 4월 3일</small> <br>
				<div>${reviewInfo.review}</div>
				<div class="form-control">${reviewInfo.menu}</div>
			</div>
			
			<!-- 2번 -->
			<div class="border border-info">
				<div class="d-flex">
					<span>${reviewInfo.userName}</span>
					<div>
						${reviewInfo.point}
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/halfStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
					</div>
				</div>
				<small>2021년 4월 3일</small> <br>
				<div>${reviewInfo.review}</div>
				<div class="form-control">${reviewInfo.menu}</div>
			</div>
			
			<!-- 3번 -->
			<div class="border border-info">
				<div class="d-flex">
					<span>${reviewInfo.userName}</span>
					<div>
						${reviewInfo.point}
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/halfStar.png"/>
					</div>
				</div>
				<small>2021년 4월 3일</small> <br>
				<div>${reviewInfo.review}</div>
				<div class="form-control">${reviewInfo.menu}</div>
			</div>
			
			<!-- 4번 -->
			<div class="border border-info">
				<div class="d-flex">
					<span>${reviewInfo.userName}</span>
					<div>
						${reviewInfo.point}
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/fullStar.png"/>
						<a href="/img/lesson05/review/emptyStar.png"/>
					</div>
				</div>
				<small>2021년 4월 3일</small> <br>
				<div>${reviewInfo.review}</div>
				<div class="form-control">${reviewInfo.menu}</div>
			</div>
		</c:forEach>
		</section>
		<hr>
		<footer classs="bg-secondary">
			<div class="font-weight-bold">(주)우와한형제</div> <br>
			<small class="text-secondary">고객센터: 1500-1500</small>
		</footer>
	</div>
</body>
</html>