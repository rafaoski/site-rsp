<?php namespace ProcessWire;

// Spinner
$spinner = setting('spinner');

// Latest Posts
$recentPosts = pages()->get("template=blog");
$limit = 5;
$recentText = setting('recent-posts');

echo "<div class='recent-posts'>";

echo "<h3><a class='spinner-link inline-flex flex-center' href='$recentPosts->url'>" .
		"<img width='40px' src='$spinner' title=''>" . $recentText ."</a></h3>";

foreach ($recentPosts->children("limit=$limit, start=0") as $post) {
	echo "<li><a href='$post->url'>$post->title</a></li>";
}

echo "</div>";


// Blog Categories
$blogCategories = pages()->get("template=blog-categories");
$limit = 9;

echo "<div class='blog-categories'>";

echo "<h3><a class='spinner-link inline-flex flex-center' href='$blogCategories->url'>" .
		"<img width='40px' src='$spinner' title=''>" . $blogCategories->title ."</a></h3>";

foreach ($blogCategories->children("limit=$limit, start=0") as $category) {
	echo "<li><a href='$category->url'>$category->title</a></li>";
}

echo "</div>";

// Blog Authors
$textAuthors = sanitizer()->pageName(setting('authors'));

echo "<a class='btn spinner-link margin-y-xs' href='$recentPosts->url?$textAuthors=all'>" .
"<img width='40px' src='$spinner' title=''>" . setting('authors') ."</a>";