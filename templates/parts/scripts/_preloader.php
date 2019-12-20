<?php namespace ProcessWire;

/**
 *
 * @link https://css-tricks.com/lets-make-a-fancy-but-uncomplicated-page-loader/
 * @link https://github.com/maximakymenko/page-preloader-tutorial
 * @link https://javascript.info/onload-ondomcontentloaded
 *
 */

?>

<!-- Page Loader -->
<script>
// window.addEventListener('load', function() {
document.addEventListener("DOMContentLoaded", () => {
	const preloader = document.querySelector('.preloader');
	const fadeEffect = setInterval(() => {
		// if we don't set opacity 1 in CSS, then
		// it will be equaled to "", that's why
		// we check it, and if so, set opacity to 1
		if (!preloader.style.opacity) {
			preloader.style.opacity = 1;
		}
		if (preloader.style.opacity > 0) {
			preloader.style.opacity -= 0.1;
		} else if(preloader.style.opacity == 0) {
			preloader.style.display= "none"
		} else {
			clearInterval(fadeEffect);
		}
	}, 100);
});
</script>