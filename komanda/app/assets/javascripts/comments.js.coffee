$(document).ready ->
	post_comment()
	
post_comment = () ->
	$("#post").click (event) ->
		event.preventDefault()
		content = $("#content").val()
		$("#content").val('')
		
		if content.length > 0
			$("#comment-error").hide()
			$("#empty-comment-error").hide()
			$("#post").html("<i class='icon-spinner icon-spin icon-large'></i>")
	
			$.ajax
				type: 'post'
				url: $("#post").attr("href")
				data: { content: content }
				timeout: 8000
				dataType: 'json'
				success: (json) ->
					append_comment(json)
				error: ->
					$("#comment-error").slideDown('fast')
		else
				$("#empty-comment-error").slideDown('fast')
				
append_comment = (json) ->
	if json.no_content
		$("#error-empty").slideDown()
	else					
		$("#comments").append("<article id=" + json.dom_id + 
			" class='media comment'><a href=" + json.profile_url + 
			" target='_blank' class='pull-left'><img src=" + json.image_url + 
			" class='img-rounded'></a><div class='media-body'><div class='media-heading'>
			<a href=" + json.profile_url + " target='_blank'>" + json.name + 
			"</a><small class='muted'>just now</small></div>" + json.content + 
			"</div></article>")
		$("#" + json.dom_id).effect('highlight', {color: '#FCF8E3'}, 2000)
		$("#post").html("Post")
		
		