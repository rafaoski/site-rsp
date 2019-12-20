<?php namespace ProcessWire;

/**
 *
 * Header Section
 *
 */

?>

<a id='in-touch' class='spinner-link position-fixed' href="#footer">
	<img width='40px' src="<?= setting('spinner') ?>" alt='<?= setting('in-touch') ?>'>
</a>

<div class='search text-center'>
	<label for="autoComplete"><?= setting('find-blog') ?></label><br>
	<input id="autoComplete" class='autoComplete margin-y-xxs' type="text" autocomplete="off">
</div>

<nav id='nav' class='main-nav'>
	<?= langMenu(page()) ?>
	<?= navLinks() ?>
</nav>

<div id='site-branding' class='site-branding margin-y-lg text-center'>
	<?= siteBranding() ?>
	<?= page()->if("meta_description", page()->render('meta_description') );?>
	<a class='spinner-link more-main--link' href="#main">
		<img width='90px' src="<?= setting('spinner') ?>" alt='<?= setting('more') ?>'>
	</a>
</div>