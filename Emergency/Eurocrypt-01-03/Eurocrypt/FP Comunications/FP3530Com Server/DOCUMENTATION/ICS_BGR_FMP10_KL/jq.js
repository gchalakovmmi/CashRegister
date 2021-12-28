$(document).ready(function(){
	$('#descr label span').click(function() {
		$(this).parent().parent().find('h2').slideToggle();
	});
	$('#param label span').click(function() {
	  $(this).parent().parent().find('div').slideToggle();
	});
	$('#examples label span').click(function() {
	  $(this).parent().parent().find('div').slideToggle();
	});
});
