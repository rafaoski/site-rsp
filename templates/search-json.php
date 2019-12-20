<?php namespace ProcessWire;

/**
 * @link https://processwire.com/talk/topic/16257-clean-way-to-output-data-as-json/
 * @link https://processwire.com/api/ref/wire-array/explode/
 * @link https://processwire.com/api/ref/sanitizer/
 * @link https://processwire.com/api/ref/sanitizer/markup-to-text/
 *
 */

// $myPages = $pages->find('template!=admin, has_parent!=2');
// $myPages = $pages->find("template=blog-post|blog-category");
// $data = $myPages->explode(['title']); // ( extract required fields into plain array )
// echo wireEncodeJSON($data, false, true);

// Find all public pages
// $myPages = $pages->find("template!=admin, has_parent!=2");

// Find from blog post
$myPages = $pages->find("template=blog-post|blog-category");

$itemsArray = array();

foreach ($myPages as $item) {

	$title = sanitizer()->markupToText($item->title);
	$url = sanitizer()->url($item->url);
	// $metaTitle = sanitizer()->markupToText($item->meta_title);
	// $metaDescription = sanitizer()->markupToText($item->meta_description);
	// $body = sanitizer()->markupToText($item->body);

	$itemsArray[] = array(
		'title' => $title,
		// 'meta_title' => $metaTitle,
		// 'meta_description' => $metaDescription,
		// 'body' => $body,
		'url' => $url
	);
}

$jsonView = json_encode($itemsArray, true | JSON_PRETTY_PRINT );

echo $jsonView;