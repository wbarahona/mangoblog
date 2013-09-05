<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
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
			</ul>
		</div><!--end nav-->
	</div><!--end header-->
	<div id="content" class="pad ">
		<div id="menu">
  			<img src="<mango:Blog skinurl />assets/images/greenfield.jpg" alt="Vigilance" height="125" width="596" />
		</div><!--end menu-->	
		<mango:Posts count="10">
		<mango:Post>
		<div id="post-<mango:PostProperty id />" class="post <mango:Categories><mango:Category>tag-<mango:CategoryProperty title /> </mango:Category></mango:Categories>">
			<div class="post-header">
				<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
				<div class="date"><span><mango:PostProperty date dateformat="yyyy" /></span> <mango:PostProperty date dateformat="mmmm dd" /></div>
				<div class="comments">
					<mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty>
					<mango:PostProperty ifCommentCountGT="0"><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />">
						<mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty>
						</a></mango:PostProperty></div>	
			</div><!--end post header-->
			<div class="meta clear">
				<div class="tags">
					tags: 
					<mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
				</div>
				<div class="author">by <mango:Author><a href="<mango:AuthorProperty link />"><mango:PostProperty author /></a></mango:Author></div>
			</div><!--end meta-->
			<div class="entry clear">
				<mango:PostProperty ifhasExcerpt excerpt>
					<p><a href="<mango:PostProperty link />" title="Read the rest of this entry" class="more-link">read more...</a></p>
				</mango:PostProperty>
				<mango:PostProperty ifNotHasExcerpt body />		
			</div><!--end entry-->
			<div class="post-footer">
				<mango:Event name="beforePostContentEnd" template="index" mode="excerpt" />
			</div><!--end post footer-->
		</div>
		<!--end post-->
		</mango:Post>
		</mango:Posts>
		
		<mango:Archive pageSize="10">
			<div class="navigation index">
				<div class="alignleft"><mango:ArchiveProperty ifHasNextPage><a class="previous" href="<mango:ArchiveProperty link pageDifference="1" />">&larr; Previous Entries</a></mango:ArchiveProperty></div>
				<div class="alignleft"></div>
			</div>
		</mango:Archive>
	</div>
	<div id="sidebar">
		<mangox:PodGroup locationId="sidebar" template="index">
			<template:sidebar />
		</mangox:PodGroup>
	</div><!--end sidebar-->	
	<div id="footer">
		<mango:Event name="afterFooterStart" />
		<p class="right">Copyright <mango:Blog date dateformat="yyyy" />  <mango:Blog title /></p>
		<p><a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a> &mdash; <a href="http://themes.jestro.com/vigilance/">Vigilance Theme</a> by <a href="http://jestro.com/">Jestro</a> ported by <a href="http://www.lowndes.net">Benedict Lowndes</a></p>
		<mango:Event name="beforeFooterEnd" />
	</div><!--end footer-->
</div><!--end wrapper-->
<mango:Event name="beforeHtmlBodyEnd" />
</body></html>