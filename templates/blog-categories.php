<?php namespace ProcessWire;

// Get all blog entries
$blogCategories = page()->children("limit=24");

// Category Loop
$categoryLoop = '';
foreach ($blogCategories as $category) {

$countReferences = count($category->references());

	$categoryLoop .= "
	<a href='$category->url' class='btn margin-xxxs'>
		$category->title
		<small class='padding-xs counter'>/ $countReferences</small>
	</a>";
}

// Content Categories
$content = "
<div class='blog-categories'>
	$categoryLoop
</div>
";

// Render all Content
echo files()->render('layouts/_layout-blog',
[
	'content' => $blogCategories->count() ? $content : files()->render('parts/blog/_no-found'),
	'sidebar' => files()->render('parts/blog/_blog-sidebar.php'),
	'pagination' => pagination($blogCategories),
]);