# Miscellaneous petalinux-specific routes

package require fileutil

# Help with host testing
proc root {} {
	return [env TOP ""]
}

set FILE(sshhostkey) [cgi configdir]/dropbear_host_key
set FILE(sshauthkeys) [root]/.ssh/authorized_keys

proc set_modified {} {
	writefile [root]/var/run/config.modified 1
}

proc is_modified {} {
	file exists [root]/var/run/config.modified
}

proc clear_modified {} {
	file delete [root]/var/run/config.modified
}

proc save_modified {} {
	exec flatfsd -s
	clear_modified
}

proc pid_alive {filename} {
	set alive 0
	set pid [readfile $filename 0]
	if {$pid != 0} {
		catch {
			kill -0 $pid
			set alive 1
		}
	}
	return $alive
}

proc set_rebooting {reason} {
	writefile [root]/var/run/rebooting $reason
}

proc reboot_system {reason} {
	set_rebooting $reason
	set pid [exec reboot -d 2 </dev/null >/dev/null &]
	writefile [root]/var/run/rebooting.pid $pid
	cgi nextpage reboot
}

# Returns 1 if the device is rebooting, and stores a message in reasonvar if given
proc is_rebooting {{reasonvar {}}} {
	if {![pid_alive [root]/var/run/rebooting.pid]} {
		return 0
	}
	if {$reasonvar ne ""} {
		upvar $reasonvar reason
	}
	expr {$reason ne ""}
}

proc show_empty_field {field} {
	if {[cgi get $field] == ""} {
		cgi setdisplay value "-none-"
	}
}

# Generic tcl function to filter lines in file
proc foreachlineupdate {linevar filename code} {
	set f [open $filename]
	upvar line $linevar
	set output {}
	while {[gets $f line] >= 0} {
		uplevel $code
		lappend output $line
	}
	close $f
	set f [open $filename w]
	if {[llength $output]} {
		puts $f [join $output \n]
	}
	close $f
}
