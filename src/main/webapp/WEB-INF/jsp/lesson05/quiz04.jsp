<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>회원정보 리스트</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th class="text-wight-bolde">No</th>
					<th class="text-wight-bolde">이름</th>
					<th class="text-wight-bolde">전화 번호</th>
					<th class="text-wight-bolde">국적</th>
					<th class="text-wight-bolde">이메일</th>
					<th class="text-wight-bolde">자기소개</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="memberShip" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${member.name}</td>
					<td>
						<c:set var="str1" value="${member.phoneNumber}"/>
						<c:if test="${fn:startsWith(str1, '010')"}>
							유효하지 않는 전화번호
						</c:if>
					</td>
					<td>${fn:replace(member.nationality, '삼국시대', '삼국-')}</td>
					<td>
						<b>${fn:split(member.email, '@')[0]}</b>@${fn:split(member.email, '@')[1]}
					</td>
					<td>
						<c:if test="${fn:lenght(${member.introduce}) > 15}">
							${fn:substring(member.introduce, 0, 15)} ...
						</c:if>
						<c:if test="${fn:lenght(${member.introduce}) <= 15}">
							${member.introduce}
						</c:if>
					</td>
				</tr>		
				</c:forEach>	
			</tbody>
		</table>
	</div>
</body>
</html>