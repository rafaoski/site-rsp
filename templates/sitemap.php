<?php namespace ProcessWire; ?>

<div id="body">
	<?php
		$maxDepth = 4;
		renderNavTree($pages->get('/'), $maxDepth);
	?>
</div>