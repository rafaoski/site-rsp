<?php namespace ProcessWire;

/**
 * Return custom header elements
 *
 * @param array $custom Custom files, sections, parts, etc.
 * @param array|string $options Options to modify default behavior:
 *  - `robots_nf` (string): Meta robots noindex, follow.
 *  - `robots_nn` (string): Meta robots noindex, nofollow.
 *  - `seo_trick` (string): Seo Trick
 *  - `icon` (url): Favicon url.
 *  - `title` (string): Site Titile.
 *  - `description` (string): Site Description.
 *  - `hreflang` (string): Rel Alternate Hreflang.
 *  - `gw_code` (string): Google Webmaster Code.
 *
 */
function siteHead($custom = array(), $options = array()) {

// $out is where we store the markup we are creating in this function
	$out = '';
// Reset variables
	$contentHead = '';

// Basic Settings
	$lang = setting('lang');
	$htmlClass = setting('htmlClass')->implode(' ');
	$bodyClass = setting('bodyClass') ? ' ' . setting('bodyClass') : '';
	$b_img = setting('b-img') ? 'bg-image' : 'no-bg';

// Defaults
	$defaults = [
		'robots_nf' => setting('robots-nf') ? "<meta name='robots' content='noindex, follow'>" : null,
		'robots_nn' => setting('robots-nn') ? "<meta name='robots' content='noindex, nofollow'>" : null,
		'seo_trick' => seoTrick(page()),
		'icon' => setting('favicon') ? "<link rel='icon' href='" . setting('favicon') . "'/>" : null,
		'title' => "<title>" . setting('meta-title') . "</title>",
		'description' => setting('meta-description') ? "<meta name='description' content='" . setting('meta-description') . "'>" : null,
		'custom' => $custom ? implode(" ", $custom) : null, // Not edit this via $options
		'hreflang' => hreflang(page()),
		'gw_code' => gwCode(setting('gw-code')),
	];

// Merge Options
	$options = _mergeOptions($defaults, $options);

// Some Cleanup
	$options = array_filter($options);

// Get content head
	foreach ($options as $item) {
		$contentHead .=  "\t" . $item . "\n";
	}

$out .= "
<!DOCTYPE html>
<html lang='$lang' class='$htmlClass'>
<head id='html-head'>
<meta charset='UTF-8'>
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
$contentHead
</head>
<body class='$b_img{$bodyClass}'>
";

$out .= debugInfo(); // DEBUG INFO
$out .= editBtn(); // EDIT BUTTON

	return $out;
}

/**
 * Return custom footer elements
 *
 * @param array $custom Custom files, sections, parts, etc.
 * @param array|string $options Options to modify default behavior:
 *  - `ga_code` (string): Google Analytics code.
 *
 */
function siteFoot($custom = array(), $options = array()) {

// $out is where we store the markup we are creating in this function
	$out = '';
// Reset variables
	$contentFoot = '';

// Defaults
	$defaults = array(
		'ga_code' => gaCode(setting('ga-code')),
		'custom' => $custom ? implode(" ", $custom) : null, // Not edit this via $options
	);
// Merge Options
	$options = _mergeOptions($defaults, $options);

// Some Cleanup
	$options = array_filter($options);

// Get content foot
	foreach ($options as $item) {
		$contentFoot .=  "\t" . $item . "\n";
	}

$out .= "
$contentFoot
</body>
</html>
";
	return $out;
}

/**
 * Return the hreflang parameter
 *
 * @param Page $page
 *
 */
function hreflang($page) {

  if(!$page->getLanguages()) return;

  if (!modules()->isInstalled("LanguageSupportPageNames")) return;

  // $out is where we store the markup we are creating in this function
  $out = '';

  // handle output of 'hreflang' link tags for multi-language
  foreach(languages() as $language) {
	// if this page is not viewable in the language, skip it
	if(!$page->viewable($language)) continue;
	// get the http URL for this page in the given language
	$url = $page->localHttpUrl($language);
	// hreflang code for language uses language name from homepage
	$hreflang = setting('home')->getLanguageValue($language, 'name');
	if($hreflang == 'home') $hreflang = setting('lang-code');
	// output the <link> tag: note that this assumes your language names are the same as required by hreflang.
	$out .= "<link rel='alternate' hreflang='$hreflang' href='$url' />\n";
  }
  return $out;
}

/**
 * Return seo meta robots ( 'noindex, follow' ) or seo pagination
 *
 * @return mixed
 *
 */
function seoTrick() {
	// If not any pageNum or pageHeaderTags
	if( input()->pageNum == null || config()->pagerHeadTags == null ) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	// https://processwire.com/blog/posts/processwire-2.6.18-updates-pagination-and-seo/
	if (input()->pageNum > 1 && setting('robots-nf') == false) {
		$out .= "\t<meta name='robots' content='noindex,follow'>\n";
	}
	// https://weekly.pw/issue/222/
	if (config()->pagerHeadTags) {
			$out .= "\t" . config()->pagerHeadTags;
	}
	return $out;
}

/**
 * Given a group of pages render a tree of navigation
 *
 * @param Page|PageArray $items Page to start the navigation tree from or pages to render
 * @param int $maxDepth How many levels of navigation below current should it go?
 *
 */
function renderNavTree($items, $maxDepth = 3) {

	// if we've been given just one item, convert it to an array of items
	if($items instanceof Page) $items = array($items);

	// if there aren't any items to output, exit now
	if(!count($items)) return;

	// $out is where we store the markup we are creating in this function
	// start our <ul> markup
	echo "<ul class='list'>";

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class and
		// visually hidden text for screen readers to it
		if($item->id == wire('page')->id) {
			echo "<li class='current'>";
		} else {
			echo "<li>";
		}

		// markup for the link
		echo "<a href='$item->url'>$item->title</a>";

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children
		if($item->hasChildren() && $maxDepth) {
			renderNavTree($item->children, $maxDepth-1);
		}

		// close the list item
		echo "</li>";
	}

	// end our <ul> markup
	echo "</ul>";
}

/**
 * Return Language Menu
 *
 * @param Page $page
 * @param array|string $options Options to modify default behavior:
 *  - `current_class` (string): Selector class current item.
 *
 */
function langMenu($page, $options = array()) {

	if(!$page->getLanguages()) return;

	if (!modules()->isInstalled("LanguageSupportPageNames")) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
	'current_class' => 'current-item',
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	foreach(languages() as $language) {

		if(!$page->viewable($language)) continue; // is page viewable in this language?

		$current = $language->id == user()->language->id ? $options['current_class'] : 'no-current';

		$url = $page->localUrl($language);

		$hreflang = setting('home')->getLanguageValue($language, 'name');

		if($hreflang == 'home') $hreflang = setting('lang-code');

		$out .= "\t\t<a class='lang-item $current' hreflang='$hreflang' href='$url'>$language->title</a>\n";
	}

	$out .= "<br>\n";

	return $out;
}

/**
 * Return Navigation Links
 *
 * @param array|string $options Options to modify default behavior:
 *  - `root_url` (link): Home Page URL.
 *
 */
function navLinks($options = array()) {

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
		'root_url' => pages('/')->and(pages('/')->children)
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	foreach($options['root_url'] as $item) {
		$class = $item->id == page()->id ? 'current-item' : 'color-inherit';
		$out .= "<a class='$class' href='$item->url'>
					$item->title
				</a>\n";
	}

  return $out;
}

/**
 * Return Script JS
 *
 * @param string $url
 * @param bool $defer
 *
 */
function scriptSrc($url, $defer = false) {

	if(!$url) return;

	if($defer == true) $defer = 'defer ';

	return "<script {$defer}src='$url'></script>\n";
}

/**
 * Return Link CSS
 *
 * @param string $link
 * @param bool $async
 */
function linkCss($link, $async = false) {

if(!$link) return;

// Return basic link
if($async == false) return "\t<link rel='stylesheet' href='$link'>\n";

// Return Asynchronous CSS Loading
return <<<EOT
	<link rel="stylesheet" href="$link" media="print" onload="this.media='all'">
	<noscript>
		<link rel="stylesheet" href="$link">
	</noscript>\n
EOT;
}

/**
 *  Render Site Sections
 *
 * @param array $sections all sections like array('header', 'main', 'footer') or:
 * array('header' => ['section_class' => 'text-xxxl', 'element_html' => 'header'], 'main' => [], 'footer' => []);
 *
 * @param array|string $options Options to modify default behavior:
 * - 'section_path' (string): Assumed relative to /site/templates/
 * - 'class_prefix' (string): Basic section class prefix ( default is section )
 *
 */
function renderSections($sections = array(), $options = array()) {

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
		'section_path' => '',
		'class_prefix' => 'section'
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);
	// Section Custom prefix
	$sectionPrefix = $options['class_prefix'] ? $options['class_prefix'] . '-' : '';

	foreach ($sections as $section => $custom) {

	// Section Info Text
	$sectionText = strtoupper($section);

	// More options
	$sectionClass = isset($custom['section_class']) ? ' ' . $custom['section_class'] : '';
	$contentClass = isset($custom['content_class']) ? ' ' . $custom['content_class'] : '';
	$htmlElement = isset($custom['element_html']) ? $custom['element_html'] : 'section';

	// Check if is basic array('header', 'main', 'footer') or multidimensional array('header' => [], 'main' => [], 'footer' => [])
	if(is_string($custom)) {
		$render = files()->render("$options[section_path]/_section-$custom"); // basic array()
	// Change Section Info Text
		$sectionText = strtoupper($custom);
	// Change id, class
		$section = $custom;
	} else {
		$render = files()->render("$options[section_path]/_section-$section"); // multidimensional array([])
	}

	// Render All Sections
$out .= "
\n<!-- $sectionText -->
<$htmlElement id='$section' class='{$sectionPrefix}$section{$sectionClass}'>
	<div class='{$sectionPrefix}$section--content{$contentClass}'>\n
		$render\n
	</div>
</$htmlElement>
<!-- END / $sectionText -->";
}
	return $out;
}

/**
 * Return rendered template parts
 * @link https://processwire.com/api/ref/wire-file-tools/render/
 *
 * @param array $files multiple files like scripts or custom css ( or wheatever you want )
 * @param string $fileName Assumed relative to /site/templates/
 * @param array $variables Optional associative array of variables to send to template file
 * @param array $options Associative array of options to modify behavior:
 *
 *
 */
function renderMultiple(array $files) {

	// $out is where we store the markup we are creating in this function
	$out = '';

	foreach ($files as $file) {

		if( is_array($file) ) {

			$fileName = isset($file[0]) ? $file[0] : '';
			$variables = isset($file[1]) ? $file[1] : array();
			$options = isset($file[2]) ? $file[2] : array();

			$out .= files()->render($fileName, $variables, $options) . "\n";
		} else {
			$out .= files()->render($file) . "\n";
		}
	}
	return $out;
}

/**
 * Return Custom site info
 *
 * @param PageArray $siteInfo
 *
 */
function siteInfo($siteInfo) {

	$out = '';

	foreach ($siteInfo as $item) {

		$title = $item->title;
		$name = $item->name;
		$options = $item->text_1;

		$icon = icon($name, ['stroke_width' => 1, 'width' => 36, 'height' => 36]);

		$out .= "<li class='margin-y-xs'>";

		if(strpos($options, '@') !== false) {
			$out .= "<a class='inline-block' href='mailto:$options'>$icon<small>$options</small></a>";
		} elseif(strpos($options, 'http') !== false) {
			$out .= "<a class='inline-block' href='$options' target='_blank' rel='noopener noreferrer'>$icon<small>$title</small></a>";
		} else {
			$out .= "<span>$icon<small>$options</small></span>";
		}

		$out .= '</li>';
	}

	return $out;
}

/**
 *  Return Basic Pagination
 *  https://processwire.com/docs/front-end/markup-pager-nav/
 *
 * @param PageArray $results
 * @param array|string $options Options to modify default behavior:
 * - 'base_url' (link): The baseUrl (string) from which the navigiation item links will start.
 * - 'get_vars' (array): Array of GET vars that should appear in the pagination links, or leave empty and populate $input->whitelist (preferred). .
 *
 */
function pagination($results, $options = array()) {

	if ( !count($results) ) return;

	// Default Options
	$defaults = array(
		'base_url' => null,
		'get_vars' => array(),
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	return $results->renderPager(array(
		'nextItemLabel' => setting('next'),
		'previousItemLabel' => setting('previous'),
		'listMarkup' => "<ul class='MarkupPagerNav'>{out}</ul>",
		'itemMarkup' => "<li class='{class}'>{out}</li>",
		'linkMarkup' => "<a href='{url}'><span>{out}</span></a>",
		'baseUrl' => $options['base_url'],
		'getVars' => array_filter($options['get_vars']),
	));
}

/**
 * Return Previous Next Button Page
 * @param Page $item
 *
 */
function navPage($item, $beforePrev = null, $afterNext = null) {

$title = setting('meta-title');
$iconPrev = icon('arrow-left-circle');
$iconNext = icon('arrow-right-circle');

// If  item is empty return null
if(!$item) return;
// $out is where we store the markup we are creating in this function
$out = '';
// Prev Next Button
		$p_next = $item->next();
		$p_prev = $item->prev();

$out .= "<div class='blog-nav blog-nav flex flex-center flex-wrap flex-gap-md margin-y-md'>";

// link to the prev blog post, if there is one
		if ($p_prev->id) {
			$out .= "<p>$p_prev->title<br><a class='btn margin-left-md' href='$p_prev->url' title='$p_prev->title'>";
			$out .= "$iconPrev $beforePrev</a></p>";
		}
// link to the next blog post, if there is one
		if ($p_next->id) {
				$out .= "<p><a class='btn margin-left-md' href='$p_next->url' title='$p_next->title'>";
				$out .= "$afterNext $iconNext</a><br>$p_next->title</p>";
		}

	$out .= "</div>";

		return $out;
}

/**
 *  Return Blog Image
 *
 * @param Pageimages $img
 * @param array|string $options Options to modify default behavior:
 * - 'width' (int): Image width.
 * - 'height' (int): Image height.
 *
 */
function imgThumb(Pageimages $img, $options = array()) {

	if( !count($img) ) return;

	$img = $img->first;

	// Default Options
	$defaults = array(
		'height' => $img->height,
		'width' => $img->width,
		'class' => "imgThumb responsive"
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	$url = $img->url;
	$alt = $img->title ? $img->title : page()->title;
	$h = $options['height'];
	$w = $options['width'];
	$c = $options['class'];

	return "<img src='$url' alt='$alt' height='$h' width='$w' class='$c' loading='lazy'>";
}

/**
 * Return AddToAny social share buttons
 * https://www.addtoany.com/
 *
 * @param array $options Basic Usage toAny(['twitter' => true'])
 * - 'twitter' => true,
 * - 'facebook' => true,
 * - 'google_plus' => false,
 * - 'linkedin' => false,
 * - 'rreddit' => false,
 * - 'email' => false,
 * - 'google_gmail' => false,
 * - 'share_all' => true,
 *
 */
function toAny($options = array()) {
// $out is where we store the markup we are creating in this function
	$out = '';
// Reset variables
	$buttonLinks = '';
// Default share links
	$links = [
		'twitter' => "<a class='a2a_button_twitter'></a>",
		'facebook' => "<a class='a2a_button_facebook'></a>",
		'google_plus' => "<a class='a2a_button_google_plus'></a>",
		'linkedin' => "<a class='a2a_button_linkedin'></a>",
		'rreddit' => "<a class='a2a_button_reddit'></a>",
		'email' => "<a class='a2a_button_email'></a>",
		'google_gmail' => "<a class='a2a_button_google_gmail'></a>",
		'share_all' => "<a class='a2a_dd' href='https://www.addtoany.com/share'></a>"
	];
// Foreach Items
	foreach ($options as $key => $value) {
		if($options[$key] == true) {
			$buttonLinks .= $links[$key];
		}
	}
// Start Content
	$out .= "<!-- AddToAny BEGIN -->
	<div class='a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style'
			 style='right:0px; top:150px; background-color: #2e2d2d99;'>";
	$out .= $buttonLinks; // Show Links
	$out .= "</div>
	<script async src='https://static.addtoany.com/menu/page.js'></script>
	<!-- /AddToAny END -->";
	return $out;
}

/**
 *  Return Blog Comments
 * @param  Page $item
 *
 */
function blogComments($item) {

// $out is where we store the markup we are creating in this function
$out = '';

// if Blog Page or Blog Post set checkbox ( disable or enable comments )
if( $item->checkbox || pages()->get("template=blog")->checkbox ) return;

// https://processwire.com/talk/topic/21987-i-just-added-a-new-uikit3-minimal-profile-for-processwire-3x/?tab=comments#comment-192679

$limit = 12;
$start = (input()->pageNum - 1) * $limit;

// Find comments that don't have a parent ( parent_id=0 )
$comments = $item->comments->find("start=$start, limit=$limit, parent_id=0");

// comment list
	if (count($comments)) {
		$out .= $comments->render(array(
			'headline' => '<h3>' . setting('comment-text') . '</h3>',
			'commentHeader' => sprintf( setting('comment-header'), "{cite}", $item->date . " {stars}" ),
			'dateFormat' => 'm/d/y g:ia',
			'encoding' => 'UTF-8',
			'admin' => false, // shows unapproved comments if true
		));
	}

	$out .= "<div class='flex flex-wrap flex-center flex-gap-md margin-y-xs'>";

	if(input()->pageNum > 1) {
		$out .= "<a class='btn' href='./page" . (input()->pageNum - 1) . "'>" .
		icon('arrow-left') . __('Previous Comments') . "</a> ";
	}

// Find comments that don't have a parent ( parent_id=0 )
	if($start + $limit < count(page()->comments->find("parent_id=0"))) {
		$out .= "<a class='btn' href='./page" . (input()->pageNum + 1) . "'>" .
		__('Next Comments') . icon('arrow-right') . "</a>";
	}

	$out .= "</div>";

// comments form with all options specified (these are the defaults)
	$out .= $item->comments->renderForm(array(
		'headline' => '<h3>' . setting('post-comment') . '</h3>',
		'successMessage' => "<p class='success'>" .  setting('success-message') . "</p>",
		'errorMessage' => "<p class='error'>" . setting('error-message') . "</p>",
		'processInput' => true,
		'encoding' => 'UTF-8',
		'attrs' => array(
			'id' => 'CommentForm',
			'action' => './',
			'method' => 'post',
			'class' => '',
			'rows' => 5,
			'cols' => 50,
			),
		'labels' => array(
			'cite' => setting('comment-cite'),
			'email' => setting('comment-email'),
			'text' => setting('comment-text'),
			'submit' => setting('comment-submit'),
		),
		// the name of a field that must be set (and have any non-blank value), typically set in Javascript to keep out spammers
		// to use it, YOU must set this with a <input hidden> field from your own javascript, somewhere in the form
		'requireSecurityField' => '', // not used by default
	));


// retun content
	return $out;
}

/**
 * Return navigation
 * @param Page $item page item
 * @param array|string $options Options to modify default behavior:
 *  - `class` (string): list class.
 *  - `icon` (string): Icon Name.
 *  - `text` (string): Comments Text.
 *
 */
function countComments($item, $options = array()) {

	if( $item->checkbox || pages()->get("template=blog")->checkbox ) return;

	if( !count($item->comments) ) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

 	$url = page()->url == $item->url ? '' : $item->url;

	// Default Options
	$defaults = array(
	'class' => 'comments',
	'icon' => icon('message-circle'),
	'text' =>  '', // setting('comment-text')
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

 	// num comments
	$out .= ' | ' . $options['text'] . " <a href='{$url}#CommentForm'>";
	$out .= count($item->comments) . $options['icon'] . '</a>';

	return $out;
}

/**
 *  Return Blog Post
 *
 * @param Page $blogPost
 *
 */
function blogPost( Page $item ) {

// Reset variables
	$linkBefore = $linkAfter = $style = $title = '';
// Get Blog Page
	$blog = pages()->get("template=blog");
// ID
	$id = $item->id;
// Get user nick
	$nick = $item->createdUser->user_nick;
// Get Date
	$date =  setting('article-date') . " $item->date | ";
// Get Comments
	$comments = countComments($item);
// Info
	$articleInfo = "<p class='margin-y-xs text-sm'>$date" . setting('author') .
	" <a href='$blog->url?" . sanitizer()->pageName(setting('author')) . "=$nick'>$nick</a> $comments</p>";
// Get body
	$body = $item->body;
// Get categories
	$categories = $item->categories->each("<li><a href='{url}'>{title}</a></li>");
	if($categories) {
		$catTitle = strtoupper(pages()->get("template=blog-categories")->title);
		$categories = "<ul class='categories'><li>$catTitle</li>$categories</ul>";
	}
// If is not single blog post page like ( categories, category, blog )
	if(page()->template != 'blog-post') {

	// Reset variables
		$categories = '';

		$linkBefore = "<a href='{$item->url}' class='col-6@sm'>";
		$linkAfter = "</a>";

		$bImg = count($item->images) ? $item->images->first->url : '';

		$style = " style='background-image: linear-gradient(rgba(0, 0, 0, 0.68), rgba(0, 0, 0, 0.92)), url($bImg);
					background-repeat: no-repeat; background-attachment: fixed; background-size: initial; background-position: center;
					color:aliceblue; padding: 10px; height: 100%'";

		$title = "<h3 class='title color-warning text-xl'>$item->title</h3>";

		// $articleInfo = "<p class='margin-y-xs text-sm'><b>" . setting('author') . "</b> {$nick} | $date</p>";
		$articleInfo = '';

		$body = "<p class='excerpt text-md'>" . sanitizer()->truncate($body, 130) . "</p>";
	}
	return "
	$linkBefore
		<article id='$id' class='blog-{$item->name}'$style>
				$title
				$articleInfo
				$body
				$categories
		</article>
	$linkAfter
	";
}

/**
 * Return site branding.
 *
 * @param array|string $options Options to modify default behavior:
 * 'home' (link): linkt to home url.
 * 'site_name' (string): site name.
 * 'site_description' (string): site description.
 * 'site_logo' (url): Logo URL.
 * 'before' (string): Before branding.
 * 'after' (string): After branding.
 *
 */
function siteBranding($options = array()) {

// Default Options
	$defaults = array(
		'home' => setting('home')->url,
		'site_name' => setting('site-name'),
		'site_description' => setting('site-description'),
		'siteLogo' => setting('logo'),
		'before' => '/',
		'after' => '/',
	);
// Merge Options
	$options = _mergeOptions($defaults, $options);
	$siteLogo = $options['siteLogo'] ? "<img src='$options[siteLogo]' class='logo' alt='$options[site_name]'>" : '';

// if home ( set headings )
	if(page()->id == 1) {
		$h1 = 'h1';
		$h2 = 'h2';
	} else {
		$h1 = 'p';
		$h2 = 'h1';
		$options['site_description'] = setting('title');
	}

// Return content
	return "
		<$h1 class='site-name flex flex-center'>
			$options[before]
			<a class='site-name--link' href='$options[home]'>
				$siteLogo
				<span class='logo-effect' data-letters='$options[site_name]'>
					$options[site_name]
				</span>
			</a>
		</$h1>

		<$h2 class='site-title'>
			$options[site_description] $options[after]
		</$h2>
	";
}

/**
 * Return Site Copyright
 *
 * @param array|string $options Options to modify default behavior:
 *  - `home_page` (link): home page URL.
 *  - `site_name` (string): Site name.
 *  - `all_right` (string): All rights reserved ( text ).
 *  - `year` (date): Year.
 *
 */
function siteCopy($options = array()) {

	// Default Options
	$defaults = array(
		'home_page' => setting('home')->url,
		'site_name' => setting('site-name'),
		'all_right' => setting('all-right'),
		'year' => date('Y')
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	return "<a href='$options[home_page]' class='site-name--link' aria-label='home'>
				<span class='logo-effect' data-letters='&copy; $options[site_name]'>
					&copy; $options[site_name]
				</span>
			</a>
	$options[year] $options[all_right]";
}

/**
 * Return Fether icon ( https://feathericons.com/ )
 *
 * @param string $icon icon
 * @param array|string $options Options to modify default behavior:
 *  - `class` (string): css class property.
 *  - `width` (int): css property width.
 *  - `height` (int): css property height.
 *  - `stroke` (string): css color property.
 *  - `stroke_width` (int): width property.
 *  - `fill` (string): css class property.
 *  - `stroke_linecap` (string): css class property.
 *  - `stroke_linejoin` (string): css class property.
 *
 */
function icon($icon, $options = array()) {

	// If  item is empty return null
	if(!$icon) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

    // Cleanup icon
	$icon = sanitizer()->removeWhitespace($icon);

	// Default Options
	$defaults = array(
		'class' => "feather-icon $icon",
		'width' => '24',
		'height' => '24',
		'stroke' => 'currentColor',
		'stroke_width' => 2,
		'fill' => 'none'
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	$out .= "<i data-feather='$icon'
				class='$options[class]'
				width='$options[width]'
				height='$options[height]'
				stroke='$options[stroke]'
				stroke-width='$options[stroke_width]'
				fill='$options[fill]'>
			</i>\n";
	return $out;
}

/**
 * Return Google Webmaster Tools Verification Code
 *
 * @param string $code
 *
 */
function gwCode($code) {
// If code is empty return null
if(!$code) return;

// Return Google Verification Code
return "\t\t<!-- Google Site Verification Code -->
		<meta name='google-site-verification' content='$code' />\n";
}

/**
 * Return Google Analytics Tracking Code
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/
 *
 * @param string $code {your-google-analytics-code}
 *
 */
function gaCode($code) {
// If code is empty return null
if(!$code) return;

// Return Google Analytics Tracking Code
return "<!-- Google Analytics Tracking Code -->
<script defer src='https://www.googletagmanager.com/gtag/js?id=UA-{$code}'></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'UA-{$code}');
</script>\n";
}

/**
 * Return Link to Edit Page
 *
 * @param array|string $options Options to modify default behavior:
 *  - `id` (string): Selector id.
 *  - `div_class` (string): Selector div class.
 *  - `link_class` (string): Selector link class.
 *  - `edit_text` (string): The name of the buttont.
 *  - `edit_url` (link): Url to edit the page
 *
 */
function editBtn($options = array()) {
// if not Page Editable return null
if(!page()->editable()) return;

	// Default Options
	$defaults = array(
	'id' => 'edit-btn',
	'div_class' => 'edit-btn',
	'link_class' => 'button text-xxl',
	'edit_text' => setting('edit'),
	'edit_url' => page()->editURL,
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	// Display region debugging info
	return "<div id='$options[id]' class='$options[div_class]'>
	<a class='$options[link_class]' href='$options[edit_url]'>$options[edit_text]</a></div>";
}

/**
 * Return region debugging info
 *
 * @param array|string $options Options to modify default behavior:
 *  - `id` (string): Selector id.
 *  - `class` (string): Selector class.
 *
 */
function debugInfo($options = array()) {

// if not Page Editable return null
if(!page()->editable()) return;

if( !config()->debug && !user()->isSuperuser() ) return;

	// Default Options
	$defaults = array(
		'id' => 'debug-bar',
		'class' => 'debug-bar container p-20'
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	// display region debugging info
	return "
			<div id='$options[id]' class='$options[class]'>
				<!--PW-REGION-DEBUG-->
			</div>
		";
}

/*****************************************************************************************
 * Internal support functions
 *
 */

/**
 * Prepare and merge an $options argument
 *
 * - This converts PW selector strings data attribute strings to associative arrays.
 * - This converts non-associative attributes to associative boolean attributes.
 * - This merges $defaults with $options.
 *
 * @param array $defaults
 * @param array|string $options
 * @return array
 * @internal
 *
 */
function _mergeOptions(array $defaults, $options) {

	// allow for ProcessWire selector style strings
	// allow for Uikit data attribute strings
	if(is_string($options)) {
		$options = str_replace(';', ',', $options);
		$o = explode(',', $options);
		$options = array();
		foreach($o as $value) {
			if(strpos($value, '=')) {
				// key=value
				list($key, $value) = explode('=', $value, 2);
			} else if(strpos($value, ':')) {
				// key: value
				list($key, $value) = explode(':', $value, 2);
			} else {
				// boolean
				$key = $value;
				$value = true;
			}
			$key = trim($key);
			if(is_string($value)) {
				$value = trim($value);
				// convert boolean strings to real booleans
				$v = strtolower($value);
				if($v === 'false') $value = false;
				if($v === 'true') $value = true;
			}
			$options[$key] = $value;
		}
	}

	if(!is_array($options)) {
		$options = array();
	}

	foreach($options as $key => $value) {
		if(is_int($key) && is_string($value)) {
			// non-associative options convert to boolean attribute
			$defaults[$value] = true;
		}
	}

	return array_merge($defaults, $options);
}
