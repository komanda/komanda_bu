$(document).ready ->
	$("#order_quantity").change ->
		update_total()

update_total = () ->
	$("#total").text("$" + $("#order_quantity").val() * parseInt $("#price").attr("price"))
