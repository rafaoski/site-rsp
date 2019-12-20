<?php namespace ProcessWire;

/**
 *
 * @link https://processwire.com/talk/topic/16257-clean-way-to-output-data-as-json/
 * @link https://processwire.com/api/ref/wire-array/explode/
 * @link https://processwire.com/api/ref/sanitizer/
 * @link https://processwire.com/api/ref/sanitizer/markup-to-text/
 *
 */

// Find all public pages
// $myPages = $pages->find("template!=admin, has_parent!=2");

// Find from blog post
$myPages = $pages->find("template=blog-post|blog-category");

$itemsArray = array();

foreach ($myPages as $item) {

	$title = sanitizer()->markupToText($item->title);
	$url = sanitizer()->url($item->url);

	$itemsArray[] = array(
		'title' => $title,
		'url' => $url
	);
}

$jsonView = json_encode($itemsArray, true | JSON_PRETTY_PRINT );

echo $jsonView;