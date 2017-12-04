<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manageMenu.css">

<!-- 체크박스 처리 -->
<!-- <script>
	function checkboxArr(){
		var checkArr = [];   	//배열 초기화
		$("input[name='checkbox']:checked").each(function(i))){
			checkArr.push($(this).val());			//체크된 것만 뽑아서 Arr에 push
		}
		
		$.ajax({
			url: 'manageMenu_rowadmin.htm',
			type : 'post',
			dataType : 'text',
			data : {valueArr: checkArr}
		});
	}
</script> -->


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
	<form action="" method="post" id="frm">
				<table>
		<thead>
			<tr>
				<th style="text-align: center;">판매할 제품</th>
				<th style="text-align: center;">이름</th>
				<th style="text-align: center;">종류</th>
				<th style="text-align: center;">판매시작일</th>
				<th style="text-align: center;">판매종료일</th>
				<th style="text-align: center;">판매가격</th>
				<th style="text-align: center;">대표이미지</th>
			</tr>
		</thead>
		<tbody id="menuListBody">
		
		<c:forEach items="${menuList}" var="menu">
			<tr style="text-align: center;">
				<td><input type="checkbox" name="checkbox" value="${menu.menuName}"></td>
				<td><a href="detailMenu.htm?menuName=${menu.menuName}">${menu.menuName }</a></td>
				<td>
				<c:choose>
					<c:when test="${menu.menuType == '1'}">
						햄버거
					</c:when>
					<c:when test="${menu.menuType == '2'}">
						음료
					</c:when>
					<c:when test="${menu.menuType == '3'}">
						사이드
					</c:when>
					<c:when test="${menu.menuType == '4'}">
						세트
					</c:when>
				</c:choose>
				</td>
				<td>${menu.startDate}</td>
				<td style="text-align: center;">
					${menu.endDate}
				</td>
				<td style="text-align: center;">
					${menu.price }
				</td>
				<td style="text-align: center;">
				<img src="<%=request.getContextPath()%>/${menu.menuImage }" style="width: 100px; height: 100px">
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="row">
		<div class="col-sm-12" style="margin-left: auto; margin-right: auto;">
			<button class="btn btn-warning" type="submit" style="width: 200px; margin-top: 30px;">
				<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">등록</span>
			</button>
			<button class="btn btn-warning" style="width: 200px; margin-top: 30px;">
				<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">취소</span>
			</button>
		</div>
	</div>	
	</form>
</div>
