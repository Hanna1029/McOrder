<%-- 
   @JSP : manageSales.jsp 
   @Date : 2017-11-29
   @Author : 김수진
   @Desc : 매장별 선택날짜 판매리스트 보기 
--%>
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
         <div class="col-sm-3" style="text-align: center;">
            <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">판매리스트</span>
         </div>
         <div class="col-sm-8" style="padding: 0; margin-top: auto; margin-bottom: auto;">
            <hr style="border-top-width: 2px; background-color: #fff; width: 100%">
         </div>
      </div>
   </div>
      <table>
      <thead>
         <tr>
        	<th class="orderStartTime" style="text-align: center;">주문날짜</th>
			<th class="id" style="text-align: center;">주문고객</th>
			<th class="menu" style="text-align: center;">메뉴</th>
			<th class="price" style="text-align: center;">가격</th>
			<th class="orderStartTimest" style="text-align: center;">주문완료시간</th>
   
         </tr>
      </thead>
      <tbody>
         <c:forEach items="${list}" var="n">
            <tr style="text-align: center;">
         		<td class="orderStartTime" style="text-align: center;">${n.orderStartTime}</td>
				<td class="id" style="text-align: center;">${n.id} </td>
				<td class="menu" style="text-align: center;">${n.menu} </td>
				<td class="price" style="text-align: center;">${n.price} </td>
				<td class="orderStartTimest" style="text-align: center;">${n.orderCompleteTimestr} </td>
            </tr>
         </c:forEach>
      </tbody>
   </table>   
</div>

