<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<script src="${pageContext.request.contextPath}/resources/js/login.js"></script> <!-- Modernizr -->
<div id="content">
	<div class="container" style="margin-top: 80px;">
		<div class="row">
			<div class="col-xs-12" style="text-align: center;">
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 40px;">로그인</span>
			</div>
			
		</div>	
		<c:url value="/login" var="loginurl"></c:url>
		<form action="${loginurl}" method="post">
			<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
				<span id="LID" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
					ID
				</span>
			</div>
			
			<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
				<div style="z-index: 1;">
					<center>
						<input type="text" id="username" name="username" style="width: 250px; padding-left: 16px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
					</center>
				</div>
			</div>
			
			<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
				<span id="LPASSWORD" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
					PASSWORD
				</span>
			</div>
			
			<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
				<div style="z-index: 1;">
					<center>
						<input type="text" id="password" name="password" style="width: 250px; padding-left: 16px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
					</center>
				</div>
			</div>
			
			<div class="col-xs-12" style="margin-top: 10px;">
				<hr style="border-top-width: 5px;">
				<center>
					<input type="submit" class="btn btn-warning" value="로그인" style="margin-top: 15px; margin-bottom: 30px; width: 200px; font-size: 20px; color: #fff; font-family: 'Hanna', serif;">
				</center>
			</div>
		</form>
		
		<div class="col-xs-12">
			<span style="color: #fff; font-family: 'Hanna', serif; font-size: 15px;">
				아이디를 잊어버리셨나요?
			</span>
			<a href="${pageContext.request.contextPath}/findID.htm">
				<span id="LPASS" style="color: #fff; font-family: 'Hanna', serif; font-size: 15px;">
					아이디 찾기 
				</span>	
			</a>
			<span style="color: #fff; font-family: 'Hanna', serif; font-size: 15px;">
				|
			</span>	
			<a href="${pageContext.request.contextPath}/findPassword.htm">
				<span id="LPASS" style="color: #fff; font-family: 'Hanna', serif; font-size: 15px;position: relative;">
					비밀번호 찾기
				</span>	
			</a>
		</div>
		
		<div class="col-xs-12">
			<span style="color: #fff; font-family: 'Hanna', serif; font-size: 15px;">
				아이디가 없으신가요?
			</span>
			<a href="${pageContext.request.contextPath}/join.htm">
				<span style="color: #fff; font-family: 'Hanna', serif; font-size: 15px;">
					회원가입 하기
				</span>
			</a>
		</div>
		
		<c:if test="${param.error != null}">
			<div>
				로그인 실패<br>
				 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
      				이유 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
    	 		</c:if>
			</div>
		</c:if>
		
	</div>	
</div>