<?php namespace ProcessWire;

/**
 *
 * Render given $fieldName using site/templates/fields/ markup file
 * @link https://processwire.com/api/ref/page/render-field/
 *
 * You can simply change the text meta description & description on other pages, such as:
 *  _blog-author.php => setting('meta-description', 'Author Meta Description');
 *
 */

?>

<h3 class='site-description margin-top-md text-md'>
	<?php
		echo setting('meta-description');
// echo $value; // Basic Example return $value as page()->meta_description
	?>
</h3>