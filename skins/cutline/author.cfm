<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<mango:Author>
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	
	<title><mango:AuthorProperty name /> &#8212; <mango:Blog title /></title>
	
	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
	<!--- <link rel="stylesheet" href="<mango:Blog skinurl />assets/styles/style.css" type="text/css" media="screen" /> --->
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/styles/custom.css" type="text/css" media="screen" />

	<!--- BOOTSTRAP INCLUDES --->
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/styles/bootstrap-responsive.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/styles/bootstrap.min.css" type="text/css" media="screen" />
	<script type="text/javascript" src="<mango:Blog skinurl />assets/scripts/bootstrap.min.js"></script>

	<!--- HTML5SHIV INCLUDE --->
	<!--[if IE]>
		<script src="<mango:Blog skinurl />assets/scripts/html5shiv.js"></script>
	<![endif]-->

	<!--[if lte IE 7]>
	<link rel="stylesheet" type="text/css" href="<mango:Blog skinurl />assets/styles/ie7.css" media="screen" />
	<![endif]-->
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="<mango:Blog skinurl />assets/styles/ie6.css" media="screen" />
	<![endif]-->
	
	<meta name="robots" content="index, follow" />

	<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />	
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
	<mango:Event name="beforeHtmlHeadEnd" />
</head>
<body class="custom">
<mango:Event name="beforeHtmlBodyStart" />
<div id="container">

	<div id="masthead" class="jumbotron">
		<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<h3><mango:Blog tagline /></h3>
	</div>

	<ul id="nav" class="navbar navbar-default nav">
		<li><a class="current" href="<mango:Blog basePath />">inicio</a></li>
		<mango:Pages><mango:Page>
			<li><a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
				<mango:PageProperty title /></a></li>
			</mango:Page></mango:Pages>
		<li class="rss"><a href="<mango:Blog rssurl />">RSS</a></li>
		<li>
			<form name="searchForm" id="search_form" method="get" action="<mango:Blog searchUrl />" class="navbar-form navbar-left">
				<input type="text" class="search_input form-control" name="term" value="Buscar..." id="term" onfocus="if (this.value == 'Buscar...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Buscar...';}" />
				<input type="hidden" id="searchsubmit" value="Search" />
			</form>
		</li>
	</ul>
	<br />
	<div id="header_img">
		<img src="<mango:Blog skinurl />assets/images/header_3.jpg" width="770" height="140" alt="<mango:Blog title />" title="<mango:Blog title />" />
	</div>
	<div id="content_box">
	
		<div id="content" class="pages">
			<h2>Acerca <mango:AuthorProperty name /></h2>
			<div class="entry">
			<mango:AuthorProperty description />
			
			<h3>Articulos recientes por <mango:AuthorProperty name /></h3>
			<ul>
			<mango:Posts count="10">
				<mango:Post>
					<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></li>
				</mango:Post>
				</mango:Posts>
			</ul>
			</div>
			<div class="clear"></div>

<div class="clear flat"></div>
</div>

<!--- <div id="sidebar">
	<ul class="sidebar_list">
		<mangox:PodGroup locationId="sidebar" template="author">
			<template:sidebar />
		</mangox:PodGroup>
	</ul>
</div>	 --->
	</div>

	<div id="footer" class="well well-lg"><mango:Event name="afterFooterStart" />
		<p>2013 &dash; &reg; <mango:Blog title /> &mdash; Willmer Barahona Web Develpment &mdash; Proudly Honduran! <a target="_blank" href="http://www.visitehonduras.com">Visit Honduras</a></p>
	<mango:Event name="beforeFooterEnd" />
	</div>
</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</mango:Author>
</html>