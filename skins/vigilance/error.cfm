<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head>
	<title><mango:Message title /> &#8212; Error</title>		

	<!--Stylesheets-->
	<link href="skins/vigilance/assets/styles/style.css" type="text/css" media="screen" rel="stylesheet">
	<!--[if lt IE 8]><link rel="stylesheet" type="text/css" media="screen" href="skins/vigilance/assets/styles/ie.css" /><![endif]-->
	<!--[if lte IE 6]><link rel="stylesheet" type="text/css" media="screen" href="skins/vigilance/assets/styles/ie6.css" /><![endif]-->
</head>
<body class="home blog">

<div id="wrapper">
	<div id="header" class="clear">
		<h1 id="title"><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<div id="description">
			<h2>Error</h2>
		</div><!--end description-->
    	<div id="nav">
			<ul>
			</ul>
		</div><!--end nav-->
	</div><!--end header-->
	<div id="content" class="pad ">
		<div id="post" class="post hentry category-release">
			<div class="post-header">
				<h2><mango:Message title /></h2>		
			</div><!--end post header-->
			<div class="entry clear"><br />
					<mango:Message text />
					<mango:Message data />
			</div><!--end entry-->			
		</div>
	</div>
	<div id="sidebar">
	</div><!--end sidebar-->	
	<div id="footer">
		<p><a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a> &mdash; <a href="http://themes.jestro.com/vigilance/">Vigilance Theme</a> by <a href="http://jestro.com/">Jestro</a> ported by <a href="http://www.lowndes.net">Benedict Lowndes</a></p>
	</div><!--end footer-->
</div><!--end wrapper-->
</body></html>