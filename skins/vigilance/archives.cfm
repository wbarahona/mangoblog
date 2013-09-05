<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Archives &#8212; <mango:Blog title /></title>
		
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
				<li class="page_item"><a href="<mango:Blog basePath />">Home</a></li>
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
		<mango:Archive>
			<mango:ArchiveProperty ifIsType="category"><h1 class="pagetitle">Entries Tagged as <mango:ArchiveProperty title /></h1></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="month"><h1 class="pagetitle">Entries for month: <mango:ArchiveProperty title dateformat="mmmm yyyy"  /></h1></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="day"><h1 class="pagetitle">Entries for day: <mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></h1></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="year"><h1 class="pagetitle">Entries for year: <mango:ArchiveProperty title dateformat="yyyy" /></h1></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="search"><h1 class="pagetitle">Search Results for <span class="green"><mango:ArchiveProperty title /></h1></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="author"><h1 class="pagetitle">Entries by '<mango:ArchiveProperty title />'</h1></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="unknown"><h1 class="pagetitle">No archives</h1></mango:ArchiveProperty>
		</mango:Archive>
		<img class="archive-comment" src="<mango:Blog skinurl />assets/images/comments-bubble-archive.gif" width="17" height="14" alt="comment"/>
		<mango:Archive pageSize="15">
		<mango:ArchiveProperty ifNotIsType="recent">
		<mango:Posts count="15">
		<mango:Post>
        <div class="entries">
	      <ul>
	        <li><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />">
				<span class="comments_number"><mango:PostProperty commentCount /></span><span class="archdate">
					<mango:PostProperty date dateformat="mm.dd.yy" /></span><mango:PostProperty title /></a></li>
	      </ul>
	    </div><!--end entries-->
		</mango:Post>
		</mango:Posts>
		
		<div class="navigation">
			<div class="alignleft"><mango:ArchiveProperty ifHasNextPage><a href="<mango:ArchiveProperty link pageDifference="1" />">&larr; Older Entries</a></mango:ArchiveProperty></div>
			<div class="alignright"><mango:ArchiveProperty ifHasPreviousPage><a href="<mango:ArchiveProperty link pageDifference="-1" />">Newer Entries &rarr;</a></mango:ArchiveProperty></div>
		</div>
		</mango:ArchiveProperty>
		</mango:Archive>
		
		<!--- repeat the same for recent archives, we'll show them like in the home page --->
		<mango:Archive pageSize="10">
		<mango:ArchiveProperty ifIsType="recent">
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
				<mango:Event name="beforePostContentEnd" template="archives" mode="excerpt" />
			</div><!--end post footer-->
		</div>
		<!--end post-->
		</mango:Post>
		</mango:Posts>
		
		<div class="navigation">
			<div class="alignleft"><mango:ArchiveProperty ifHasNextPage><a href="<mango:ArchiveProperty link pageDifference="1" />">&larr; Older Entries</a></mango:ArchiveProperty></div>
			<div class="alignright"><mango:ArchiveProperty ifHasPreviousPage><a href="<mango:ArchiveProperty link pageDifference="-1" />">Newer Entries &rarr;</a></mango:ArchiveProperty></div>
		</div>
		</mango:ArchiveProperty>
		</mango:Archive>		
	
	</div>
		<div id="sidebar">
			<mangox:PodGroup locationId="sidebar" template="archives">
				<template:sidebar_archives />
			</mangox:PodGroup>
		</div><!--end sidebar-->	
		<div id="footer">
			<mango:Event name="afterFooterStart" />
			<p class="right">Copyright <mango:Blog date dateformat="yyyy" /> <mango:Blog title /></p>
		<p><a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a> &mdash; <a href="http://themes.jestro.com/vigilance/">Vigilance Theme</a> by <a href="http://jestro.com/">Jestro</a> ported by <a href="http://www.lowndes.net">Benedict Lowndes</a></p>
			<mango:Event name="beforeFooterEnd" />
		</div><!--end footer-->

	</div>

<mango:Event name="beforeHtmlBodyEnd" />
</body></html>