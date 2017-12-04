<%-- 
   @JSP : manageSales.jsp 
   @Date : 2017-11-28
   @Author : 김수진
   @Desc : 매장별 매출리스트 보기 
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>
<!--
비동기로 매출 단위 바꿀거다 (한나)
-->
<script type="text/javascript">
	$(function () {
		 $('#selectDay').change(function() {
			var data = {selectDay : $('#selectDay').val()};
			console.log(data);
			var _data = JSON.stringify(data);
			$.ajax({
		          type: "POST",
		          url:  "salesOfSelectType.htm",
		          data: _data,
		          contentType : "application/json; charset=UTF-8",
		          dataType: "json",
		          success:function(data){ //callback  
		               console.log("도착 데이터!!!!"+data);
		               $('#salesListBody').empty();
			           $.each(data.salesList, function(index,obj){
			               var opr="";
			               if(obj.salesDate != null){
			               opr += "<tr style='text-align: center;'><td><a href='manageSalesDetail.htm?salesDate="+
			               obj.salesDate+"&selectDay=1'>"+ obj.salesDate +"</a></td>"+
			               "<td>"+obj.totalDailySales+"</td></tr>";
			               }
			               if(obj.nextDay != null){
			            	   opr += "<tr style='text-align: center;'><td><a href='manageSalesDetail.htm?salesDate="+
				               obj.nextDay+"&selectDay=2'>"+ obj.weeklyStartDate + " ~ " + obj.weeklyEndDate +"</a></td>"+
				               "<td>"+obj.totalWeeklySales+"</td></tr>";
			               }
			               if(obj.lastDay != null){
			            	   var date = obj.lastDay;
			            	   var _date = date.substr(0, 7);
			            	   opr += "<tr style='text-align: center;'><td><a href='manageSalesDetail.htm?salesDate="+
				               obj.lastDay+"&selectDay=3'>"+ _date +"</a></td>"+
				               "<td>"+obj.totalMonthlySales+"</td></tr>";
				           }
			               $('#salesListBody').append(opr);
			           });
		            }
		       }); 
		}); 
	});
	
	
	
	function openSalesModal(sDay) {
		
		var data = {selectDay : sDay};
		console.log(data);
		var _data = JSON.stringify(data);
		
		var Date = new Array();
		var Labels = new Array();
		
				$.ajax({
			          type: "POST",
			          url:  "salesOfSelectType.htm",
			          data: _data,
			          contentType : "application/json; charset=UTF-8",
			          dataType: "json",
			          success:function(data){ //callback  
			               console.log("도착 데이터!!!!"+data);
			          	   $('#graphText').css("display", "none");
			               $('#salesListBody').empty();
				           $.each(data.salesList, function(index,obj){
				        	console.log(index);
							console.log(data.salesList.length);
							// 일 단위 매출 그래프 데이터 만들기 
							if (obj.salesDate != null) {
								
								if (data.salesList.length >= 6) {
									if (index > (data.salesList.length - 6)) {
										Date.push(obj.totalDailySales);
										Labels.push(obj.salesDate);
									}
								} else {
									Date.push(obj.totalDailySales);
									Labels.push(obj.salesDate);
								}
							}
							
							// 주 단위 매출 그래프 데이터 만들기
							if (obj.nextDay != null) {
								if (data.salesList.length >= 6) {
									if (index > (data.salesList.length - 6)) {
										Date.push(obj.totalWeeklySales);
										Labels.push(obj.weeklyStartDate + " ~ " + obj.weeklyEndDate);
									}
								} else {
									Date.push(obj.totalWeeklySales);
									Labels.push(obj.weeklyStartDate + " ~ " + obj.weeklyEndDate);
								}
							}
							
							// 월 단위 매출 그래프 데이터 만들기
							if (obj.lastDay != null) {
							    var date = obj.lastDay;
				            	var _date = date.substr(0, 7);
								if (data.salesList.length >= 6) {
									if (index > (data.salesList.length - 6)) {
										Date.push(obj.totalMonthlySales);
										Labels.push(_date);
									}
								} else {
									Date.push(obj.totalMonthlySales);
									Labels.push(_date);
								}
							}
						console.log("Date : " + Date);
						console.log("Labels : " + Labels);

					});
				       <%-- 차트 만들기 --%>
				  		 var ctx = document.getElementById("myChart").getContext('2d');
				  		   console.log("그래프안에 매출액 Labels : " + Labels);
				  		   var myChart = new Chart(ctx, {
				  		    type: 'bar',
				  		    data: {
				  		        labels: Labels,
				  		        datasets: [{
				  		            label: '매출액 추이',
				  		            data: Date,
				  		            backgroundColor: [
				  		                'rgba(255, 99, 132, 0.2)',
				  		                'rgba(54, 162, 235, 0.2)',
				  		                'rgba(255, 206, 86, 0.2)',
				  		                'rgba(75, 192, 192, 0.2)',
				  		                'rgba(153, 102, 255, 0.2)',
				  		                'rgba(255, 159, 64, 0.2)'
				  		            ],
				  		            borderColor: [
				  		                'rgba(255,99,132,1)',
				  		                'rgba(54, 162, 235, 1)',
				  		                'rgba(255, 206, 86, 1)',
				  		                'rgba(75, 192, 192, 1)',
				  		                'rgba(153, 102, 255, 1)',
				  		                'rgba(255, 159, 64, 1)'
				  		            ],
				  		            borderWidth: 1
				  		        }]
				  		    },
				  		    options: {
				  		        scales: {
				  		            yAxes: [{
				  		                ticks: {
				  		                    beginAtZero:true
				  		                }
				  		            }]
				  		        }
				  		    }
				  		});       
				           
				}
			});
	}
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
      <tbody id="salesListBody">
         <c:forEach items="${list}" var="n">
            <tr style="text-align: center;">
            	<td class="salesDate" style="text-align: center;"><a href="manageSalesDetail.htm?salesDate=${n.salesDate}&selectDay=1">${n.salesDate} </a></td>
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
    <div class="modal-dialog" style="margin-top: 200px;">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">매출 그래프 확인</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="pointer-events: none;">
        	<canvas id="myChart" height="50%" width="70%"></canvas>
        	<h1 id="graphText">매출 그래프로 확인하기 밑에 버튼을 클릭해주세요</h1>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" onclick="openSalesModal(1)">일</button>
          <button type="button" class="btn btn-secondary" onclick="openSalesModal(2)">주</button>
          <button type="button" class="btn btn-secondary" onclick="openSalesModal(3)">월</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
</div>
</div>

