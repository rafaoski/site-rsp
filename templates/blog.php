<?php namespace ProcessWire;

/**
 *
 * @link https://processwire.com/api/ref/wire-input/get/
 *
 */

$textAuthors = sanitizer()->pageName(setting('authors'));
$inputAuthors = sanitizer()->text(input('get', $textAuthors)); // 'authors'

$textAuthor = sanitizer()->pageName(setting('author'));
$inputAuthor = sanitizer()->text(input('get', $textAuthor)); // 'author'

// Authors Page
if($inputAuthors && $inputAuthors == 'all') { // http://rsp.test/blog/?authors=all

	echo files()->render('parts/blog/_blog-authors',
	[
		'textAuthors' => $textAuthors,
		'inputAuthors' => $inputAuthors,
	]);
	return; // End in this moment

// Single Author Page
} elseif ($inputAuthor) { // http://rsp.test/blog/?author=rafaoski

	echo files()->render('parts/blog/_blog-author',
	[
		'textAuthor' => $textAuthor,
		'inputAuthor' => $inputAuthor,
	]);
	return; // End in this moment

} else // If nothing matches, show blog content

// Get all basic blog entries
$blogPosts = page()->children("limit=12");

// Post Loop
$postLoop = '';
foreach ($blogPosts as $post) {
	$postLoop .= blogPost($post);
}

// Content Posts
$content = "
	<div class='blog-items grid grid-gap-xs'>
		$postLoop
	</div>
";

// Render all Content
echo files()->render('layouts/_layout-blog',
[
	'content' => $blogPosts->count() ? $content : files()->render('parts/blog/_no-found'),
	'sidebar' => files()->render('parts/blog/_blog-sidebar.php'),
	'pagination' => pagination($blogPosts),
]);
