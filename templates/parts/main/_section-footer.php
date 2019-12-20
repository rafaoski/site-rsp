<?php namespace ProcessWire;

/**
 *
 * Footer Section
 *
 */

?>

<div class="cookie-info padding-md">
	<p>
		<a class='spinner-link inline-flex flex-center' href="<?= setting('privacy')->url ?>">
			<img width='50px' src="<?= setting('spinner') ?>" alt='<?= setting('more')  ?>'>
			<span><?= setting('privacy')->meta_title ?></span>
		</a>
		<br>
		<small><?= setting('privacy')->meta_description ?></small>
	</p>
</div>

<div class='site-info flex flex-wrap flex-center'>
	<ul class='padding-bottom-md'>
		<?= siteInfo(setting('site-info')); ?>
	</ul>
</div>

<?php
// Get Blog
$blog = pages()->get("template=blog");

// Get Recent Posts ( limit = 3 )
$blogRecent = $blog->children("limit=3");

if($blogRecent->count()): // If there are no children, don't return anything ?>
	<div class="recent-post container">
		<div class="flex flex-gap-md flex-wrap margin-y-md">
			<a class='spinner-link link text-xl' href="<?= $blog->url ?>#main">
				<img  width='70px' src="<?= setting('spinner') ?>" alt='<?= setting('more') ?>'>
				<?= setting('recent-posts') ?><br>
			</a>
			<ul><?php
			foreach ($blogRecent as $item) {
				echo "<li class='margin-bottom-xs'> /
							<a class='text-md' href='$item->url'>
								$item->title
							</a>
						</li>";
				}
			?></ul>
		</div>
	</div>
<?php endif; ?>

<?php if(setting('leaflet-map')): ?>
	<div id="map" class='margin-top-md'></div>
<?php endif; ?>

<p class='site-copy text-center padding-y-xxs text-xl'>
	<?= siteCopy() ?>
</p>