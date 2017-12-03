<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css"> <!-- Resource style -->
<script src="${pageContext.request.contextPath}/resources/js/join.js"></script> <!-- Modernizr -->
<div class="container" style="margin-top: 80px;">
	<div class="row">
		<div class="col-xs-12" style="text-align: center;">
			<span style="color:#fff; font-family: 'Hanna', serif; font-size: 40px;">회원가입</span>
		</div>
		
	</div>	
	<form action="" method="POST">
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
			<span id="LID" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
				ID
			</span>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<input type="text" id="id" name="id" style="width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
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
					<input type="password" id="password" name="password" style="width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
				</center>
			</div>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
			<span id="LNAME" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
				NAME
			</span>
		</div>
		
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<input type="text" id="name" name="name" style="width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
				</center>
			</div>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
			<span id="LBIRTH" style="color: #fff; font-family: 'Hanna', serif; font-size: 20px; left: 40px; top: 5px; position: relative; z-index:3">
				BIRTH
			</span>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<input type="date" id="birth" name="birth" style="font-family: 'Hanna', serif; width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
				</center>
			</div>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
			<span id="LEMAIL" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
				EMAIL
			</span>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<input type="text" id="email" name="email" style="width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
				</center>
			</div>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
			<span id="LADDRESS" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
				ADDRESS
			</span>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<input type="text" id="address" name="address" style="width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
				</center>
			</div>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; height: 36px;">
			<span id="LPHONE" style="color: #000; font-family: 'Hanna', serif; font-size: 25px; left: 40px; top: 35px; position: relative; z-index:3">
				PHONE
			</span>
		</div>
		
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<input type="text" id="phoneNum" name="phoneNum" style="width: 250px; padding-left: 10px; border-radius: 5px; font-size: 20px; border:none; outline: none;">
				</center>
			</div>
		</div>
		<div class="col-xs-12" style="margin-left: auto; margin-right: auto; z-index:2;">
			<div style="z-index: 1;">
				<center>
					<span style="color: #fff; font-family: 'Hanna', serif; font-size: 15px; margin-top: 2px;">
						(000-0000-0000 형태로 입력해주세요)
					</span>
				</center>
			</div>
		</div>
		
		<div class="col-xs-12" style="margin-top: 10px;">
			<hr style="border-top-width: 5px;">
			<center>
				<input type="submit" class="btn btn-warning" value="회원가입" style="margin-top: 15px; margin-bottom: 20px; width: 200px; font-size: 20px; color: #fff; font-family: 'Hanna', serif;">
			</center>
		</div>
		
	</form>
</div>	