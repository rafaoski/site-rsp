# --- WireDatabaseBackup {"time":"2019-12-15 12:34:44","user":"","dbName":"ps","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h3>Learn more about ProcessWire</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/docs/start/variables/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire API variables</a></li>\n	<li><a href=\"https://processwire.com/docs/start/variables/page/\" target=\"_blank\" rel=\"noreferrer noopener\">Page</a></li>\n	<li><a href=\"https://processwire.com/docs/start/variables/pages/\" target=\"_blank\" rel=\"noreferrer noopener\">Pages</a></li>\n	<li><a href=\"https://processwire.com/docs/fields/images/\" target=\"_blank\" rel=\"noreferrer noopener\">Images</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.39-core-updates/#new-functions-api\" target=\"_blank\" rel=\"noreferrer noopener\">New functions API</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.40-core-updates/\" target=\"_blank\" rel=\"noreferrer noopener\">More on the Functions API</a></li>\n	<li><a href=\"https://processwire.com/docs/front-end/output/markup-regions/\" target=\"_blank\" rel=\"noreferrer noopener\">Markup regions</a></li>\n	<li><a href=\"https://processwire.com/api/ref/functions/setting/\" target=\"_blank\" rel=\"noreferrer noopener\">Get or set a runtime site setting</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/pw-3.0.126/\" target=\"_blank\" rel=\"noreferrer noopener\">New $page-&gt;if() method</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/making-efficient-use-of-fields-in-processwire/\" target=\"_blank\" rel=\"noreferrer noopener\">Optimize field use</a></li>\n	<li><a href=\"https://processwire.com/api/ref/wire-file-tools/render/\" target=\"_blank\" rel=\"noreferrer noopener\">$files-&gt;render() method</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.107-core-updates/#page-gt-links\" target=\"_blank\" rel=\"noreferrer noopener\">$page-&gt;links() method</a></li>\n	<li><a href=\"https://processwire.com/docs/multi-language-support/\" target=\"_blank\" rel=\"noreferrer noopener\">Multi language</a></li>\n</ul>\n\n<h3>Modules and Hooks</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/docs/modules/\" target=\"_blank\" rel=\"noreferrer noopener\">Modules ( plugins ) and hooks</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/building-custom-admin-pages-with-process-modules/\" target=\"_blank\" rel=\"noreferrer noopener\">Yes, it’s that simple! ;)</a></li>\n	<li><a href=\"https://modules.processwire.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Modules Plugins Directory</a></li>\n	<li><a href=\"https://processwire.com/store/\" target=\"_blank\" rel=\"noreferrer noopener\">Pro Modules</a></li>\n</ul>\n\n<h3>Community</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer noopener\">Forums</a></li>\n	<li><a href=\"https://weekly.pw/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire Weekly</a></li>\n</ul>\n\n<h3>Download</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Download the ProcessWire core from GitHub or 3rd party modules</a></li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1015', '<p>Codyhouse Framework:<br />\n<a href=\"https://codyhouse.co/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codyhouse.co/</a><br />\n<br />\nOptional Frameworks:<br />\n<a href=\"https://getuikit.com/\" target=\"_blank\" rel=\"noreferrer noopener\">https://getuikit.com/</a><br />\n<br />\nAutoComplete.js:<br />\n<a href=\"https://tarekraafat.github.io/autoComplete.js\" target=\"_blank\" rel=\"noreferrer noopener\">https://tarekraafat.github.io/autoComplete.js</a></p>\n\n<p>Google Fonts:<br />\n<a href=\"https://fonts.google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">https://fonts.google.com/</a></p>\n\n<p>Web Font Loader: <br />\n<a href=\"https://github.com/typekit/webfontloader\" target=\"_blank\" rel=\"noreferrer noopener\">https://github.com/typekit/webfontloader</a></p>\n\n<p>Icons:<br />\n<a href=\"http://feathericons.com/\" target=\"_blank\" rel=\"noreferrer noopener\">https://feathericons.com/</a><br />\n<br />\nAddToAny Social Share Buttons:<br />\n<a href=\"https://www.addtoany.com/\">https://www.addtoany.com/ </a><br />\n<br />\nFavicon:<br />\n<a href=\"https://cooltext.com/Logo-Design-Skate\" target=\"_blank\" rel=\"noreferrer noopener\">https://cooltext.com/Logo-Design-Skate</a></p>\n\n<p>Images:<br />\n<a href=\"https://pixabay.com/\" target=\"_blank\" rel=\"noreferrer noopener\">https://pixabay.com/</a></p>\n\n<p>Leaflet Map:<br />\n<a href=\"https://leafletjs.com/index.html\" target=\"_blank\" rel=\"noreferrer noopener\">https://leafletjs.com/index.html </a></p>\n\n<p>Visible Element when Scrolling:<br />\n<a href=\"https://usefulangle.com/post/113/javascript-detecting-element-visible-during-scroll\" target=\"_blank\" rel=\"noreferrer noopener\">https://usefulangle.com/post/113/javascript-detecting-element-visible-during-scroll</a></p>\n\n<p>Pure CSS Scroll To Top: <br />\n<a href=\"https://codepen.io/rolandtoth/pen/eMamVK\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/rolandtoth/pen/eMamVK</a><br />\n<a href=\"https://processwire.com/talk/topic/19013-reveal-scrolltop-link-on-scroll-css-only/\" target=\"_blank\" rel=\"noreferrer noopener\">https://processwire.com/talk/topic/19013-reveal-scrolltop-link-on-scroll-css-only/</a></p>\n\n<p>CSS Effects:<br />\n<a href=\"https://uicookies.com/css-text-effects/\" target=\"_blank\" rel=\"noreferrer noopener\">https://uicookies.com/css-text-effects/</a><br />\n<a href=\"https://tympanus.net/codrops/2015/05/13/inspiration-for-text-styles-and-hover-effects/\" target=\"_blank\" rel=\"noreferrer noopener\">https://tympanus.net/codrops/2015/05/13/inspiration-for-text-styles-and-hover-effects/</a></p>\n\n<p>Page Loader:<br />\n<a href=\"https://css-tricks.com/lets-make-a-fancy-but-uncomplicated-page-loader/\" target=\"_blank\" rel=\"noreferrer noopener\">https://css-tricks.com/lets-make-a-fancy-but-uncomplicated-page-loader/</a><br />\n<a href=\"https://github.com/maximakymenko/page-preloader-tutorial\" target=\"_blank\" rel=\"noreferrer noopener\">https://github.com/maximakymenko/page-preloader-tutorial</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1024', '<p>From Wikipedia, the free encyclopedia.</p>\n\n<p>Pirates of the Caribbean<em><strong>: </strong></em>The Curse of the Black Pearl is a 2003 American fantasy swashbuckler film directed by Gore Verbinski and the first film in the <a	data-pwid=1025	href=\"/blog/dead-mans-chest-2006/\">Pirates of the Caribbean</a> film series. Produced by Walt Disney Pictures and Jerry Bruckheimer, the film is based on Walt Disney\'s Pirates of the Caribbean attraction at Disney theme parks.[3] The story follows pirate Jack Sparrow (Johnny Depp) and blacksmith Will Turner (Orlando Bloom) as they rescue the kidnapped Elizabeth Swann (Keira Knightley) from the cursed crew of the Black Pearl, captained by Hector Barbossa (Geoffrey Rush), who become undead skeletons at night.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1025', '<p>From Wikipedia, the free encyclopedia.<br />\n<br />\n<strong>Pirates of the Caribbean: Dead Man\'s Chest</strong> is a 2006 American fantasy swashbuckler film. It is the second installment of the Pirates of the Caribbean film series and the sequel to Pirates of the Caribbean: The Curse of the Black Pearl (2003). It was directed by Gore Verbinski, written by Ted Elliott and Terry Rossio, and produced by Jerry Bruckheimer. In the film, the wedding of Will Turner (Orlando Bloom) and Elizabeth Swann (Keira Knightley) is interrupted by Lord Cutler Beckett (Tom Hollander), who wants Turner to acquire the compass of Captain Jack Sparrow (Johnny Depp) in a bid to find the Dead Man\'s Chest. Sparrow discovers his debt to Davy Jones (Bill Nighy) is due.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1053', '<h3>Who we are</h3>\n\n<p>Our website address is: https://rsp.test</p>\n\n<h3>What personal data we collect and why we collect it</h3>\n\n<h3>Comments</h3>\n\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n\n<h4>Media</h4>\n\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n\n<h3>Contact forms</h3>\n\n<h3>Cookies</h3>\n\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n\n<p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n\n<h3>Embedded content from other websites</h3>\n\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n\n<h3>Analytics</h3>\n\n<h3>Who we share your data with</h3>\n\n<h3>How long we retain your data</h3>\n\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n\n<h3>What rights you have over your data</h3>\n\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n\n<h3>Where we send your data</h3>\n\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n\n<h3>Your contact information</h3>\n\n<h3>Additional information</h3>\n\n<h3>How we protect your data</h3>\n\n<h3>What data breach procedures we have in place</h3>\n\n<h3>What third parties we receive data from</h3>\n\n<h3>What automated decision making and/or profiling we do with user data</h3>\n\n<h3>Industry regulatory disclosure requirement</h3>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1025', '1033', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1024', '1048', '0');

DROP TABLE IF EXISTS `field_checkbox`;
CREATE TABLE `field_checkbox` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1024', '2019-11-09 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1025', '2019-11-09 00:00:00');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_favicon`;
CREATE TABLE `field_favicon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_favicon` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'favicon.png', '0', '', '2019-12-11 20:31:20', '2019-12-11 20:31:20', '');

DROP TABLE IF EXISTS `field_fieldset_options`;
CREATE TABLE `field_fieldset_options` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_options_end`;
CREATE TABLE `field_fieldset_options_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_seo`;
CREATE TABLE `field_fieldset_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_seo_end`;
CREATE TABLE `field_fieldset_seo_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1025', 'penguin-161356_640-compressor.png', '0', '', '2019-11-09 18:46:24', '2019-11-09 18:46:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1024', 'bomb-3175208_640-compressor.png', '0', '', '2019-11-09 18:46:44', '2019-11-09 18:46:44', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'inkscape-4381041_640-compressor.png', '0', '', '2019-12-14 15:05:10', '2019-12-14 15:05:10', '');

DROP TABLE IF EXISTS `field_logo`;
CREATE TABLE `field_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_meta_description`;
CREATE TABLE `field_meta_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1053', 'We use cookies to personalise content and ads, to provide social media features and to analyse our traffic.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1024', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1', 'ProcessWire is like a power tool for your website, able to deliver any output, at any scale, to any number of people.');

DROP TABLE IF EXISTS `field_meta_title`;
CREATE TABLE `field_meta_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1053', 'Cookie Notice');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1024', 'Lorem Ipsum is simply dummy text of the printing and typeset');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1', 'Learn more about ProcessWire');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1030', '167');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_site_info`;
CREATE TABLE `field_site_info` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1040', '3');
INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1041', '4');
INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1042', '0');
INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1043', '2');
INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1044', '1');
INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1045', '5');
INSERT INTO `field_site_info` (`pages_id`, `data`, `sort`) VALUES('1', '1050', '6');

DROP TABLE IF EXISTS `field_text_1`;
CREATE TABLE `field_text_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1', 'RSP');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1040', 'https://twitter.com/');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1041', 'https://facebook.com/');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1044', '577-274-006');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1043', 'test@gmail.com');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1042', 'Eiffel Tower / Paris, France');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1045', 'https://www.youtube.com');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1050', '36.292160, -88.296463, Let\'s meet on the spot');

DROP TABLE IF EXISTS `field_textarea_1`;
CREATE TABLE `field_textarea_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1', 'A Really Simple Site Profile');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Sitemap');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'search.json');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Footer Panel');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Ship');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'The Curse of the Black Pearl (2003)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Dead Man\'s Chest (2006)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Adress');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'Mail');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Facebook');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Twitter');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'Phone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'YouTube');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Set map latitude and longitude from ( https://www.latlong.net/ )');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'Black Pearl');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Privacy Policy');

DROP TABLE IF EXISTS `field_user_nick`;
CREATE TABLE `field_user_nick` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_user_nick` (`pages_id`, `data`) VALUES('41', 'rafaoski');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'search-json');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'blog');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'blog-categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'blog-category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'custom_options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'privacy');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '113', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '100', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '100', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '105', '8', '{\"columnWidth\":50,\"label\":\"Site Name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '109', '9', '{\"columnWidth\":50,\"label\":\"Site Description\",\"rows\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '106', '10', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '107', '11', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '115', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '114', '13', '{\"description\":\"By enabling features, you will hide unneeded editing pages, such as search page, 404 error, or admin page\",\"label\":\"Enable Clean Admin Tree\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '99', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '100', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '102', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '103', '7', '{\"label\":\"Blog Options\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '100', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '104', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '101', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '114', '8', '{\"label\":\"Disable Comments\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '114', '2', '{\"label\":\"Disable Comments\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '112', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '103', '4', '{\"label\":\"Article Options\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '110', '5', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '111', '6', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '105', '1', '{\"label\":\"Options\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '102', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '102', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '102', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '100', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '102', '6', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"htmlOptions\":[2],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeText', 'meta_title', '0', 'Meta Title', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":60,\"showCount\":1,\"size\":0,\"notes\":\"A title tag is an HTML element that specifies the title of a web page. Title tags are displayed on search engine results pages (SERPs) as the clickable headline for a given result, and are important for usability, SEO, and social sharing. The title tag of a web page is meant to be an accurate and concise description of a page\'s content.\\nMore info [MOZ Title Tag](https:\\/\\/moz.com\\/learn\\/seo\\/title-tag)\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeText', 'meta_description', '0', 'Meta Description', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":170,\"showCount\":1,\"size\":0,\"notes\":\"The meta description is an HTML attribute that provides a brief summary of a web page. Search engines such as Google often display the meta description\\u2014typically up to 160 characters long\\u2014in search results where they can highly influence user click-through rates.\\nMore Info [MOZ Meta Description](https:\\/\\/moz.com\\/learn\\/seo\\/meta-description)\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeFieldsetTabOpen', 'fieldset_seo', '0', 'SEO', '{\"closeFieldID\":102,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeFieldsetClose', 'fieldset_seo_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_seo\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":101}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeFieldsetTabOpen', 'fieldset_options', '0', 'Site Options', '{\"closeFieldID\":104,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeFieldsetClose', 'fieldset_options_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_options\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":103}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'text_1', '0', 'Text 1', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeImage', 'logo', '0', 'Logo', '{\"extensions\":\"gif jpg jpeg png svg webp\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeImage', 'favicon', '0', 'Favicon', '{\"extensions\":\"gif jpg jpeg png ico\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png webp svg\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeTextarea', 'textarea_1', '0', 'Textarea 1', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeDatetime', 'date', '0', 'Date', '{\"dateOutputFormat\":\"m\\/d\\/Y\",\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"m\\/d\\/Y\",\"defaultToday\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypePage', 'categories', '0', 'Categories', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1027,\"labelFieldName\":\"title\",\"collapsed\":0,\"template_id\":49,\"addable\":1,\"usePageEdit\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":1,\"redirectAfterPost\":1,\"useNotify\":0,\"deleteSpamDays\":3,\"depth\":0,\"dateFormat\":\"relative\",\"useVotes\":0,\"useStars\":0,\"schemaVersion\":6,\"useGravatar\":\"g\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'user_nick', '0', 'User Nickname', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeCheckbox', 'checkbox', '0', 'Checkbox', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypePage', 'site_info', '0', 'Info Panel', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1036,\"template_id\":50,\"labelFieldName\":\"title\",\"collapsed\":0,\"usePageEdit\":1,\"optionColumns\":0}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '{\"shortcutSort\":[46,49],\"bookmarks\":{\"_0\":[]}}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '33', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2019-10-26 17:50:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"admin_theme\",\"email\",\"pass\",\"user_nick\"]}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":17,\"coreVersion\":\"3.0.146\"}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2019-10-26 17:50:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2019-10-26 17:50:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2019-10-26 17:50:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2019-10-26 17:51:01');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2019-10-26 17:51:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldPageAutocomplete', '0', '', '2019-10-28 21:16:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypeComments', '1', '', '2019-11-03 19:03:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldCommentsAdmin', '0', '', '2019-11-03 19:03:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'ProcessCommentsManager', '1', '', '2019-11-03 19:04:57');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1054 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '41', '2019-12-14 19:52:32', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'proc', '1035', '2019-12-13 19:17:37', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2019-10-26 17:51:15', '40', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2019-10-26 17:51:20', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2019-10-26 17:51:18', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1039', '2019-10-27 11:23:09', '41', '2019-10-26 17:50:35', '3', '2019-10-26 17:50:35', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'test', '1', '2019-12-14 14:19:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '2', '2019-10-26 17:50:35', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '41', '2019-10-26 17:50:35', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2019-10-26 17:50:35', '40', '2019-10-26 17:50:35', '40', '2019-10-26 17:50:35', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2019-10-26 17:50:35', '40', '2019-10-26 17:50:35', '40', '2019-10-26 17:50:35', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2019-10-26 17:50:56', '40', '2019-10-26 17:50:56', '40', '2019-10-26 17:50:56', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2019-10-26 17:50:56', '40', '2019-10-26 17:50:56', '40', '2019-10-26 17:50:56', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2019-10-26 17:51:01', '40', '2019-10-26 17:51:01', '40', '2019-10-26 17:51:01', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2019-10-26 17:51:01', '40', '2019-10-26 17:51:01', '40', '2019-10-26 17:51:01', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2019-10-26 17:51:01', '40', '2019-10-26 17:51:01', '40', '2019-10-26 17:51:01', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '1', '29', 'about', '1', '2019-12-15 13:32:36', '41', '2019-10-26 18:44:13', '41', '2019-10-26 18:44:13', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1023', '46', 'the-curse-of-the-black-pearl-2003', '1', '2019-12-14 19:03:05', '41', '2019-10-30 12:29:46', '41', '2019-10-30 12:29:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '44', 'sitemap', '1', '2019-12-12 15:11:33', '41', '2019-10-27 08:15:53', '41', '2019-10-27 08:15:53', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '45', 'search.json', '1061', '2019-12-14 19:52:02', '41', '2019-10-27 16:15:27', '41', '2019-10-27 16:15:27', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1027', '49', 'ship', '1', '2019-11-12 21:47:41', '41', '2019-11-12 21:47:41', '41', '2019-11-12 21:47:41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '2', '50', 'footer-panel', '1025', '2019-12-13 20:43:35', '41', '2019-12-07 13:12:30', '41', '2019-12-07 13:12:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1', '47', 'blog', '1', '2019-12-14 18:07:01', '41', '2019-10-30 12:28:03', '41', '2019-10-30 12:28:27', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1023', '46', 'dead-mans-chest-2006', '1', '2019-12-14 19:02:38', '41', '2019-10-30 12:29:57', '41', '2019-10-30 12:29:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1036', '50', 'facebook', '1', '2019-12-07 18:55:05', '41', '2019-12-07 13:38:34', '41', '2019-12-07 18:55:05', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1', '48', 'categories', '1', '2019-12-12 15:11:26', '41', '2019-10-30 12:38:11', '41', '2019-10-30 12:38:13', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '22', '2', 'comments', '1', '2019-11-03 19:04:57', '41', '2019-11-03 19:04:57', '41', '2019-11-03 19:04:57', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '31', '5', 'comments-manager', '1', '2019-11-03 19:04:57', '41', '2019-11-03 19:04:57', '41', '2019-11-03 19:04:57', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1036', '50', 'leafletjs', '1', '2019-12-14 08:30:33', '41', '2019-12-13 16:19:51', '41', '2019-12-13 16:19:53', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1036', '50', 'map-pin', '1', '2019-12-14 07:40:32', '41', '2019-12-07 13:40:53', '41', '2019-12-07 13:40:55', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1036', '50', 'twitter', '1', '2019-12-07 19:04:10', '41', '2019-12-07 13:32:14', '41', '2019-12-07 13:32:16', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1036', '50', 'mail', '1', '2019-12-13 20:43:31', '41', '2019-12-07 13:41:31', '41', '2019-12-07 13:41:32', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1036', '50', 'phone', '1', '2019-12-13 20:43:20', '41', '2019-12-07 13:41:41', '41', '2019-12-07 13:41:43', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1036', '50', 'youtube', '1', '2019-12-07 19:05:27', '41', '2019-12-07 19:04:57', '41', '2019-12-07 19:05:23', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1027', '49', 'black-pearl', '1', '2019-12-11 21:17:30', '41', '2019-12-11 16:20:13', '41', '2019-12-11 16:20:13', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1', '51', 'privacy-policy', '1025', '2019-12-14 19:52:11', '41', '2019-12-14 16:03:28', '41', '2019-12-14 16:07:38', '7');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2019-10-26 17:50:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2019-10-26 17:50:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2019-10-26 17:51:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2019-10-26 17:51:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2019-10-26 18:44:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2019-10-30 12:28:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2019-10-27 08:15:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2019-10-27 16:15:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '2', '2019-12-13 16:19:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2019-12-07 13:32:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '2', '2019-12-07 13:12:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2019-11-12 21:47:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2019-10-30 12:29:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '1', '2019-10-30 12:29:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '2', '2019-12-07 13:38:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2019-10-30 12:38:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '2', '2019-12-07 13:40:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2019-11-03 19:04:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '2', '2019-12-07 13:41:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1044', '2', '2019-12-07 13:41:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '2', '2019-12-07 19:04:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '1', '2019-12-11 16:20:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2019-12-14 16:03:28');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '2');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1575925003,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1573590072}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-home title\",\"compile\":3,\"modified\":1576329351,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-book title\",\"compile\":3,\"modified\":1576091103,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'sitemap', '98', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-sitemap title\",\"compile\":3,\"modified\":1576079411,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'search-json', '99', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"compile\":3,\"modified\":1576349668,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"contentType\":\"json\",\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'blog-post', '100', '0', '0', '{\"parentTemplates\":[47],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-quote-right title\",\"compile\":3,\"label\":\"Blog Post\",\"tags\":\"-blog\",\"modified\":1576403681,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'blog', '101', '0', '0', '{\"sortfield\":\"-110\",\"noParents\":-1,\"childTemplates\":[46],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-coffee title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1576338728,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'blog-categories', '102', '0', '0', '{\"noParents\":-1,\"childTemplates\":[49],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-sitemap title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1576411679,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'blog-category', '103', '0', '0', '{\"parentTemplates\":[48],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-plus-square title\",\"compile\":3,\"label\":\"Blog Category\",\"tags\":\"-blog\",\"modified\":1576338792,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'custom_options', '104', '0', '0', '{\"childTemplates\":[50],\"parentTemplates\":[2,50],\"slashUrls\":1,\"pageLabelField\":\"fa-cog title\",\"noShortcut\":1,\"compile\":3,\"modified\":1575722910}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'privacy', '105', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-expeditedssl title\",\"compile\":3,\"modified\":1576338653,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":31,"numCreateTables":37,"numInserts":456,"numSeconds":0}