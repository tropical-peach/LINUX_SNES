if {[file exists /tmp/config.modified]} {
	html eval div class=modified {
		html eval a href=config "title=Configuration Modified" {
			html tag img src=/img/config-modified.png
		}
	}
}
