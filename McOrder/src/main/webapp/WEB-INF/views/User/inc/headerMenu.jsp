<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/component.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/demo.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/normalize.css" type="text/css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">\
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

<div id="header">
	<div class="container">
		<ul id="gn-menu" class="gn-menu-main">
			<li class="gn-trigger">
				<a class="gn-icon gn-icon-menu" style="padding-top: 35px;"><span>Menu</span></a>
				<nav class="gn-menu-wrapper">
					<div class="gn-scroller">
						<ul class="gn-menu">
							<li class="gn-search-item">
								<input placeholder="Search" type="search" class="gn-search">
								<a class="gn-icon gn-icon-search"><span>Search</span></a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/index.htm" class="gn-icon gn-icon-download">메인화면</a>
								<ul class="gn-submenu">
									<li><a href="${pageContext.request.contextPath}/User/mainmenu.htm" class="gn-icon gn-icon-illustrator">매장QR코드 찍었을때</a></li>
									<li><a href="${pageContext.request.contextPath}/User/selectMenu.htm" class="gn-icon gn-icon-photoshop">메뉴 선택시</a></li>
									<li><a href="${pageContext.request.contextPath}/User/menuDetail.htm" class="gn-icon gn-icon-photoshop">메뉴 디테일</a></li>
								</ul>
							</li>
							<li><a href="${pageContext.request.contextPath}/User/shoppingCart.htm" class="gn-icon gn-icon-help">장바구니</a></li>
							<li>
								<a class="gn-icon gn-icon-archive"></a>
								<ul class="gn-submenu">
									<li><a href="${pageContext.request.contextPath}/User/map.htm" class="gn-icon gn-icon-pictures">지도</a></li>
									<li><a href="${pageContext.request.contextPath}/User/join.htm" class="gn-icon gn-icon-videos">회원가입</a></li>
									<li><a href="${pageContext.request.contextPath}/login.htm" class="gn-icon gn-icon-videos">로그인</a></li>
									<li><a href="${pageContext.request.contextPath}/logout.htm" class="gn-icon gn-icon-videos">로그아웃</a></li>
								</ul>
							</li>
						</ul>
					</div><!-- /gn-scroller -->
				</nav>
			</li>
			<center>
				<img class="macimg" src="${pageContext.request.contextPath}/resources/images/맥도날드.png" style="margin-top: 5px; width:15%; ">
			</center>
		</ul>
		
	</div><!-- /container -->
	
	<script src="${pageContext.request.contextPath}/resources/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/gnmenu.js"></script>
	<script>
		new gnMenu( document.getElementById( 'gn-menu' ) );
	</script>
</div>