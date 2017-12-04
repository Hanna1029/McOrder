<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/detailMenu.css">
<script src="${pageContext.request.contextPath}/resources/js/detailMenu.js" type="text/javascript" charset="utf-8"></script>    


<!-- 모달 js css -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"> <!-- CSS reset -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> <!-- Resource style -->
<script src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script> <!-- Modernizr -->

<!-- 20171202_수진 추가 -->
<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-1" style="padding: 0; margin-top: 2%; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
			<div class="col-sm-3" style="text-align: center; margin-top: 2%;" >
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">이벤트 상세보기</span>
			</div>
			<div class="col-sm-8" style="padding: 0; margin-top: 2%; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
		</div>
		
	<!--이미지파일보기  -->
	<div id="contentLeft">
		<div class="row">
		<img src="<%=request.getContextPath()%>/${event.eventImage1}" style="width:60%; margin-top: 20px; margin-left: 10%; text-align: center; margin-bottom: 2%;"/>
		</div>
		<div class="row">
		<img src="<%=request.getContextPath()%>/${event.eventImage2}" style="width:60%; margin-top: 20px; margin-left: 10%; text-align: center; margin-bottom: 2%;"/>
		</div>
	</div>
	
	<div id="contentRight">
		<div class="row">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: 10%; margin-bottom: auto;">제목&nbsp;&nbsp;</span>
			<input id="eventTitle" type="text" 
			style="width: 40%; font-size: 15px; font-family: 'Hanna', serif; 
			margin-top: 10%; margin-bottom: auto;" value="${event.eventTitle}" readonly="readonly">
		</div>

		<div class="row" style="margin-top: 20px;">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">내용&nbsp;&nbsp;</span>
			<input id="eventContent" type="text" style="width: 40%; font-size: 15px; 
			font-family: 'Hanna', serif; margin-top: auto; 
			margin-bottom: auto;" value="${event.eventContent}" readonly="readonly">
		</div>

		
		
	
		
		<div class="row">
			<div class="col-sm-12" style="margin-left: auto; margin-right: auto;">
				
				<a class="btn btn-warning" style="width: 200px; margin-top: 30px;" href="editDetailEvent.htm?eventNum=${event.eventNum}">
					<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">수정</span>
				</a>
				<a class="btn btn-warning" style="width: 200px; margin-top: 30px;" href="deleteEvent.htm?eventNum=${event.eventNum}" >
					<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">삭제</span>
				</a>
			</div>
		</div>
		
		
		</div>
	</div>
	
	<%-- <div id="notice-article-detail" class="article-detail margin-large">
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
		</dl> --%>
	
	

	</div>
