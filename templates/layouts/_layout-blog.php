<?php namespace ProcessWire;

/**
 * Markup regions give you the best of both worlds—the simplicity of direct output with the power of delayed output, just using HTML.
 * @link https://processwire.com/docs/front-end/output/markup-regions/
 *
 */

?>

<?php namespace ProcessWire; ?>

<?php if(page()->template == 'blog-post'): ?>
	<head id='html-head' pw-append>
		<script
		defer src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
		<script defer src='<?=urls()->FieldtypeComments?>comments.min.js'></script>
		<link rel="stylesheet" href="<?=urls()->FieldtypeComments?>comments.css">
	</head>
<?php endif; ?>

<div id='body'>

<!-- CONTENT -->
	<div class='blog-content grid'>

		<div class='<?php if($sidebar) echo 'col-9@md ' ?>text-component'>
			<?= $pagination ?>
			<?= $content ?>
			<?= $pagination ?>
		</div>

	<?php if($sidebar): ?>
		<div class='col-3@md text-component padding-x-md'>
			<?= $sidebar ?>
		</div>
	<?php endif; ?>

	</div>

</div>