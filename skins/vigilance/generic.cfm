<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head>
	<title><mango:Blog title /> &#8212; <mango:Blog tagline /></title>
		
	<!-- Basic Meta Data -->
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
		
	<!-- Favicon -->
	<link rel="shortcut icon" href="<mango:Blog skinurl />assets/images/favicon.png" />

	<!--Stylesheets-->
	<link href="<mango:Blog skinurl />assets/styles/style.css" type="text/css" media="screen" rel="stylesheet" />
	<!--[if lt IE 8]><link rel="stylesheet" type="text/css" media="screen" href="<mango:Blog skinurl />assets/styles/ie.css" /><![endif]-->
	<!--[if lte IE 6]><link rel="stylesheet" type="text/css" media="screen" href="<mango:Blog skinurl />assets/styles/ie6.css" /><![endif]-->

	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
	<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />	
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
	
	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	<meta name="robots" content="index, follow" />
	<mango:Event name="beforeHtmlHeadEnd" />
</head>
<body class="home blog">
<mango:Event name="beforeHtmlBodyStart" />	
<div id="wrapper">
	<div id="header" class="clear">
		<h1 id="title"><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<div id="description">
			<h2><mango:Blog tagline /></h2>
		</div><!--end description-->
    	<div id="nav">
			<ul>
				<li class="page_item current_page_item"><a href="<mango:Blog basePath />">Home</a></li>
				<mango:Pages><mango:Page>
					<li class="page_item"><a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a></li>
				</mango:Page></mango:Pages>
				<!--- 
				<li class="rss"><a href="<mango:Blog rssurl />">RSS</a></li>
				--->
			</ul>
		</div><!--end nav-->
	</div><!--end header-->
	<div id="content" class="pad ">
		<div class="post hentry category-release">
			<div class="post-header">
				<h2><mango:Message title /></h2>		
			</div><!--end post header-->
			<div class="entry clear"><br />
				<mango:Message text />
				<mango:Message data />
			</div>		
		</div>
	</div>
		<div id="sidebar">
			<mangox:PodGroup locationId="sidebar" template="generic">
				<template:sidebar />
			</mangox:PodGroup>
		</div><!--end sidebar-->	
		<div id="footer">
			<mango:Event name="afterFooterStart" />
			<p class="right">Copyright <mango:Blog date dateformat="yyyy" />  <mango:Blog title /></p>
			<p><a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a> &mdash; <a href="http://themes.jestro.com/vigilance/">Vigilance Theme</a> by <a href="http://jestro.com/">Jestro</a> ported by <a href="http://www.lowndes.net">Benedict Lowndes</a></p>
			<mango:Event name="beforeFooterEnd" />
		</div><!--end footer-->

	</div>

<mango:Event name="beforeHtmlBodyEnd" />
</body></html>