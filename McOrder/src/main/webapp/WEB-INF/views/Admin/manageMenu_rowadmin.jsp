<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manageMenu.css">

<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-1" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">메뉴 관리</span>
			</div>
			<div class="col-sm-9" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
		</div>
	</div>
				<table>
		<thead>
			<tr>
				<th style="text-align: center;">판매할 제품</th>
				<th style="text-align: center;">지점코드</th>
			</tr>
		</thead>
		<tbody id="menuListBody">
		
		<c:forEach items="${list}" var="menu">
			<tr style="text-align: center;">
				<td><a href="detailMenu.htm?menuName=${menu.menuName}">${menu.menuName }</a></td>
				<td style="text-align: center;">${menu.branchCode}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
