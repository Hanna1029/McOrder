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
	
})