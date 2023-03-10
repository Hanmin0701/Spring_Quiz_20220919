<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
	<div id="wrap" class="container">
 		<header class="bg-light d-flex justify-content-center align-items-center">
 	       <div class="display-4">통나무 팬션</div>
        </header>
        <nav>
        	<ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">팬션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">객실보기</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">예약안내</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">커뮤니티</a></li>
            </ul>
        </nav>
       	<section class="banner bg-info">
        	<img src="test06_banner1.jpg" alt="banner" width="100%">
        </section>
        
        <section class="reserve bg-primary d-flex">
            <section class="real-time-reserved col-4 d-flex justify-content-center align-items-center">
               <div class="display-4 text-white">실시간<br>예약하기</div>
       		</section>
       	
        	<!-- 예약 확인, 회원 비회원 라디오 버튼 -->
       		<section class="confirm col-4">
	    	    <div class="m-3">
	        		<span class="reserve-confirm mr-3">예약 확인</span>
	        		
	            	<label for="member" class="mr-3">
		                <span class="text-white">회원</span>
		                <input type="radio" id="member" name="member" value="member" checked="checked">
	                 </label>
	                 
	                 <label for="nonMember">
	                     <span class="text-white">비회원</span>
	                     <input type="radio" id="nonMember" name="member" value="nonMember">
	                 </label>
	       		</div>
	
		     	<!-- 아이디 비밀번호(회원용) -->
		       	<div id="memberInputBox">
		       		<div class="d-flex justify-content-end align-items-center mr-4">
		               	<div class="subject">아이디</div>
		             	<input type="text" id="id" class="form-control input-form">
		            </div>
		            
		            <div class="d-flex mt-2 justify-content-end align-items-center mr-4">
		              	<span class="subject">비밀번호</span>
		               	<input type="password" id="password" class="form-control input-form">
		          	</div>
		
		         	<!-- 버튼 -->
		         	<div class="d-flex mt-2 justify-content-end align-items-center mr-4 mt-3">
		         		<button type="button" id="lookUpBtn" class="btn btn-success submit-btn">조회 하기</button>
		      	    </div>
		        </div>
	
		       	<!-- 아이디 비밀번호(비회원용)-->
		        <div id="nonMemberInputBox">
		       		<div class="d-flex justify-content-end mr-4">
		            	<span class="subject">이름</span>
		           		<input type="text" id="name" class="form-control input-form">
		       		</div>
		          
			       	<div class="d-flex mt-2 justify-content-end mr-4">
			             <span class="subject">전화번호</span>
			             <input type="text" id="phoneNumber" class="form-control input-form">
			        </div>
		                      
			       	<div class="d-flex mt-2 justify-content-end mr-4">
			            <span class="subject">날짜</span>
			              <input type="text" id="reserveDateText" class="form-control input-form">
			        </div>
		
			       	<!-- 버튼 -->
			        <div class="text-right mt-2 mr-4">
			            <button type="button" id="lookUpBtn" class="btn btn-success submit-btn">조회 하기</button>
			        </div>
       		 	</div>
	        </section>
	        
	      	<section class="inquiry col-4 d-flex justify-content-center align-items-center">
	        	<div class="text-white">
	               <h4 class="font-weight-bold">예약문의:</h4>
	               <h1>010-<br>0000-1111</h1>
	             </div>
	        </section>
        </section>
        
        <footer class="d-flex align-items-center pl-3">
        	<div class="address">
            	제주특별자치도 제주시 애월읍<br>
                사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목<br>
                Copyright 2025 tongnamu. All right reserved.
            </div>
        </footer>
    </div>

        <script>
            $(document).ready(function() {
                // 예약 조회
                $('#lookUpBtn').on('click', function(){
                	let name = $("name").val().trim();
                	let phoneNumber = $("phoneNumber").val().trim();
                	
                	if (name == "") {
                		alert("이름을 입력하세요.")
                		return;
                	}
                	
        			if (phoneNumber == "") {
        				alert("전화번호를 입력하세요.");
        				return;
        			}
                	
					// 이미지
                	 var bannerSrcArr = ['banner1.jpg', 'banner2.jpg', 'banner3.jpg', 'banner4.jpg'];
                	 var currentIndex = 0;
                	 setInterval(function() {
	                    $('#bannerImage').attr('src', bannerSrcArr[currentIndex]);
	                    currentIndex++;
	
	                  	  if (currentIndex > bannerSrcArr.length) {
	                        currentIndex = 0;
	                  	  }
                	 }, 2000);
                
	                $.ajax({
	                	type:"post"
	                	url:"/lesson06Pension/quiz01/after_reservation"
	                	date:{"name": name, "phoneNumber": phoneNumber}
	                
	                , success: function(){
	                	if (data.code == 1) { // 조회된 내역 있을 때
	                		let message = "이름 :" + data.booking.name
	                		+ "\n날짜 :" + data.booking.date.slice(0, 10)  // 2023-01-10  0 ~ 9 까지만 나와야한다.
	                		+ "\n일수 :" + data.booking.day
	                		+ "\n인원 :" + data.booking.headcount
	                		+ "\n상태 :" + data.booking.state;
	                	} else { // 조회된 내역 없을 때 또는 애러 상황
	                		alert("예약 내역이 없습니다.")
	                	}
	                }
	                
	                , error:function(e){
	                	alert("조회에 실패했습니다.")
	                }
	                
	                });
	            });
            });
	</script>
</body>
</html>