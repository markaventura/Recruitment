# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#basicinfo_industry_name').autocomplete
	  source: $('#basicinfo_industry_name').data('autocomplete-source')

