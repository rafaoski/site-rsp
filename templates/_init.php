<?php namespace ProcessWire;

/**
 * This _init.php file is called automatically by ProcessWire before every page render
 * @link https://processwire.com/api/ref/functions/setting/
 */

// Basic Setting
setting([
// Basic options
	'home' => pages('/'),
	'logo' =>  pages('/')->logo ? pages('/')->logo->url : '',
	'favicon' =>  pages('/')->favicon ? pages('/')->favicon->url : '',
	'title' => page('title'),
	'meta-title' => page('meta_title|title'),
	'meta-description' => page('meta_description'),
	'site-name' => pages('/')->text_1,
	'site-description' => pages('/')->textarea_1,
	'spinner' => urls('templates') . 'assets/img/spinner.svg',
	'b-img' => page()->images && count(page()->images) ? page()->images->first->url : '',
	'privacy' => pages()->get("template=privacy"),
	'leaflet-map' => pages()->get('/')->site_info->get("name=leafletjs")->text_1,
	'site-info' => pages()->get('/')->site_info->find("name!=leafletjs"),
	'gw-code' => '', // Google Webmaster Code
	'ga-code' => '', // Google Analytics Code
// meta name robots noindex, follow ( simple usage setting('robots-nf', true) inside template )
	'robots-nf' => false,
// meta name robots noindex, nofollow ( simple usage setting('robots-nn', true) inside template )
	'robots-nn' => false,
// Custom html classes
	'htmlClass' => WireArray([
		'template-' . page()->template->name,
		'page-' . page()->id,
	]),
// Custom body classes
	'bodyClass' => '',
// Basic Translation
	'lang' => __('en'),
	'edit' => __('Edit'),
	'next' => __('Next'),
	'previous' => __('Previous'),
	'search-placeholder' => __('Search'),
	'search-label' => __('Search from site'),
	'find-blog' => __('Find on the blog'),
	'found-pages' => __("Found %d page(s)."),
	'no-found' =>  __('Sorry, no results were found.'),
	'also-like' => __('You might also like:'),
	'all-right' => __('All rights reserved'),
	'more' => __('More'),
	'might-also' => __('You might also like:'),
	'cookie-info' => __('We use cookies to ensure that we give you the best experience on our website'),
	'maintenance' => __('Maintenance'),
	'maintenace-info' => __('Sorry the site is undergoing maintenance'),
	'in-touch' => __('Get in touch'),
// Blog
	'authors' => __('Authors'), // This also use url segments in blog ( ?authors=all ) see blog.php
	'author' => __('Author'), // This also use url segments in blog ( ?author=rafaoski ) see blog.php
	'article-date' => __('Created Date'),
	'recent-posts' => __('Recent posts'),
// Comments Form Translation
	'previous-comments' => __('Previous Comments'),
	'next-comments' => __('Next Comments'),
	'post-comment' => __('Post a comment'),
	'comment-text' => __('Comments'),
	'comment-header' => __('Posted by %s on %s'),
	'success-message' => __('Thank you, your comment has been posted.'),
	'pending-message' => __('Your comment has been submitted and will appear once approved by the moderator.'),
	'error-message' => __('Your comment was not saved due to one or more errors.') . ' ' .
	__('Please check that you have completed all fields before submitting again.'),
	'comment-cite' => __('Your Name'),
	'comment-email' => __('Your E-Mail'),
	'comment-website' => __('Website'),
	'comment-stars' => __('Your Rating'),
	'comment-submit' => __('Submit'),
	'stars-required' => __('Please select a star rating'),
]);

// Include Functions
include_once('./_func.php');

// ADD USER => https://processwire.com/api/variables/user/
	// $u = $users->add('raf');
	// $u->pass = "test";
	// $u->addRole("superuser");
	// $u->save();

// RESET PASSWORD => https://processwire.com/talk/topic/1736-forgot-backend-password-how-do-you-reset/
	// $u = $users->get('admin'); // or whatever your username is
	// $u->of(false);
	// $u->pass = 'your-new-password';
	// $u->save();
