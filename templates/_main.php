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

// $MainSections = array('header', 'main', 'footer'); // Basic Example

// Options in this site profile
$MainSections = array(
	'header' => [
		// 'element_html' => 'header', // header, div  ( section is default )
		'section_class' => 'bg-contrast-lower padding-y-md',
		'content_class' => 'container',
	],
	'main'   => [
		// 'element_html' => 'main',
		'section_class' => 'padding-y-md',
		'content_class' => 'container',
	],
	'footer' => [
		// 'element_html' => 'footer',
		'section_class' => 'bg-contrast-lower',
		'content_class' => null,
	]
);

$sectionOptions = array(
	'section_path' => 'parts/main', // Your sections will be inside folder (main)  /parts/main/_section-name
	// 'class_prefix' => 'prefix section', // Default is "section" like => class='section-header'
);

// Render All Sections
echo renderSections($MainSections, $sectionOptions);

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