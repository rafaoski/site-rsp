<?php namespace ProcessWire;

/**
 * @link https://tarekraafat.github.io/autoComplete.js/
 *
 */

$searchPage = pages('search.json')->httpUrl; // Get json file
$debounce = 500; // Post duration for engine to start
$minThreshold = 2; // Min. Chars length to start Engine
$maxResults = 3; // Max. number of rendered results
$textNofound = setting('no-found');
?>

<!-- autoComplete.js  https://tarekraafat.github.io/autoComplete.js/ -->
<script defer src="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@7.1.1/dist/js/autoComplete.min.js"></script>
<script>
// autoComplete.js on typing event emitter
// document.querySelector("#autoComplete").addEventListener("autoComplete", event => {
// 	console.log(event);
// });

window.addEventListener('load', function() {
// The autoComplete.js Engine instance creator
	const autoCompletejs = new autoComplete({
		data: {
			src: async () => {
				// Loading placeholder text
				document
					.querySelector("#autoComplete")
					.setAttribute("placeholder", "Loading...");
				// Fetch External Data Source
				const source = await fetch(
					"<?= $searchPage ?>"
				);
				const data = await source.json();
				// Post loading placeholder text
				document
					.querySelector("#autoComplete")
					.setAttribute("placeholder", "Site Results");
				// Returns Fetched data
				return data;
			},
			// key: ["title", "body"],
			key: ["title"],
			cache: false
		},
		sort: (a, b) => {
			if (a.match < b.match) return -1;
			if (a.match > b.match) return 1;
			return 0;
		},
		placeHolder: "<?= setting('search-placeholder') ?>",
		selector: "#autoComplete",
		threshold: "<?= $minThreshold ?>",
		debounce: "<?= $debounce ?>",
		searchEngine: "strict",
		highlight: true,
		maxResults: "<?= $maxResults ?>",
		resultsList: {
			render: true,
			container: source => {
				source.setAttribute("id", "autoComplete_list");
			},
			destination: document.querySelector("#autoComplete"),
			position: "afterend",
			element: "ul"
		},
		resultItem: {
			content: (data, source) => {
				console.log('Console Log Search Data', data)
				// const body = data.value.body.slice(0, 30) + ' ...';
				// const findData = '<a href=' + data.value.url + '><b>' + data.value.title + '</b><p>' + body + '</p></a>';
				const findData = '<a href='+data.value.url+'>' + data.match + '</a>';
				source.innerHTML = findData;
			},
			element:  "li"
		},
		noResults: () => {
			const result = document.createElement("li");
			result.setAttribute("class", "no_result");
			result.setAttribute("tabindex", "1");
			result.innerHTML = "<?= $textNofound ?>";
			document.querySelector("#autoComplete_list").appendChild(result);
		}
	});
});
</script>
