<?php namespace ProcessWire;

/**
 * ProcessWire Bootstrap API Ready
 * ===============================
 * This ready.php file is called during ProcessWire bootstrap initialization process.
 * This occurs after the current page has been determined and the API is fully ready
 * to use, but before the current page has started rendering. This file receives a
 * copy of all ProcessWire API variables. This file is an idea place for adding your
 * own hook methods.
 *
 */

/** @var ProcessWire $wire */

// Maintenance Mode
$maintenanceMode = false;

// Clean Admin Tree
$cleanAdmin = pages()->get('/')->checkbox;

// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/503
// https://yoast.com/http-503-site-maintenance-seo/
wire()->addHookAfter('Page::render', function($event) use($maintenanceMode) {

	if($maintenanceMode == false) return;

	$page = $event->object;

	// we'll only apply this to the front-end of our site
	if($page->template == 'admin') return;

	// tell ProcessWire we are replacing the method we've hooked
	$event->replace = true;

		if( user()->isSuperuser() ) {
			$value  = $event->return;
			$value = str_replace("</header>",
				"<h1 class='text-xxxl text-center'>" .
				__('Maintenance Mode !!!') . "</h1></header>",
			$value);
			// set the modified value back to the return value
			$event->return = $value;
		} else {
			$event->return = files()->render('layouts/_layout-maintenance');
		}
  });

/** Clean Admin Tree */
$wire->addHookAfter('Page::render', function($event) use($cleanAdmin) {

	if( $cleanAdmin == false ) return;

	// we'll only apply this to the back-end of our site
	if(page()->template != 'admin') return;

	$value  = $event->return; // Return Content
	$templates = urls()->templates; // Get Template folder URL
	$style = "\n<link rel='stylesheet' href='{$templates}assets/css/clean-admin-tree.css'>\n";
	$event->return = str_replace("</head>", "\n\t$style</head>", $value); // Return All Changes
});