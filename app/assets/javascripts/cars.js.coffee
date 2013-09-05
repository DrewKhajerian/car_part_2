# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	condition = true
	$('.vehicle-type').click ->
		if condition
	  	$(this).parent('.types').find('#car-table').slideDown('slow')
	  	condition = false
	  else
	  	$(this).parent('.types').find('#car-table').slideUp('slow')
	  	condition = true

	$('.display-all').click ->
		if condition 
			$('.types #car-table').slideDown('slow')
			$('.display-all').text('Close All')
			condition = false
		else
			$('.types #car-table').slideUp('slow')
			$('.display-all').text('Display All')
			condition = true

