$(document).ready ->
	setTimeout ->
		$('.notice').slideUp()
	, 3000

	$('#btn-to-productions').click (e)->
		e.preventDefault()
		$('html, body').animate({
	      scrollTop: $("#products").offset().top
	  }, 2000);