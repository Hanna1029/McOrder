<%-- 
   @JSP : manageSales.jsp 
   @Date : 2017-11-28
   @Author : 김수진
   @Desc : 매장별 매출리스트 보기 
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
비동기로 매출 단위 바꿀거다 (한나)
-->
<script type="text/javascript">

	$(function () {
		
		/* $('#selectDay').change(function() {
			
			var data = $('#selectDay').val();
			console.log(data);
			
			$.ajax(function () {
				
				
				
			});
		}); */
		
		
	});
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manageOrder.css">
<div id="content">
   <div class="container">
      <div class="row">
         <div class="col-sm-1" style="padding: 0; margin-top: auto; margin-bottom: auto;">
            <hr style="border-top-width: 2px; background-color: #fff; width: 100%">
         </div>
         <div class="col-sm-3" style="text-align: center;">
            <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">매출 관리</span>
         </div>
         <div class="col-sm-8" style="padding: 0; margin-top: auto; margin-bottom: auto;">
            <hr style="border-top-width: 2px; background-color: #fff; width: 100%">
         </div>
      </div>
   </div>

	<select id="selectDay" name="selectDay">
		<option value="1">일</option>
		<option value="2">주</option>
		<option value="3">월</option>
	</select>
	<br>
	<table>
      <thead>
         <tr>
       	  	<th class="salesDate" style="text-align: center;">날짜</th>
			<th class="totalDailySales" style="text-align: center;">총 금액</th>
   
         </tr>
      </thead>
      <tbody>
         <c:forEach items="${list}" var="n">
            <tr style="text-align: center;">
            	<td class="salesDate" style="text-align: center;"><a href="manageSalesDetail.htm?salesDate=${n.salesDate}">${n.salesDate} </a></td>
				<td class="totalDailySales" style="text-align: center;" >${n.totalDailySales }</td>
        
            </tr>
         </c:forEach>
      </tbody>
   </table>   
  <div class="container">
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
   그래프 보기
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          Modal body..  이거하나로 비동기해서 empty하고 값을 계속 새로 주면 한 모달 창으로...
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">일</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">주</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">월</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
</div>
</div>

