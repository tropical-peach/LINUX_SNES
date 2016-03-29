function open_help_window(url)
{
	var help_window_attributes = "height=600,width=400,scrollbars=yes,menubar=no,toolbar=no,status=no,resizable=yes"
	var new_window;
	new_window = window.open(url, "helpwindow", help_window_attributes);
	return false;
}


function open_code_window(url)
{
	var code_window_attributes = "height=600,width=600,scrollbars=yes,menubar=no,toolbar=no,status=no,resizable=yes"
	var new_window;
	new_window = window.open(url, "codewindow", code_window_attributes);
	return false;
}

function open_main_window(url) {
	if (window.opener) {
		window.opener.location=url
	}
	else {
		var new_window = window.open(url, "mainwindow");
		new_window.name = "mainwindow";
	}
}
