<?php namespace ProcessWire; ?>

<!-- Custom CSS style -->
	<style>
	/* Page Loader */
		.preloader {
			align-items: center;
			background: var(--color-black);
			display: flex;
			height: 100vh;
			justify-content: center;
			left: 0;
			position: fixed;
			top: 0;
			transition: opacity 0.6s linear;
			width: 100%;
			z-index: 9999;
		}
	<?php if(isset($bImg) && $bImg): ?>
	/* Header & Footer Image */
		.section-header, .section-footer {
			background-image: linear-gradient(rgba(0, 0, 0, 0.69), rgba(0, 0, 0, 0.93)), url(<?= $bImg ?>);
		}
	<?php endif; ?>
</style>