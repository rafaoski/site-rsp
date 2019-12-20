<?php namespace ProcessWire;

/**
 *
 * @link https://leafletjs.com/index.html
 *
 * tileLayer https://wiki.openstreetmap.org/wiki/Tile_servers
 * @link https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png
 * @link https://cartodb-basemaps-{s}.global.ssl.fastly.net/dark_all/{z}/{x}/{y}.png
 * http://leaflet-extras.github.io/leaflet-providers/preview/
 * @link https://{s}.basemaps.cartocdn.com/dark_nolabels/{z}/{x}/{y}{r}.png
 * @link https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png
 *
 * Get Latitude and Longitude
 * @link https://www.latlong.net/
 *
 */

$leafletMap = setting('leaflet-map');
$spinnerUrl = setting('spinner');
$bImg = setting('b-img');

if(!$leafletMap) return;

$setView = $bindPopup = '';

$tileLayer = "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";

if(isset($bImg) && $bImg) {
	$tileLayer = "https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png";
}

$zoom = '16';

$map = explode(",", $leafletMap);

if(isset($map[0]) && isset($map[1])) {
	$setView = $map[0] . ',' . $map[1];
}

if(isset($map[2])) {
	$bindPopup = $map[2];
}
?>

<!-- Leaflet Map -->
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.6.0/leaflet.js"></script>
<script>
window.addEventListener('load', function() {

	var map = L.map('map').setView([<?= $setView ?>], <?= $zoom ?>);

	var myIcon = L.icon({
		iconUrl: '<?= $spinnerUrl; ?>',
		iconSize: [70, 70],
		iconAnchor: [22, 94],
		popupAnchor: [13, -85],
		// shadowUrl: 'my-icon-shadow.png',
		// shadowSize: [68, 95],
		// shadowAnchor: [22, 94]
	});

	L.tileLayer("<?= $tileLayer ?>", {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo(map);
	L.marker([<?= $setView ?>], {icon: myIcon}).addTo(map)
<?php if($bindPopup): ?>
		.bindPopup("<?= $bindPopup ?>")
<?php endif; ?>
		.openPopup();
});
</script>