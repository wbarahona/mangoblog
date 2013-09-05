<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<mango:Page>
	<title><mango:PageProperty title /> &#8212; <mango:Blog title /></title>
		
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
	<mango:PageProperty ifHasCustomField='meta-description'>
		<meta name="description" content="<mango:PageProperty customfield='meta-description' />" />
	</mango:PageProperty>
	<mango:PageProperty ifNotHasCustomField='meta-description'>
		<meta name="description" content="<mango:Blog description />" />
	</mango:PageProperty>
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
				<mango:Pages parentPage=""><mango:Page>
					<li class="page_item <mango:PageProperty ifiscurrentpage>current_page_item</mango:PageProperty>"><a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a></li>
				</mango:Page></mango:Pages>
				<!--- 
				<li class="rss"><a href="<mango:Blog rssurl />">RSS</a></li>
				--->
			</ul>
		</div><!--end nav-->
	</div><!--end header-->
	<div id="content" class="pad ">
		<div id="page-<mango:PageProperty id />" class="post">
			<div class="post-header">
				<h2><mango:PageProperty title /></h2>		
			</div><!--end post header-->
			<div class="entry clear"><br />
				<mango:PageProperty body />
				
			<h3>By month:</h3>
			<ul><mango:Archives type="month"><mango:Archive>
			<li><a href="<mango:ArchiveProperty link />"><mango:ArchiveProperty title dateformat="mmmm yyyy" /> (<mango:ArchiveProperty postcount />)</a></li>
			</mango:Archive></mango:Archives>
			</ul>
			<h3>By Category:</h3>
			
			<ul>
			<mango:Categories>
				<mango:Category>
				<li><a href="<mango:CategoryProperty rssurl />"><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />">
					<mango:CategoryProperty title /> (<mango:CategoryProperty postcount />)</a> </li>
				</mango:Category>
			</mango:Categories>
			</ul>
				
			</div><!--end entry-->
			<div class="post-footer">
				<mango:Event name="beforePageContentEnd" template="page" mode="full" />
			</div><!--end post footer-->				
		</div>
		
<div id="comments">
		<mango:PageProperty ifcommentsallowed>
			<div class="comment-number">
				<span><mango:PageProperty ifCommentCountGT="0"><mango:PageProperty commentCount /> Response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty></mango:PageProperty><mango:PageProperty ifCommentCountLT="1">No Responses</mango:PageProperty></span>	
		      <a id="leavecomment" href="#respond" title="Leave One">leave one &rarr;</a>
		    </div><!--end comment-number-->
		</mango:PageProperty>
		<mango:PageProperty ifNotCommentsAllowed ifCommentCountGT="0">
			<div class="comment-number">
				<span><mango:PageProperty commentCount /> Response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty></span> (comments are now closed)	
		    </div><!--end comment-number-->
		</mango:PageProperty>
		  <mango:Comments>		
			<ol class="commentlist">
				<mango:Comment>
					<li id="comment-<mango:CommentProperty id />" class="comment even thread-even depth-1">	
						<div class="c-body">
							<div class="c-head">
								<mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty>
								<span class="c-permalink"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment">PERMALINK</a></span>
							</div>
							<div class="c-date"><mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></div>
							<p><mango:CommentProperty content /></p>
						</div>
					</li>
		  		</mango:Comment>
	  		</ol>
		</mango:Comments>
		
				
		</div>
		<mango:PageProperty ifcommentsallowed>
		<div id="respond">
		    <h4 id="postcomment">Leave a Reply</h4>
			<mango:Message ifMessageExists type="comment" status="error">
				<p class="error">There was a problem: <mango:Message text /></p>
			</mango:Message>
			<mango:Message ifMessageExists type="comment" status="success">
				<p class="message"><mango:Message text /></p>
			</mango:Message>

				<form method="post" action="#respond" id="commentform">
					<div style="display:none;">
					<input type="hidden" name="action" value="addComment" />
					<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
					<input type="hidden" name="comment_parent" value="" />
					<mango:AuthenticatedAuthor ifIsLoggedIn>
						<p>You are logged in as <mango:AuthorProperty name /></p>
						<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
						<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
						<input type="hidden" name="comment_website" value="<mango:Blog url />" />
					</mango:AuthenticatedAuthor>
					</div>
					<mango:AuthenticatedAuthor ifNotIsLoggedIn>
			            <p><label for="comment_name" class="comment-field"><small>Name (required):</small></label><input class="text-input" type="text" name="comment_name" id="author" value="<mango:RequestVar name='comment_name' />" size="22" tabindex="1" /></p>
			        	<p><label for="comment_email" class="comment-field"><small>Email  (it will not be displayed):</small></label><input class="text-input" type="text" name="comment_email" id="email" value="<mango:RequestVar name='comment_email' />" size="22" tabindex="2" /></p>
			        	<p><label for="comment_website" class="comment-field"><small>Website:</small></label><input class="text-input" type="text" name="comment_website" id="url" value="<mango:RequestVar name='comment_website' />" size="22" tabindex="3" /></p>
					</mango:AuthenticatedAuthor>

						<p>
							<label class="comment-field" for="comment">
								<small>Comment:</small>
							</label>
							<textarea class="text_input text_area" id="comment" name="comment_content" rows="7" cols="50"><mango:RequestVar name="comment_content" /></textarea>
						</p>
						<p class="subscribe-to-comments">
							<!-- TODO : Add comment RSS link
				     		<p class="comments-rss">Subscribe to this comment feed via RSS</p>
							-->
							<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Notify me of followup comments via e-mail</label>
							<mango:Event name="beforeCommentFormEnd" />
		      				<input name="submit" type="submit" id="submit" tabindex="5" value="Submit Comment" />
						</p>
		    </form><!--end commentform-->
		 </div><!--end respond-->
		</mango:PageProperty>		
	</div>
	<div id="sidebar">
		<mangox:PodGroup locationId="sidebar" template="page">
			<template:sidebar_page />
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
</mango:Page>
</body></html>