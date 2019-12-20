<?php namespace ProcessWire;

// Get all blog entries
$blogPosts = pages()->find("template=blog-post,categories=$page,limit=12");

// Post Loop
$postLoop = '';
foreach ($blogPosts as $post) {
	$postLoop .= blogPost($post);
}

// Content Posts
$content = "
<div class='blog-items grid grid-gap-md'>
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