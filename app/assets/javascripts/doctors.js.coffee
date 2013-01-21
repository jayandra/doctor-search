# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	hospitals = $("#doctor_involvements_attributes_0_hospital_id").html()
	update_hospitals = (wrapper = null) ->
		department = $("#doctor_department_id :selected").text()
		options = $(hospitals).filter("optgroup[label='#{department}']").html()
		if(wrapper == null)
			if options
				$(".hospital_list select").html(options)
			else
				$(".hospital_list select").html("")
		else
			if options
				$(wrapper).find("select").html(options)
			else
				$(wrapper).find("select").html("")



	if( $("#new_doctor").size() == 1 )
		update_hospitals()

	if( $("form").attr("id").match(/edit_doctor/) )
		$(".involvement_list select.grouped_select").each (index) ->
        	content = $(this).find(":selected").parents("optgroup").html()
        	$(this).html(content)

	$("#doctor_department_id").change ->
		update_hospitals()

	$('form.doctors_form').on 'click', '.add_fields', (event) ->
		time = new Date().getTime()
		regexp = new RegExp( $(this).data("id"),'g')
		content = $(this).data('fields').replace(regexp, time)
		$("#multiple_involvements").append( content );
		update_hospitals( $("#multiple_involvements .hospital_list:last") )
		event.preventDefault()

	$('form.doctors_form').on 'click', 'a.remove_involvement', (event) ->
		$(this).parent().find('input._destroy_involvement').val('true')
		$(this).parent().hide()

	$('form.doctors_form').submit (event) ->
		primary_hospital = $(".involvement_list:first").find("select.grouped_select").val()
		$("#doctor_primary_involvement").val(primary_hospital)

		