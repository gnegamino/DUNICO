function build_message_box(id,string,status)
{
	var dom = "<div class='lblmsg " + status + "'>"+string+"</div>";
	$('#'+id).html(dom);
}

function build_error_message(errors)
{
	var string = '';

	for (var i = 0; i < errors.length; i++) {
		string += errors[i]+"<br/>";
	};

	return string;
}

function clear_message_box()
{
	$('#messagebox_1').removeClass().html('');
	$('#messagebox_2').removeClass().html('');
	$('#messagebox_3').removeClass().html('');
}