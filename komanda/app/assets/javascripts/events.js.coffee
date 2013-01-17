$(document).ready ->
	join()
	datepicker()
	add_links_to_pictures()
	close_picture_modal_with_esc()
	attach_left_right_keys()
	
datepicker = () ->
	$(".date-picker").datepicker { dateFormat: "yy-mm-dd", minDate: new Date(), maxDate: "+1y" }
	
join = () ->
	if !$("#join").hasClass('disabled')
		$("#join").click (event) ->
			event.preventDefault()
			$("#join").html("<i class='icon-spinner icon-spin icon-large'>")
		
			$.ajax
				type: 'get'
				url: $("#join").attr("href")
				timeout: 8000
				dataType: 'json'
				success: (json) ->
					$("#error").slideUp()
					$("#join").html("Going").attr("href", "#").addClass("disabled")
					$("#going-count").text(json.count).effect('highlight')
					$("#going").prepend("<li><a href=" + 
															 json.profile_url + "><img src=" + 
															 json.image_url + "></a></li>")
				error: ->
					$("#error").slideDown()
					$("#join").html("Join")

add_links_to_pictures = () ->
	imgs = []
	items = $("#pictures").children()
	
	for i in [0..(items.length - 1)]
		imgs[i] = $(items[i]).attr("alt")
		
	for i in [0..(items.length - 1)]
		$(items[i]).click (event) ->
			event.preventDefault()
			$("#picture-modal img").attr("src", $(this).attr("alt"))
			index = imgs.indexOf($(this).attr("alt"))
			$("#picture_index").text(index + 1) 

			$("#next-button").click ->
				$("#picture-modal img").attr("src", imgs[(index + 1)%imgs.length])
				index++
				$("#picture_index").text(index % imgs.length + 1)

			$("#prev-button").click ->
				if (index == 0) 
					index = imgs.length;
					$("#picture-modal img").attr("src", imgs[index - 1]) 

				else 
					$("#picture-modal img").attr("src", imgs[(index - 1)%imgs.length])
				
				index--
				$("#picture_index").text(index % imgs.length + 1)
			
			$("#picture-modal").show()

attach_left_right_keys = () ->
	$(this).keydown (event) ->
		if event.keyCode == 37
			console.log "left pressed"
			$("#prev-button").click()

	$(this).keydown (event) ->
		if event.keyCode == 39
			console.log("right pressed")
			$("#next-button").click()

close_picture_modal_with_esc = () ->
	$("#close-picture-modal").click (event) ->
		event.preventDefault()
		$("#picture-modal").hide()

	$(this).keydown (event) ->
		if event.keyCode == 27
			console.log("esc pressed")
			$("#picture-modal").hide()

	