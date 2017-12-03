$(function(){
	$('#ID').focus(function(){
		$('#LID').animate({"top": "5px", "color": "#fff", "font-size": "20px"}, 200);
	})
	
	$('#ID').blur(function(){
		if($("#ID").val() == null || $("#ID").val() == ""){
			$('#LID').animate({"top": "35px", "color": "#000", "font-size": "25px"}, 200);
		}
	})
	
	$('#LID').click(function(){
		$("#ID").focus();
	})
	
	$('#PASSWORD').focus(function(){
		$('#LPASSWORD').animate({"top": "5px", "color": "#fff", "font-size": "20px"}, 200);
	})
	
	$('#PASSWORD').blur(function(){
		if($("#PASSWORD").val() == null || $("#PASSWORD").val() == ""){
			$('#LPASSWORD').animate({"top": "35px", "color": "#000", "font-size": "25px"}, 200);
		}
	})
	
	$('#LPASSWORD').click(function(){
		$("#PASSWORD").focus();
	})
	
	$('#NAME').focus(function(){
		$('#LNAME').animate({"top": "5px", "color": "#fff", "font-size": "20px"}, 200);
	})
	
	$('#NAME').blur(function(){
		if($("#NAME").val() == null || $("#NAME").val() == ""){
			$('#LNAME').animate({"top": "35px", "color": "#000", "font-size": "25px"}, 200);
		}
	})
	
	$('#LNAME').click(function(){
		$("#NAME").focus();
	})
	
	$('#PHONE').focus(function(){
		$('#LPHONE').animate({"top": "5px", "color": "#fff", "font-size": "20px"}, 200);
	})
	
	$('#PHONE').blur(function(){
		if($("#PHONE").val() == null || $("#PHONE").val() == ""){
			$('#LPHONE').animate({"top": "35px", "color": "#000", "font-size": "25px"}, 200);
		}
	})
	
	$('#LPHONE').click(function(){
		$("#PHONE").focus();
	})
	
	$('#ADDRESS').focus(function(){
		$('#LADDRESS').animate({"top": "5px", "color": "#fff", "font-size": "20px"}, 200);
	})
	
	$('#ADDRESS').blur(function(){
		if($("#ADDRESS").val() == null || $("#ADDRESS").val() == ""){
			$('#LADDRESS').animate({"top": "35px", "color": "#000", "font-size": "25px"}, 200);
		}
	})
	
	$('#LADDRESS').click(function(){
		$("#ADDRESS").focus();
	})
	
	$('#EMAIL').focus(function(){
		$('#LEMAIL').animate({"top": "5px", "color": "#fff", "font-size": "20px"}, 200);
	})
	
	$('#EMAIL').blur(function(){
		if($("#EMAIL").val() == null || $("#EMAIL").val() == ""){
			$('#LEMAIL').animate({"top": "35px", "color": "#000", "font-size": "25px"}, 200);
		}
	})
	
	$('#LEMAIL').click(function(){
		$("#EMAIL").focus();
	})
	
})