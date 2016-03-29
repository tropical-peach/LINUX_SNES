
/* Takes a boolean and a variable number of element id arguments.
 * Shows or hides the elements according to 'show'
 */
function show_hide_elements(show)
{
	var display = '';
	if (!show) {
		display = 'none';
	}
	for (var i=1; i < arguments.length; i++) {
		document.getElementById(arguments[i]).parentNode.parentNode.style.display = display;
	}
}

/* vim: se ts=4: */
