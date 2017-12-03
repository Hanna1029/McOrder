$(function(){
	$('.slider').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 3,
		autoplay: true,
		autoplaySpeed: 2000
	});
	
	$('.collapse.in').prev('.panel-heading').addClass('active');
	$('#accordion, #bs-collapse').on('show.bs.collapse', function(a) {
		$(a.target).prev('.panel-heading').addClass('active');
	}).on('hide.bs.collapse', function(a) {
		$(a.target).prev('.panel-heading').removeClass('active');
	});
})