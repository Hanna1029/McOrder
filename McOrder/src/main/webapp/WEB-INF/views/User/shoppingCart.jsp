<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cart.css">
<script src="${pageContext.request.contextPath}/resources/js/cart.js"></script>
<div id="content">
	<div class="container" style="margin-top: 70px;">
		<div class="row">
			<div class="col-xs-offset-1 col-xs-4" style="text-align: right; margin-top: auto; margin-bottom: auto;">
				<img src="${pageContext.request.contextPath}/resources/images/list.png" style="width: 90%;" class="img-rounded">
			</div>
			<div class="col-xs-7" style="margin-top: auto; margin-bottom: auto; text-align: left;">
				<span style="font-size:38px; color: #fff; font-family: 'Hanna', serif;">장바구니</span>
			</div>
		</div>
		<hr style="border-top-width: 5px; background-color: #fff;">
	
		<div class="col-md-6 col-sm-6" style="padding-left: 10px; padding-right: 10px;	">
			<div class="panel-group wrap" id="bs-collapse">
				<div class="panel">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#" href="#one">
								<div class="row">
									<div class="col-xs-5">
										<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="width: 110%; background-color: #fff; padding: 5px;"" class="img-rounded">
									</div>
									<div class="col-xs-7" style="margin-top: auto; margin-bottom: auto; padding-left:10px; padding-right: 50px;">
										<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">불고기버거 세트</span>
									</div>
								</div>
							</a>
						</h4>
					</div>
					<div id="one" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6" style="padding-right: 0; padding-left: 60px;">
									<input type="checkbox" id="check">
									<span style="font-family: 'Hanna', serif; text-align: right; font-size: 20px;">선택</span>
								</div>
								<div class="col-xs-6" style="padding-right: 60; padding-left: 0px;">
									<button class="btn btn-warning" style="width: 120px;">
										<span style="font-family: 'Hanna', serif; text-align: right; font-size: 15px;">삭제</span>
									</button>
								</div>
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/감튀.png" style="width: 150%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">감자튀김</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
											변경
										</span>	
									</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/환타.png" style="width: 160%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">환타</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
										변경
										</span>	
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end of panel -->
				
				<div class="panel">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#" href="#two">
								<div class="row">
									<div class="col-xs-5">
										<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="width: 110%; background-color: #fff; padding: 5px;"" class="img-rounded">
									</div>
									<div class="col-xs-7" style="margin-top: auto; margin-bottom: auto; padding-left:10px; padding-right: 50px;">
										<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">불고기버거 세트</span>
									</div>
								</div>
							</a>
						</h4>
					</div>
					<div id="two" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6" style="padding-right: 0; padding-left: 60px;">
									<input type="checkbox" id="check">
									<span style="font-family: 'Hanna', serif; text-align: right; font-size: 20px;">선택</span>
								</div>
								<div class="col-xs-6" style="padding-right: 60; padding-left: 0px;">
									<button class="btn btn-warning" style="width: 120px;">
										<span style="font-family: 'Hanna', serif; text-align: right; font-size: 15px;">삭제</span>
									</button>
								</div>
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/감튀.png" style="width: 150%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">감자튀김</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
											변경
										</span>	
									</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/환타.png" style="width: 160%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">환타</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
										변경
										</span>	
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end of panel -->
				
				<div class="panel">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#" href="#three">
								<div class="row">
									<div class="col-xs-5">
										<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="width: 110%; background-color: #fff; padding: 5px;"" class="img-rounded">
									</div>
									<div class="col-xs-7" style="margin-top: auto; margin-bottom: auto; padding-left:10px; padding-right: 50px;">
										<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">불고기버거 세트</span>
									</div>
								</div>
							</a>
						</h4>
					</div>
					<div id="three" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6" style="padding-right: 0; padding-left: 60px;">
									<input type="checkbox" id="check">
									<span style="font-family: 'Hanna', serif; text-align: right; font-size: 20px;">선택</span>
								</div>
								<div class="col-xs-6" style="padding-right: 60; padding-left: 0px;">
									<button class="btn btn-warning" style="width: 120px;">
										<span style="font-family: 'Hanna', serif; text-align: right; font-size: 15px;">삭제</span>
									</button>
								</div>
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/감튀.png" style="width: 150%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">감자튀김</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
											변경
										</span>	
									</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/환타.png" style="width: 160%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">환타</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
										변경
										</span>	
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end of panel -->
				
				<div class="panel">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#" href="#four">
								<div class="row">
									<div class="col-xs-5">
										<img src="${pageContext.request.contextPath}/resources/images/햄버거.png" style="width: 110%; background-color: #fff; padding: 5px;"" class="img-rounded">
									</div>
									<div class="col-xs-7" style="margin-top: auto; margin-bottom: auto; padding-left:10px; padding-right: 50px;">
										<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">불고기버거 세트</span>
									</div>
								</div>
							</a>
						</h4>
					</div>
					<div id="four" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6" style="padding-right: 0; padding-left: 60px;">
									<input type="checkbox" id="check">
									<span style="font-family: 'Hanna', serif; text-align: right; font-size: 20px;">선택</span>
								</div>
								<div class="col-xs-6" style="padding-right: 60; padding-left: 0px;">
									<button class="btn btn-warning" style="width: 120px;">
										<span style="font-family: 'Hanna', serif; text-align: right; font-size: 15px;">삭제</span>
									</button>
								</div>
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/감튀.png" style="width: 150%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">감자튀김</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
											변경
										</span>	
									</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-5" style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/images/환타.png" style="width: 160%; padding: 5px;" class="img-rounded">
								</div>
								<div class="col-xs-7" style="text-align: left; margin-top: auto; margin-bottom: auto;">
									<span style="font-size:25px; color: #000; font-family: 'Hanna', serif;">환타</span>
								</div>
								<div class="col-xs-12" style="text-align: right; margin-top: auto; margin-bottom: auto;">
									<button class="btn btn-lg btn-warning">
										<span style="font-size:15px; color: #000; font-family: 'Hanna', serif;">
										변경
										</span>	
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			<!-- end of panel -->
			</div>
		<!-- end of #bs-collapse  -->
		</div>

		<hr style="border-top-width: 5px; background-color: #fff;">
		<div class="row">
			<div class="col-xs-12" style="text-align: right;">
				<span style="font-size:29px; color: #fff; font-family: 'Hanna', serif;">총 금액: $5,000</span>
			</div>
		</div>
		
		<div class="row" >
			<div class="col-xs-12">
				<button class="btn btn-warning" style="width: 300px; margin-bottom: 30px;">
					<span style="font-size:25px; color: #fff; font-family: 'Hanna', serif;">주문하기</span>
				</button>
			</div>
		</div>
	</div>
</div>