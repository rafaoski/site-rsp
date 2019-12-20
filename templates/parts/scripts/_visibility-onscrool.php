<?php namespace ProcessWire;

/**
 *
 * @link https://usefulangle.com/post/113/javascript-detecting-element-visible-during-scroll
 *
 */

?>

<!-- How to Know when an Element Gets Visible in the Screen During Scrolling https://usefulangle.com/post/113/javascript-detecting-element-visible-during-scroll -->
<script>
	window.addEventListener('scroll', function() {
		var element = document.querySelector('#footer');
		var position = element.getBoundingClientRect();

		// checking for partial visibility
		if(position.top < window.innerHeight && position.bottom >= 0) {
			// console.log('Element is partially visible in screen');
			document.getElementById("in-touch").style.visibility = "hidden";
		} else {
			// console.log('Element is not visible in screen');
			document.getElementById("in-touch").style.visibility = "visible";
		}
	});
</script>