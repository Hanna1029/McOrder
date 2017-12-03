<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manageOrder.css">
<script>

	function completeOrder(seq) {
		console.log("왔나 orderNum " + seq);
		var data = {orderNum : seq};
		var _data = JSON.stringify(data); 
		console.log("출발 데이터!!"+ _data);
	      $.ajax({
	          type: "POST",
	          url:  "completeOrderList.htm",
	          data: _data,
	          contentType : "application/json; charset=UTF-8",
	          dataType: "json",
	          success:function(data){ //callback  
	               console.log("도착 데이터!!!!"+data);
	               $('#orderListBody').empty();
		           $.each(data.orderList, function(index,obj){
		               var opr="";
		               opr += "<tr style='text-align: center;'><td>"+obj.orderNum+"</td><td>"+obj.id+"</td><td>"+obj.menu+"</td>";
		               opr += "<td style='text-align: center;'>"+obj.phoneNum+"</td><td style='text-align: center;'>";
		               if(obj.orderComplete == 0){
		            	   opr += "<button id='orderButton' class='btn btn-warning' onclick='completeOrder("+obj.orderNum+")'>주문완료하기</button></td>";
		               }else{
		            	   opr += obj.orderCompleteTimestr+"</td>";
		               }
		               $('#orderListBody').append(opr);
		               
		           });
	            }
	       }); 
	}

</script>
<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-1" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">주문 관리</span>
			</div>
			<div class="col-sm-9" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
		</div>
	</div>
		<table>
		<thead>
			<tr>
				<th style="text-align: center;">주문번호</th>
				<th style="text-align: center;">주문자</th>
				<th style="text-align: center;">주문내역</th>
				<th style="text-align: center;">연락처</th>
				<th style="text-align: center;">주문완료</th>
			</tr>
		</thead>
		<tbody id="orderListBody">
		
		<c:forEach items="${orderList}" var="order">
			<tr style="text-align: center;">
				<td>${order.orderNum }</td>
				<td>${order.id }</td>
				<td>${order.menu}</td>
				<td style="text-align: center;">
					${order.phoneNum}
				</td>
				<td style="text-align: center;">
				<c:choose>
					<c:when test="${order.orderComplete == '0'}">
						<button id="orderButton" onclick="completeOrder(${order.orderNum})" class="btn btn-warning">주문완료하기</button>
					</c:when>
					<c:otherwise>
						${order.orderCompleteTimestr}
					</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<!-- 페이징처리 -->	
 	<%--  
	 <center>
	 <div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="manageOrder.htm?page=${pageMaker.startPage-1}">&laqno;</a></li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx" >
				<li <c:out value="${pageMaker.cri.page==idx?'class=active':'' }"/>>
					<a href="manageOrder.htm?page=${idx}">${idx}</a>
				</li>
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage>0 }">
				<li><a href="manageOrder.htm?page=${pageMaker.endPage+1}">&raqno;</a></li>
			</c:if>
		</ul>
	</div> 
	</center>   --%>
</div>