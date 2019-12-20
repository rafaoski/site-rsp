### RSP / Site Profile For [ProcessWire 3x](https://processwire.com/) with include new API additions like:
#### [New “Unique” status for pages](https://processwire.com/blog/posts/pw-3.0.127/) ( Home Page )
#### [New $page->if() method](https://processwire.com/blog/posts/pw-3.0.126/)
#### [API setting()](https://processwire.com/blog/posts/processwire-3.0.119-and-new-site-updates/#new-functions-api-setting-function)
#### [MarkupRegions](https://processwire.com/blog/posts/processwire-3.0.49-introduces-a-new-template-file-strategy/)
#### [FunctionsAPI](https://processwire.com/blog/posts/processwire-3.0.39-core-updates/#new-functions-api)

### How To Install
1. Download the [zip file](https://github.com/rafaoski/site-rsp/archive/master.zip) at Github or clone directly the repo: ```git clone https://github.com/rafaoski/site-rsp.git```
2. Extract the folder **site-rsp-master** into a fresh ProcessWire installation root folder.
3. During the installation of ProcessWire, choose the profile **A Really Simple Site Profile**.

### Basic Info
1. This is the site profile that was created using the modern lightweight [CodyFrame Framework](https://codyhouse.co/ds/docs/framework)
All the content made available through CodyHouse.co is copyrighted material owned by Amber Creative Lab, Ltd.
The CodyFrame Framework are released under the MIT license and can be used for free on anything you'd like.
https://codyhouse.co/license#framework
2. Most of the profile settings and translates are in the ``` _init.php ``` file.
3. Functions can be found in the ``` _func.php ``` file.
4. The entire view is rendered in the ``` _main.php ``` file that uses [markup regions](https://processwire.com/docs/front-end/output/markup-regions/).
5. You can easily add [hooks](https://processwire.com/docs/modules/hooks/) using the ``` ready.php ``` file.

  #### If you want to use Gulp stack you must first ensure that [Node.js](https://nodejs.org/en/download/) and [NPM](https://www.npmjs.com/get-npm) are installed on your machine.
  Basic example to Debian and Ubuntu based Linux distributions:
  #### Node.js
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  sudo apt-get install -y nodejs

  See more installation options [LINK](https://nodejs.org/en/download/package-manager/)
  #### npm is installed with Node.js just check in linux terminal like below:
  <code>node -v</code>
  <code>npm -v</code>

  #### Set BrowserSync inside <code>gulpfile.js</code> as below:
  only change your <code>var siteUrl = 'http://rsp.test';</code> to your ProcessWire development url like:
  <code>siteUrl = 'http://localhost/processwire-site.test/';</code>

  Next install npm packages in your templates folder with command <code><b>npm install</b></code>

  Now, boot up the dev server <code><b>gulp watch</b></code>, and you're all set go!

  #### Simple Usage ( Basic Command )
  <ul>
  <li><b>Install</b> <code>npm install</code></li>
  <li><b>Watch</b> <code>gulp watch</code></li>
  </ul>

  Now you can add [CodyHouse Components](https://codyhouse.co/ds/components) inside folders:<br>
  <code>assets/css/components</code><br> <code>assets/js/components</code><br>
  Learn more about how to add components https://www.youtube.com/watch?v=8NLRhaSnQS0 <br>
  More about license components https://codyhouse.co/license#components

  #### Folder With all SCSS files is inside assets/css

  #### All compiled styles is inside  assets/css ( style.css, style-fallback.css )

#### References:
[CodyFrame Framework](https://codyhouse.co/ds/docs/framework)<br>
[UIKIT3 Framework](https://getuikit.com/)<br>
[AddToAny - Universal Sharing Buttons](https://www.addtoany.com/)<br>
[Feather Icons](https://feathericons.com/)<br>
[autoComplete.js](https://tarekraafat.github.io/autoComplete.js)<br>
[Web Font Loader](https://github.com/typekit/webfontloader)<br>
[AddToAny](https://www.addtoany.com/)<br>
[Cool Text](https://cooltext.com/Logo-Design-Skate)<br>
[Pixabay](https://pixabay.com/)<br>

####  License
2019 byHumans under the [MIT license](LICENSE).
