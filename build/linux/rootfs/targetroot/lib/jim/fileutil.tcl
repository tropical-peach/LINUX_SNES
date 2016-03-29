#
# (c) WorkWare Systems Pty Ltd 2010
#

# Common file handling functions

# Returns the contents of the given file, or the
# default value if the file can't be opened/read
proc readfile {filename {default_value ""}} {
	set result $default_value
	catch {
		set f [open $filename]
		set result [$f read -nonewline]
		$f close
	}
	return $result
}

# Writes the given value to the file
proc writefile {filename value} {
	set f [open $filename w]
	$f puts -nonewline $value
	$f close
}

# Read lines from a file, setting variable $linevar
# and executing $code for each line
proc foreachline {linevar filename code} {
	set f [open $filename]
	upvar $linevar line
	try {
		while {[$f gets line] >= 0} {
			uplevel $code
		}
	} finally {
		$f close
	}
}

# vi: se syn=tcl ts=4:
