# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$(".carousel").carousel interval: 2000

	$("#myCarousel").bind "slid", ->
	  i = $("#myCarousel .active").index()
	  $("#hospital_descriptions .hospital_description").removeClass "active_description"
	  $("#hospital_descriptions .hospital_description").eq(i).addClass "active_description"

	$("#search_department").typeahead
		source: specialities
		minLength: 3

  $("#search_hospital").typeahead
    source: hospitals
    minLength: 3

  $("#search_doctor").typeahead
	  source: (query, process) ->
	    $.ajax
	      url: "/searches/doctors_typeahead.json"
	      type: "GET"
	      data: {query : $("#search_doctor").val();}
	      dataType: "JSON"
	      success: (results) ->
	        return process(results)
	  minLength:3

