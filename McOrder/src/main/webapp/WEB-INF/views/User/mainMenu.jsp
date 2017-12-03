<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainMenu.css">
<div id="content">
	<div class="container" style="padding: 0;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 360px; margin-top: 45px;">
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="${pageContext.request.contextPath}/resources/images/이벤트1_1.jpg" alt="Los Angeles" style="width: 100%;">
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath}/resources/images/이벤트2_1.jpg" alt="Chicago" style="width: 100%;">
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath}/resources/images/이벤트3_1.jpg" alt="New york" style="width: 100%;">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> 
				<span class="sr-only">Previous</span>
			</a> 
			<a class="right carousel-control" href="#myCarousel" data-slide="next"> 
				<span class="glyphicon glyphicon-chevron-right"></span> 
				<span class="sr-only">Next</span>
			</a>
		</div>

		<center>
			<div class="btn-group" style="width: 360px;">
				<button type="button" class="btn btn-lg btn-warning" style="width: 90px; color: #fff; font-family: 'Hanna', serif; font-size: 15px;">버거세트</button>
				<button type="button" class="btn btn-lg btn-warning" style="width: 90px; color: #fff; font-family: 'Hanna', serif; font-size: 15px;">버거단품</button>
				<button type="button" class="btn btn-lg btn-warning" style="width: 90px; color: #fff; font-family: 'Hanna', serif; font-size: 15px;">아침메뉴</button>
				<button type="button" class="btn btn-lg btn-warning" style="width: 93px; color: #fff; font-family: 'Hanna', serif; font-size: 15px;">스낵&디저트</button>
			</div>
		</center>
	</div>
	<!-- /container -->

	<div class="row middle" style="margin-top: 20px;">
		<div class="col-xs-6" style="text-align: right;">
			<button type="button" class="btn btn-warning btn-lg" style="font-size: 15px; width: 90px; color: #fff; font-family: 'Hanna', serif;">인기순</button>
		</div>
		<div class="col-xs-6" style="text-align: left; padding-right: 0;">
			<button type="button" class="btn btn-warning btn-lg" style="font-size: 15px; width: 90px; color: #fff; font-family: 'Hanna', serif;">가격순</button>
		</div>
	</div>
	<div class="row middle" style="margin-top: 15px;">
		<div class="col-xs-4" style="text-align: center">
			<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" class="img-rounded" style="width: 80%; background-color: #fff;">
		</div>
		<div class="col-xs-4" style="text-align: center">
			<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" class="img-rounded" style="width: 80%; background-color: #fff;">
		</div>
		<div class="col-xs-4" style="text-align: center">
			<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" class="img-rounded" style="width: 80%; background-color: #fff;">
		</div>
	</div>
	<div class="row middle" style="margin-top: 5px;">
		<div class="col-xs-4" style="text-align: center; color: #fff; font-family: 'Hanna', serif; font-size: 20px;">불고기버거</div>
		<div class="col-xs-4" style="text-align: center; color: #fff; font-family: 'Hanna', serif; font-size: 20px;">치즈버거</div>
		<div class="col-xs-4" style="text-align: center; color: #fff; font-family: 'Hanna', serif; font-size: 20px;">새우버거</div>
	</div>

	<div class="row middle" style="margin-top: 15px;">
		<div class="col-xs-4" style="text-align: center">
			<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" class="img-rounded" style="width: 80%; background-color: #fff;">
		</div>
		<div class="col-xs-4" style="text-align: center">
			<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" class="img-rounded" style="width: 80%; background-color: #fff;">
		</div>
		<div class="col-xs-4" style="text-align: center">
			<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" class="img-rounded" style="width: 80%; background-color: #fff;">
		</div>
	</div>
	<div class="row middle" style="margin-top: 5px;">
		<div class="col-xs-4" style="text-align: center; color: #fff; font-family: 'Hanna', serif; font-size: 20px;">불고기버거</div>
		<div class="col-xs-4" style="text-align: center; color: #fff; font-family: 'Hanna', serif; font-size: 20px;">치즈버거</div>
		<div class="col-xs-4" style="text-align: center; color: #fff; font-family: 'Hanna', serif; font-size: 20px;">새우버거</div>
	</div>
</div>