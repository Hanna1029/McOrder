<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/registMenu.css">
<script src="${pageContext.request.contextPath}/resources/js/registMenu.js" type="text/javascript" charset="utf-8"></script>
<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-1" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">메뉴 등록</span>
			</div>
			<div class="col-sm-9" style="padding: 0; margin-top: auto; margin-bottom: auto;">
				<hr style="border-top-width: 2px; background-color: #fff; width: 100%">
			</div>
		</div>
	</div>
	<div id="contentLeft">
		<input type='file' id="imgInp" style="margin-top:20px; color: #fff; font-size: 15px; font-family: 'Hanna', serif; margin-left: 30%;"/>
		<img id="blah" src="#" style="width:60%; margin-top: 20px; margin-left: 30%;"/>
	</div>
	<div id="contentRight">
		<div class="row">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">메뉴 이름&nbsp;&nbsp;</span>
			<input id="menuName" type="text" style="width: 40%; font-size: 15px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">
		</div>

		<div class="row" style="margin-top: 20px;">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">메뉴 가격&nbsp;&nbsp;</span>
			<input id="menuPrice" type="text" style="width: 40%; font-size: 15px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">
		</div>
		
		<div class="row" style="margin-top: 20px;">
			<input id="setMenu" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">세트메뉴 여부&nbsp;&nbsp;</span>
		</div>
		
		<div class="xx">
			<div id="drinkLeft">
				<div class="row">
					<div class="col-sm-12">
						<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">음료수</span>
					</div>
					<div class="col-sm-12">
						<button class="btn btn-warning" style="width: 80%;" id="addDrink">
							<span style="color: #fff; font-size: 140%; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">추가</span>
						</button>
					</div>
				</div>
			</div>
			<div id="drinkRight">
				<div class="row">
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" checked disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">콜라</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="drink" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div id="sideLeft">
				<div class="row">
					<div class="col-sm-12">
						<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이드</span>
					</div>
					<div class="col-sm-12">
						<button class="btn btn-warning" style="width: 80%;" id="addSide">
							<span style="color: #fff; font-size: 140%; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">추가</span>
						</button>
					</div>
				</div>
			</div>
			<div id="sideRight">
				<div class="row" id="sideArea">
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" checked disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">감자튀김</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">감자튀김</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">감자튀김</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
					<div class="col-sm-4">
						<input class="side" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;" disabled>
						<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">사이다</span>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div id="setPrice">
				<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">세트 가격</span>
			</div>
			<input id="pricetext"  type="text" disabled style="width: 40%; font-size: 15px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">
		</div>
	
		<div class="row" style="margin-top: 20px;">
			<input id="saleperoid" type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;">
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">판매기간 설정&nbsp;&nbsp;</span>
		</div>
		
		<div class="row" style="padding-left: 25px;">
			<input class="startdate" type="date" style="width: 20%; height: 30px;" disabled>
			<span style="color: #fff; font-size: 25px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">&nbsp;~&nbsp;</span>
			<input class="enddate" type="date" style="width: 20%; height: 30px;" disabled>
		</div>
		
		<div class="row">
			<div class="col-sm-12" style="margin-left: auto; margin-right: auto;">
				<button class="btn btn-warning" style="width: 200px; margin-top: 30px;">
					<span style="color: #fff; font-size: 20px; font-family: 'Hanna', serif; margin-top: auto; margin-bottom: auto;">등록</span>
				</button>
			</div>
		</div>
		
	</div>
</div>