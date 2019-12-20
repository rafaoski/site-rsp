<?php namespace ProcessWire;

/**
 *
 * Markup regions give you the best of both worlds—the simplicity of direct output with the power of delayed output, just using HTML.
 * @link https://processwire.com/docs/front-end/output/markup-regions/
 *
 * Site setting inside  file _init.php
 * This is a simple helper function for maintaining runtime settings in a site profile
 * @link https://processwire.com/api/ref/functions/setting/
 *
 */

/* SITE HEAD */
echo siteHead([
	// Uikit 3 ( Optional frameworks )
		// files()->render('parts/css-frameworks/_uikit.php') . "\n",

	// Codyhouse framework
		files()->render('parts/css-frameworks/_codyhouse') . "\n",

	"<!-- Leaflet Map https://leafletjs.com/ -->\n" .
		linkCss('https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.6.0/leaflet.css', true),

	"<!-- autoComplete.js  https://tarekraafat.github.io/autoComplete.js/ -->\n" .
		linkCss('https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@7.1.1/dist/css/autoComplete.min.css', true),

	// Custom Css
		files()->render('parts/style/_custom-style', ['bImg' => setting('b-img')])
]);

/* SET YOUR SITE SECTIONS */
$MainSections =
[
	'header' => [ // Header Section, is also ( id=header class=section-header )
		'section_class' => 'bg-contrast-lower padding-y-md',
		'content_class' => 'container'
	],
	'main'   => [ // Main Section, is also ( id=main class=section-main )
		'section_class' => 'padding-y-md',
		'content_class' => 'container'
	],
	'footer' => [ // Footer Section, is also ( id=footer class=section-footer )
		'section_class' => 'bg-contrast-lower',
		'content_class' => ''
	]
];

// Render All Sections ( Your sections will be inside folder (main)  /parts/main/_section-name )
echo renderSections($MainSections, [
	'section_path' => 'parts/main',
	// 'class_prefix' => 'hello section', // Default is "section" like => class='section-header'
]);

/* SITE FOOT */
echo siteFoot([
// Render multiple files like scripts or custom css ( or wheatever you want )
	renderMultiple([
	// Custom Content Footer
		'parts/main/_scrool-top', // Pure CSS Scrool to top
		'parts/main/_page-loader', // Page Loader
	// Custom Scripts
		'parts/scripts/_autocomplete', // Autocomplete.js
		'parts/scripts/_feathericons', // Feather Icons
		'parts/scripts/_webfontloader', // Web Font Loader
		'parts/scripts/_preloader', // Page Loader
		'parts/scripts/_visibility-onscrool', // Visible in the Screen During Scrolling
		'parts/scripts/_leafletmap' // Leaflet Map
	]),
// Codyhouse framework
	"<!-- Codyhouse framework  https://github.com/CodyHouse/codyhouse-framework -->\n" .
	scriptSrc(urls('templates') . 'assets/js/scripts.min.js')
]);
// End /html