$(document).ready ->
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
