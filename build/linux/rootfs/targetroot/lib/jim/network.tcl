# 
# (c) WorkWare Systems Pty Ltd 2010
#

# Convert a subnet (0-32) to a netmask (0.0.0.0-255.255.255.255)
#
proc netmask {subnet} {
	set quads {}
	if {$subnet == 0} {
		set netmask 0
	} elseif {$subnet > 32} {
		error "Invalid subnet: $subnet"
	} else {
		set netmask [expr {~((1 << (32 - $subnet)) - 1)}]
	}
	for {set i 0} {$i < 32} {incr i 8} {
		lappend quads [expr {($netmask >> (24 - $i)) & 0xFF}]
	}
	return [join $quads .]
}

# Convert a netmask to a subnet
#
proc subnet {netmask} {
	set sum [ipv4_int $netmask]
	set subnet 0
	for {set i 0} {$i < 32} {incr i} {
		if {($sum & (1 << $i))} {
			set subnet [expr {32 - $i}]
			break
		}
	}

	#puts "$netmask -> $subnet"

	return $subnet
}

# Convert an IPv4 address to a 32 bit integer 
#
proc ipv4_int {ipaddr} {
	set sum 0
	foreach q [split $ipaddr .] {
		set sum [expr {$sum * 256 + $q}]
	}
	return $sum
}
