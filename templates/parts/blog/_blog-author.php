<?php namespace ProcessWire;

/**
 *
 * @link https://processwire.com/api/ref/wire-input/get/
 * example http://rsp.test/blog/?author=rafaoski
 *
 */

// Update title, meta title, meta description, meta robots
setting('title', $inputAuthor);
setting('meta-title', setting('author') . ': ' . $inputAuthor);
setting('meta-description', ''); // Remove meata description
setting('robots-nf', true); // <meta name='robots' content='noindex, follow'>

$getUser = $users->get("user_nick=$inputAuthor")->id;

$blogPosts = pages()->find("template=blog-post, created_users_id='$getUser', limit=12");

// Post Loop
$postLoop = '';
foreach ($blogPosts as $post) {
	$postLoop .= blogPost($post);
}

// Content Posts
$content = "
	<div class='author-items grid grid-gap-xs'>
		$postLoop
	</div>
";

// Render all Content
echo files()->render('layouts/_layout-blog',
[
	'content' => $blogPosts->count() ? $content : files()->render('parts/blog/_no-found'),
	'sidebar' => files()->render('parts/blog/_blog-sidebar.php'),
	'pagination' => pagination($blogPosts, ['get_vars' => [$textAuthor => $inputAuthor] ]),
]);
