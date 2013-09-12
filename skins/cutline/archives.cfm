<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	
	<title>Archives &#8212; <mango:Blog title /></title>
	
	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	
	<!--- <link rel="stylesheet" href="<mango:Blog skinurl />assets/styles/style.css" type="text/css" media="screen" /> --->
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/styles/custom.css" type="text/css" media="screen" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

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
		<li><a href="<mango:Blog basePath />">inicio</a></li>
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
		<li class="nav navbar-right">
			<ul class="nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<mangox:PodGroup locationId="sidebar-archives" template="archives">
							<template:sidebar />
						</mangox:PodGroup>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
	<br />
	<div id="header_img">
		<img src="<mango:Blog skinurl />assets/images/header_1.jpg" width="770" height="140" alt="<mango:Blog title />" title="<mango:Blog title />" />
	</div>	
	<div id="content_box">
		<div id="content" class="posts">
		<mango:Archive pageSize="10">
			<mango:ArchiveProperty ifIsType="category"><h2 class="archive_head">Articulos nombrados como: <span class="green"><mango:ArchiveProperty title /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="month"><h2 class="archive_head">Articulos por mes: <span class="green"><mango:ArchiveProperty title dateformat="mmmm yyyy"  /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="day"><h2 class="archive_head">Articulos por dis: <span class="green"><mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="year"><h2 class="archive_head">Articulos por a&ntilde;os: <span class="green"><mango:ArchiveProperty title dateformat="yyyy" /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="search"><h2 class="archive_head">Buscar resultados por <span class="green"><mango:ArchiveProperty title format="escapedHtml" /></span></h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="author"><h2 class="archive_head">Articulos por '<mango:ArchiveProperty title />'</h2></mango:ArchiveProperty>
		<mango:ArchiveProperty ifIsType="unknown"><h2 class="archive_head">Ningun resultado</h2></mango:ArchiveProperty>
						
		<mango:Posts count="10">
			<mango:Post>	
			<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
			<h4><mango:PostProperty date dateformat="mmmm dd, yyyy" /> &middot; <mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Commentario<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">Sin Comentario</mango:PostProperty></a></mango:PostProperty></h4>
			<div class="entry">
				<mango:PostProperty ifhasExcerpt excerpt>
				<p><a href="<mango:PostProperty link />" title="Read the rest of this entry">[Leer mas &rarr;]</a></p>
				</mango:PostProperty>
				<mango:PostProperty ifNotHasExcerpt body />
			</div>	
			<p class="tagged"><span class="add_comment"><mango:PostProperty ifcommentsallowed>&rarr; <a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Commentario<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">Sin Comentarios</mango:PostProperty></a></mango:PostProperty></span><strong>Tags:</strong> 
			<mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
			</p>
			<div class="clear"></div>
			</mango:Post>
		</mango:Posts>
		
<div class="navigation">
	<div class="previous"><mango:ArchiveProperty ifHasNextPage><a href="<mango:ArchiveProperty link pageDifference="1" />">&larr; Articulos Anteriores</a></mango:ArchiveProperty></div>
	<div class="next"><mango:ArchiveProperty ifHasPreviousPage><a href="<mango:ArchiveProperty link pageDifference="-1" />">Siguente &rarr;</a></mango:ArchiveProperty></div>
</div>
</mango:Archive>
<div class="clear flat"></div>
</div>
<!--- <div id="sidebar">
	<ul class="sidebar_list">
		<mangox:PodGroup locationId="sidebar-archives" template="archives">
			<template:sidebar />
		</mangox:PodGroup>	
	</ul>
</div> --->		
</div>
<div id="footer" class="well well-lg"><mango:Event name="afterFooterStart" />
		<p>2013 &dash; &reg; <mango:Blog title /> &mdash; Willmer Barahona Web Develpment &mdash; Proudly Honduran! <a target="_blank" href="http://www.visitehonduras.com">Visit Honduras</a></p>
	<mango:Event name="beforeFooterEnd" />
	</div>
</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>