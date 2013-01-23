$(document).ready ->
	post_button_loading_effect()
	fix_comment_toggle()
	fix_star_link()

post_button_loading_effect = () ->
	$("#submit").click ->
		toggle_loading_effect()

toggle_loading_effect = () ->
	$("#submit").toggle()
	$("#dummy-button").toggle()
	
fix_comment_toggle = () ->
	$(".comment-toggle").click (event) ->
		event.preventDefault()
		$(this).parent().siblings().find(".loading-comments").first().show()
		
fix_star_link = () ->
	$(".star").click (event) ->
		console.log($(this).attr("src"))
		star = $(this).attr("src")
		if star == "star.png"
			$(this).attr("src", "/assets/star_empty.png")
		else
			$(this).attr("src", "/assets/star.png")