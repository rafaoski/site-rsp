<?php namespace ProcessWire;

/**
 *
 * @link https://github.com/typekit/webfontloader
 *
 */

?>

<!-- Web Font Loader  https://github.com/typekit/webfontloader -->
<script defer src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
<script>
window.addEventListener('load', function() {
	WebFont.load({
		google: {
		families: ['Source Code Pro', 'Allerta Stencil'] // https://fonts.google.com/
		}
	});
});
</script>