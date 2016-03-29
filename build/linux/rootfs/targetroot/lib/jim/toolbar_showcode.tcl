set path source/$page.page

if {[file exists ../$path]} {
	set path ../$path
} elseif {![vfs exists $path]} {
	return
}

html eval div class=code_link {
	set url [cgi urlencode showcode path $path]
	html str a id=code_link href=$url "onclick=return open_code_window('$url')" target=codewindow "View Code"
}
