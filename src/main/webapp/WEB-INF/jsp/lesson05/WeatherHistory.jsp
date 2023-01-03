<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h1>날씨</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>날짜</th>
					<th>날씨</th>
					<th>기온</th>
					<th>강수량</th>
					<th>미세먼지</th>
					<th>풍속</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="weatherHistory" items="weather">
				<tr>
					<td>
						<fmt:formatDate value="${weatherHistory.date}" pattern="yyyy년 M월 dd일"}/>
					</td>
					
					<td>${weatherHistory.weather}
					<c:choose>
						<c:when test="${weatherHistory.weather eq '맑음'}">
						<img src="/img/lesson05/sunny.jpg">
						</c:when>
						<c:when test="${weatherHistory.weather eq '구름조금'}">
						<img src="/img/lesson05/.cloudy">
						</c:when>
						<c:when test="${weatherHistory.weather eq '흐림'}">
						<img src="/img/lesson05/partlyCloudy.jpg">
						</c:when>
						<c:when test="${weatherHistory.weather eq '비'}">
						<img src="/img/lesson05/rainy.jpg">
						</c:when>
					</c:choose>
					</td>
					<td>${weatherHistory.temperatures}°C</td>
					<td>${weatherHistory.precipitation}mm</td>
					<td>${weatherHistory.microDust}</td>
					<td>${weatherHistory.windSpeed}km/h</td>
				</tr>		
				</c:forEach>	
			</tbody>
		</table>
	</div>
</body>
</html>