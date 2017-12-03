$(function() {
/*    $("#imgInp").on('change', function(){
        readURL(this);
    });*/

    $('#addSide').click(function(){
    	var sidestr = '<div class="col-sm-4">'
						+ '<input class="side" disabled type="checkbox" style="width: 30px; margin-top: auto; margin-bottom: auto;">'
						+ '<span style="color: #fff; font-size: 20px; font-family: \'Hanna\', serif; margin-top: auto; margin-bottom: auto;">사이다</span>'
						+ '</div>';
						
		$('#sideArea').append(sidestr);
		
    })
    
    $('#addDrink').click(function(){
    	alert("adsf");
    })
    
    $('#setMenu').change(function(){
    	if($("#setMenu").is(":checked")){
    		$(".side").removeAttr("disabled");
    		$(".drink").removeAttr("disabled");
    		$("#pricetext").removeAttr("disabled");
    	} else {
    		$(".side").attr("disabled", "disabled");
    		$(".drink").attr("disabled", "disabled");
    		$("#pricetext").attr("disabled", "disabled");
    	}
    })
    
    $('#saleperoid').change(function(){
    	if($("#saleperoid").is(":checked")){
    		$(".startdate").removeAttr("disabled");
    		$(".enddate").removeAttr("disabled");
    	} else {
    		$(".startdate").attr("disabled", "disabled");
    		$(".enddate").attr("disabled", "disabled");
    	}
    })
});

/*function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
}*/