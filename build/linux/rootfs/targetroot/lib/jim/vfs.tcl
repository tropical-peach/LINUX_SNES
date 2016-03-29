#
# (c) WorkWare Systems Pty Ltd 2010
#

# Modifies 'package require' 'open', 'read' and 'close'
# to first look for vfs files.
rename package .package
proc package {cmd args} {
	if {$cmd eq "require"} {
		set filename /lib/jim/[lindex $args 0].tcl
		if {[vfs exists $filename]} {
			# Revisit: we lose source info this way
			return [uplevel #0 [list vfs source $filename]]
		}
	}
	# Fall through to the original
	tailcall .package $cmd {*}$args
}

rename open .open
proc open {name {mode r}} {
	if {$mode eq "r" && [vfs exists $name]} {
		return [lambda cmd name {
			if {$cmd eq "close"} {
				rename [lindex [info level 0] 0] ""
				return
			}
			if {$cmd ne "read"} {
				error "vfs open: only read is supported"
			}
			vfs get $name
		}]
	}
	# Fall through to the original
	tailcall .open $name $mode
}
