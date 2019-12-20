<?php namespace ProcessWire;

if( page()->template != 'home' ) {
	session()->redirect( pages('/')->url );
}

$protocol = 'HTTP/1.0';

if ( $_SERVER['SERVER_PROTOCOL'] === 'HTTP/1.1' ) {
	$protocol = 'HTTP/1.1';
}

header( $protocol . ' 503 Service Unavailable', true, 503 );
header( 'Retry-After: 3600' );

// Footer Panel
$siteInfo = siteInfo(pages()->get('/')->site_info->find("name!=leafletjs"));
// Leaflet Map
$leafletMap = pages()->get('/')->site_info->get("name=leafletjs")->text_1;
// custom Title
$title = setting('maintenace-info');

// Change Settings
setting('b-img', false);
setting('title', $title);
setting('meta-title', $title);
setting('meta-description', false);
setting('site-description', setting('maintenance'));

// Site Head
echo siteHead([
	// Codyhouse framework
		files()->render('parts/css-frameworks/_codyhouse') . "\n",

	"<!-- Leaflet Map https://leafletjs.com/ -->\n" .
		linkCss('https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.6.0/leaflet.css', true)
]);
?>

<!-- SECTION HEADER -->
	<section id='header' class='section-header btn--smbg-contrast-lower'>
		<div class="container padding-y-md">
			<div class='text-center'>
				<?= siteBranding() ?>
			</div>
		</div>
	</section>

<!--  SECTION MAIN -->
	<section id='main'>
		<div class="container">
			<div class="maintenance padding-y-md text-center text-xxl">
				<h3><?= $title ?></h3>
			</div>
		</div>
	</section>

<!-- FOOTER -->
	<section id='footer' class='bg-contrast-lower'>

		<div class='flex flex-wrap flex-center'>
			<ul class='padding-y-md'>
				<?= $siteInfo ?>
			</ul>
		</div>

		<?php if(setting('leaflet-map')): ?>
			<div id="map" class='margin-top-md'></div>
		<?php endif; ?>

		<p class='site-copy text-center padding-y-xxs text-xl'>
			<?= siteCopy() ?>
		</p>

	</section>

<?= siteFoot([ /* SITE FOOT */
// Render multiple files like scripts or custom css ( or wheatever you want )
	renderMultiple([
		'parts/main/_scrool-top', // Pure CSS Scrool to top
	// Custom Scripts
		'parts/scripts/_feathericons', // Feather Icons
		'parts/scripts/_webfontloader', // Web Font Loader
		'parts/scripts/_leafletmap' // Leaflet Map
	]),
// Codyhouse framework
	"<!-- Codyhouse framework  https://github.com/CodyHouse/codyhouse-framework -->\n" .
	scriptSrc(urls('templates') . 'assets/js/scripts.min.js')
]);
// End /html