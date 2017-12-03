<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css">
<script src="${pageContext.request.contextPath}/resources/slick/slick.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/selectMenu.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/menuDetail.js"></script>

<!-- 모달 js css -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"> <!-- CSS reset -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> <!-- Resource style -->
<script src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script> <!-- Modernizr -->

<div id="content">
	<div class="container" style="margin-top: 70px;">
		<div class="row">
			<div class="col-xs-offset-1 col-xs-4">
				<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="width: 100%; background-color: #fff; padding: 5px;" class="img-rounded">
			</div>
			<div class="col-xs-7" style="margin-top: auto; margin-bottom: auto;">
				<span style="font-size:40px; color: #fff; font-family: 'Hanna', serif;">메뉴 이름</span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6" style="text-align: right; margin-top: 15px;">
				<button class="btn btn-lg btn-warning">
					<span style="font-size:20px; color: #fff; font-family: 'Hanna', serif;">
						주문하기
					</span>	
				</button>
			</div>
			<div class="col-xs-6" style="text-align: left; margin-top: 15px;">
				<button class="cd-popup-trigger btn btn-lg btn-warning">
					<span style="font-size:20px; color: #fff; font-family: 'Hanna', serif;">
						장바구니 추가
					</span>	
				</button>
			</div>
		</div>
		<hr style="border-top-width: 5px; background-color: #fff;">
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-xs-3" style="text-align: center;">
				<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="width: 100%; background-color: #fff; padding: 5px;" class="img-rounded">
			</div>
			<div class="col-xs-9" style="text-align: center; margin-top: auto; margin-bottom: auto;">
				<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">단품 - 그릴드 머쉬룸 버거</span>
			</div>
		</div>
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-xs-3" style="text-align: center;">
				<img src="${pageContext.request.contextPath}/resources/images/감튀.png" style="width: 100%; background-color: #fff; padding: 5px;" class="img-rounded">
			</div>
			<div class="col-xs-9" style="text-align: center; margin-top: auto; margin-bottom: auto;">
				<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">감자튀김</span>
			</div>
			<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
				<button class="btn btn-lg btn-warning">
					<span style="font-size:15px; color: #fff; font-family: 'Hanna', serif;">
						변경
					</span>	
				</button>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3" style="text-align: center;">
				<img src="${pageContext.request.contextPath}/resources/images/콜라.png" style="width: 100%; background-color: #fff; padding: 5px;" class="img-rounded">
			</div>
			<div class="col-xs-9" style="text-align: center; margin-top: auto; margin-bottom: auto;">
				<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">콜라</span>
			</div>
			<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
				<button class="btn btn-lg btn-warning">
					<span style="font-size:15px; color: #fff; font-family: 'Hanna', serif;">
						변경
					</span>	
				</button>
			</div>
		</div>
		<hr style="border-top-width: 5px; background-color: #fff;">
		<div class="col-xs-12" style="text-align: center;">
			<span style="text-align:center; font-size:18px; color: #fff; font-family: 'Hanna', serif;">이 메뉴를 구매한 사람들이 많이 찾는 메뉴</span>
		</div>
		<center>
			<div class="slider col-sm-10" style="width: 280px; margin-top: 50px; margin-bottom: 30px;">
	            <a class="no-uline" href="#">
	          		<img class="pad img-rounded" src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="padding: 5px; height:70px; background-color: #fff;">
					<span style="font-size:10px; color: #fff; font-family: 'Hanna', serif;">그릴드 머쉬룸</span>   		
	            </a>
	            <a class="no-uline" href="#">
	          		<img class="pad img-rounded" src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="padding: 5px; height:70px; background-color: #fff;">
					<span style="font-size:10px; color: #fff; font-family: 'Hanna', serif;">그릴드 머쉬룸 버</span>   		
	            </a>
	            <a class="no-uline" href="#">
	          		<img class="pad img-rounded" src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="padding: 5px; height:70px; background-color: #fff;">
					<span style="font-size:10px; color: #fff; font-family: 'Hanna', serif;">그릴드 머쉬룸 거</span>   		
	            </a>
	            <a class="no-uline" href="#">
	          		<img class="pad img-rounded" src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="padding: 5px; height:70px; background-color: #fff;">
					<span style="font-size:10px; color: #fff; font-family: 'Hanna', serif;">그릴드 머 버거</span>   		
	            </a>
	            <a class="no-uline" href="#">
	          		<img class="pad img-rounded" src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="padding: 5px; height:70px; background-color: #fff;">
					<span style="font-size:10px; color: #fff; font-family: 'Hanna', serif;">그릴드 머쉬 버거</span>   		
	            </a>
	        </div>
		</center>
	</div>
	<div class="cd-popup" role="alert">
		<div class="cd-popup-container">
			<div style="padding: 30px;">
				<span style="font-size:20px; color: #000; font-family: 'Hanna', serif;">장바구니에 추가되었습니다.<br>장바구니로 가시겠습니까?</span>
			</div>
			<ul class="cd-buttons">
				<li>
					<a href="#0">
						<span style="font-size:15px; color: #fff; font-family: 'Hanna', serif;">장바구니 가기</span>
					</a>
				</li>
				<li>
					<a href="MenuMain.jsp">
						<span style="font-size:15px; color: #fff; font-family: 'Hanna', serif;">메뉴 계속 고르기</span>
					</a>
				</li>
			</ul>
			<a href="#0" class="cd-popup-close img-replace">Close</a>
		</div> <!-- cd-popup-container -->
	</div> <!-- cd-popup -->
</div>