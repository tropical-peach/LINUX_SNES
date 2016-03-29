#
# (c) WorkWare Systems Pty Ltd 2010
#

# Tcl package to provide general support for tables.

# Compare strings
proc cmp_str {val1 val2} {
	return [string compare $val1 $val2]
}

# Compare strings nocase
proc cmp_str_nocase {val1 val2} {
	return [string compare -nocase $val1 $val2]
}

# Compare numerically
proc cmp_number {val1 val2} {
	return [expr {$val1 - $val2}]
}

# Sorts the given list according to the sort specification, which is
# a list of n * 3 elements as follows:
#   list-index sort-type sort-order
#
# sort-type is one of str, str_nocase, number
# (or you can define your own type with a cmp_<type> proc)
#
# sort-order is 1 for increasing or -1 for decreasing
#
# Use this as follows:
#
# lsort -command "list_sorter $sortinfo" $list
#
proc list_sorter {sortinfo l1 l2} {
	# Foreach each 3-tuple...
	foreach {index type order} $sortinfo {
		# Compare using the given type and index
		set rc [cmp_$type [lindex $l1 $index] [lindex $l2 $index]]
		if {$rc != 0} {
			# Not equal. Consider the order.
			return [expr {$rc * $order}]
		}
		# Equal, so got to the next level
	}
	# Exactly equal
	return 0
}

# Output a table column header which contains a link which sorts by that column
# Typically invoked from the table field display script as:
#
#    sortable_colum_header $page $field
#
# Note that the sort field *must* be called 'sort' and the order field
# must be 'order'
#
# Attach up/down arrows to styles: div.sortarrow#up and div.sortarrow#down
#
proc sortable_column_header {page field} {
	if {[cgi displaymode] eq "tableheader"} {
		html eval th {
			set order [cgi get order]
			set updown none
			if {[cgi get sort] eq $field} {
				if {$order == "1"} {
					set updown down
					set order -1
				} else {
					set updown up
					set order 1
				}
			}
			html str div class=sortarrow id=$updown ""
			html str a href=[cgi href $page sort $field order $order] [cgi label $field]
		}
		cgi return done
	}
}
