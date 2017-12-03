<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/detailMenu.css">
<script src="${pageContext.request.contextPath}/resources/js/detailMenu.js" type="text/javascript" charset="utf-8"></script>
<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-1" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">메뉴 상세보기</span>
			</div>
			<div class="col-sm-9" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
		</div>
	
	<div id="contentLeft">
		<img src="<%=request.getContextPath()%>/${menu.menuImage}" style="width:60%; margin-top: 20px; margin-left: 30%; text-align: center;"/>
	</div>
	<div id="contentRight">
		<div class="row">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">메뉴 이름&nbsp;&nbsp;</span>
			<input id="menuName" type="text" 
			style="width: 40%; font-size: 15px; font-family: 'Hanna', serif; 
			margin-top: auto; margin-bottom: auto;" value="${menu.menuName}" readonly="readonly">
		</div>

		<div class="row" style="margin-top: 20px;">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">메뉴 가격&nbsp;&nbsp;</span>
			<input id="menuPrice" type="text" style="width: 40%; font-size: 15px; 
			font-family: 'Hanna', serif; margin-top: auto; 
			margin-bottom: auto;" value="${menu.price}" readonly="readonly">
		</div>

		<div class="row" style="margin-top: 20px;">
			<span
				style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">영양
				정보&nbsp;&nbsp;</span>
			<%-- <input id="menuPrice" type="text" style="width: 40%; font-size: 15px; 
			font-family: 'Hanna', serif; margin-top: auto; 
			margin-bottom: auto;" value="${menu.weight}" readonly="readonly"> --%>


			<table style="width:100%">
				<thead>
					<tr>
						<th style="text-align: center;">중량</th>
						<th style="text-align: center;">열량</th>
						<th style="text-align: center;">단백질</th>
						<th style="text-align: center;">나트륨</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${menu}" var="menu">
						<tr style="text-align: center;">
							<td style="text-align: center;">${menu.weight}</td>
							<td style="text-align: center;">${menu.calorie}</td>
							<td style="text-align: center;">${menu.protein}</td>
							<td style="text-align: center;">${menu.natrium}</td>
							</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

		<div class="row" style="margin-top: 20px;">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">판매&nbsp;기간&nbsp;</span>
		</div>
		
		<div class="row" style="padding-left: 25px;">
			<input class="startdate" type="date" style="width: 20%; height: 30px;" disabled value="${menu.startDate}" readonly="readonly" >
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">&nbsp;~&nbsp;</span>
			<input class="enddate" type="date" style="width: 20%; height: 30px;" disabled value="${menu.endDate}" readonly="readonly">
		</div>
		
		<div class="row">
			<div class="col-sm-12" style="margin-left: auto; margin-right: auto;">
				<button class="btn btn-warning" style="width: 200px; margin-top: 30px;">
					<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">수정</span>
				</button>
				<button class="btn btn-warning" style="width: 200px; margin-top: 30px;">
					<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">삭제</span>
				</button>
			</div>
		</div>
		</div>
	</div>
</div>