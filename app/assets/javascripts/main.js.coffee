$(document).ready ->
	setTimeout ->
		$('.notice').slideUp()
	, 3000

	$('#btn-to-productions').click (e)->
		e.preventDefault()
		$('html, body').animate({
	      scrollTop: $("#products").offset().top
	  }, 2000);

	$(document).scroll (e)->
		if $('body').scrollTop() >= ($('.banner').outerHeight() || 1)
			$('#home').removeClass('transparent')
			$('#contact').removeClass('transparent')
		else
			$('#home').addClass('transparent')
			$('#contact').addClass('transparent')