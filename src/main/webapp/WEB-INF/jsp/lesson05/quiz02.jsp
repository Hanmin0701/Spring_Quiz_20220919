<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core 반복문</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<!-- List<String> 문제 -->
	<div class="container">
		<h1>HOT 5</h1>
		<table class="table table-CENTER">
			<thead>
				<tr>
					<th class="font-weight-bold">순위</th>
					<th class="font-weight-bold">제목</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="music" items="musicRanking" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${music}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- List<Map> 문제 -->
	<div class="container">
		<h1>멤버십</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th class="font-weight-bold">이름</th>
					<th class="font-weight-bold">전화 번호</th>
					<th class="font-weight-bold">등급</th>
					<th class="font-weight-bold">포인트</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="member" items="${membership}" varStatus="status">
				<tr>
					<td>${member.name}</td>
					<td>${member.PhoneNumber}</td>
					<c:choose>
						<!-- GOLD -->
						<c:when test="${member.grade eq 'GOLD'} ">
							<td>
								<span class="text-warning">${member.grade}</span>
							</td>
						</c:when>
						<!-- VIP -->
						<c:when test=""${member.grade eq 'VIP'}">
							<td>
								<span class="text-danger">${member.grade}</span>
							</td>
						</c:when>
						<c:otherwise>
							<td>${member.grade}</td>
						</c:otherwise>
					</c:choose>
					
					<c:if test="${membership.point >= 5000}">
						<td class="text-primary">${member.point}P</td>
					</c:if>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>