<?php namespace ProcessWire;

/**
 *
 * @link https://processwire.com/api/ref/wire-input/get/
 * example http://rsp.test/blog/?authors=all
 *
 */

// Update title, meta title, meta description, meta robots
setting('title', setting('authors'));
setting('meta-title', setting('authors'));
setting('meta-description', ''); // Remove meata description
setting('robots-nn', true); // <meta name='robots' content='noindex, nofollow'>

$getAuthors = users()->find("user_nick!='',limit=12");

$content = '';
foreach ($getAuthors as $author) {
	$content .= "<a class='btn btn--lg margin-y-xxxs' href='{$page->url}?author=$author->user_nick'>";
	$content .= $author->user_nick . "</a><br>
	";
}

echo files()->render('layouts/_layout-blog',
[
	'content' => $getAuthors->count() ? $content : files()->render('parts/blog/_no-found'),
	'sidebar' => files()->render('parts/blog/_blog-sidebar.php'),
	'pagination' => pagination($getAuthors, ['get_vars' => [$textAuthors => 'all'] ]),
]);
