<?php namespace ProcessWire;

$pageLinks = '';
$links = page()->links();
$blogPost = blogPost(page());
$blogComments = blogComments(page());
$imgThumb = "<div class='blog-img display@md'>" . imgThumb(page()->images) . "</div>";
$alsoText = setting('might-also');
$spinner = "<img width='50px' src='" . setting('spinner') . "'>";
$navigation = navPage(page(), $spinner, $spinner);

// Universal Sharing Buttons ( https://www.addtoany.com/ )
$toAny = toAny(
[	'share_all' => true,
	'twitter' => true,
	'facebook' => true,
	'email' => true
]);

 // https://processwire.com/blog/posts/processwire-3.0.107-core-updates/#page-gt-links
if($links->count()) {
	$pageLinks .= "<h3>$alsoText</h3>";
	$pageLinks .= $links->each("<li style='list-style: none'>
								<a class='spinner-link inline-flex flex-center' href={url}>
								$spinner{title}</a></li>");
}

// Content article
$content = "
<div class='blog-post'>
	$blogPost
	$navigation
	$toAny
	$pageLinks
	$blogComments
</div>"
;

// Render all content
echo files()->render('layouts/_layout-blog',
[
	'content' => $content ? $content : files()->render('parts/blog/_no-found'),
	'sidebar' => $imgThumb . files()->render('parts/blog/_blog-sidebar.php'),
	'pagination' => '',
]);