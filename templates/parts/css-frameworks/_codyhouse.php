<?php namespace ProcessWire;

/**
 *
 * @link https://github.com/CodyHouse/codyhouse-framework
 *
 */

$templateUrl = urls('templates');

?>

<!-- Codyhouse framework  https://github.com/CodyHouse/codyhouse-framework -->
	<script>document.getElementsByTagName("html")[0].className += " js";</script>
	<script>
		if('CSS' in window && CSS.supports('color', 'var(--color-var)')) {
			document.write('<link rel="stylesheet" href="<?= $templateUrl ?>assets/css/style.css">');
		} else {
			document.write('<link rel="stylesheet" href="<?= $templateUrl ?>assets/css/style-fallback.css">');
		}
	</script>
	<noscript>
		<link rel="stylesheet" href="<?= $templateUrl ?>assets/css/style-fallback.css">
	</noscript>