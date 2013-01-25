# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$(".carousel").carousel interval: 2000

	$("#myCarousel").bind "slid", ->
	  i = $("#myCarousel .active").index()
	  $("#hospital_descriptions .hospital_description").removeClass "active_description"
	  $("#hospital_descriptions .hospital_description").eq(i).addClass "active_description"
