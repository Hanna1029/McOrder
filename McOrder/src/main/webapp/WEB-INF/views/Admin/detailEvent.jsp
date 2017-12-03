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
	
	<div id="notice-article-detail" class="article-detail margin-large">
		<dl class="article-detail-row">
			<dt class="article-detail-title">제목</dt>
			<dd class="article-detail-data">${event.eventTitle}</dd>
		</dl>
		<dl class="article-detail-row">
			<dt class="article-detail-title">내용</dt>
			<dd class="article-detail-data">${event.eventContent}</dd>
		</dl>
		<dl class="article-detail-row half-row">
			<dt class="article-detail-title">작성자</dt>
			<dd class="article-detail-data half-data">${event.writer}</dd>
		</dl>
		<dl class="article-detail-row">
			<dt class="article-detail-title">첨부파일</dt>
			<dd class="article-detail-data">
				${event.eventImage}
			</dd>
		</dl>
	
	
		<div class="article-content">${notice.content}</div>
		
				
		</div>
	</div>
