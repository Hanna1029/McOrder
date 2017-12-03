<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manageOrder.css">
<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-1" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">이벤트 관리</span>
			</div>
			<div class="col-sm-9" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
		</div>
	</div>
		<table>
		<thead>
			<tr>
				<th class="eventNum" style="text-align: center;">번호</th>
				<th class="eventTitle" style="text-align: center;">제목</th>
				<th class="writer" style="text-align: center;">작성자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="n">
				<tr style="text-align: center;">
					<td class="eventNum">${n.eventNum}</td>
					<td class="eventTitle"><a href="showEventDetailAdmin.htm?eventNum=${n.eventNum}">${n.eventTitle}</a></td>
					<td class="writer">${n.writer}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>	
	<p class="article-comment margin-small">
		<a class="btn-write button" href="regEvent.htm">이벤트 등록</a>
	</p>
</div>