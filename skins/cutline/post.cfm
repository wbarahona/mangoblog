<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Post>
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	<title><mango:PostProperty title /> &#8212; <mango:Blog title /></title>
	
	<meta name="generator" content="Mango <mango:Blog version />" />
	<mango:PostProperty ifHasCustomField='meta-description'>
		<meta name="description" content="<mango:PostProperty customfield='meta-description' />" />
	</mango:PostProperty>
	<mango:PostProperty ifNotHasCustomField='meta-description'>
		<meta name="description" content="<mango:Blog description />" />
	</mango:PostProperty>
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
<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=132156060303106";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
</div>
<div id="container">
	<div id="masthead" class="jumbotron">
		<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<h3><mango:Blog tagline /></h3>
	</div>

	<ul id="nav" class="navbar navbar-default nav">
		<li><a href="<mango:Blog basePath />">front page</a></li>
		<mango:Pages><mango:Page>
			<li><a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
				<mango:PageProperty title /></a></li>
			</mango:Page></mango:Pages>
		<li class="rss"><a href="<mango:Blog rssurl />">RSS</a></li>
		<li>
			<form name="searchForm" id="search_form" method="get" action="<mango:Blog searchUrl />" class="navbar-form navbar-left">
				<input type="text" class="search_input form-control" name="term" value="Search It" id="term" onfocus="if (this.value == 'Search It') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Search It';}" />
				<input type="hidden" id="searchsubmit" value="Search" />
			</form>
		</li>
		<li class="nav navbar-right">
			<ul class="nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<mangox:PodGroup locationId="sidebar" template="post">
							<template:sidebar />
						</mangox:PodGroup>	
					</ul>
				</li>
			</ul>
		</li>
	</ul>
	<br />
	<div id="header_img">
		<img src="<mango:Blog skinurl />assets/images/header_2.jpg" width="770" height="140" alt="<mango:Blog title />" title="<mango:Blog title />" />
	</div>
	<div id="content_box">
		<div id="content" class="posts">
		
		<h2><mango:PostProperty title /></h2>
			<h4><mango:PostProperty date dateformat="mmmm d, yyyy" /> &middot; <mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#comments" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty></h4>
			<div class="entry"><mango:PostProperty body /></div>
			
			<div class="entry-footer entry">
			<mango:Event name="beforePostContentEnd" template="post" mode="full" />
			</div>
			<p class="tagged"><strong>Tags:</strong> <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag" class="label label-success"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories></p>
			<div class="clear"></div>
		<div class="social-box panel panel-default">
			<h5 class="panel-heading">Did you find interesting this post? Share it now:</h5>
			<div class="share-box panel-body">
				<!-- Place this tag where you want the share button to render. -->
				<div class="g-plus" data-action="share" data-annotation="bubble"></div>

				<!-- Place this tag after the last share tag. -->
				<script type="text/javascript">
				  (function() {
				    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
				    po.src = 'https://apis.google.com/js/plusone.js';
				    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
				  })();
				</script>
				<a href="https://twitter.com/share" class="twitter-share-button" data-via="twitterapi" data-lang="en">Tweet</a>
				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
				<fb:like href="<mango:Blog url />/<mango:PostProperty link>" width="450" show_faces="true" send="true"></fb:like>
			</div>
		</div>

	<div id="comments">
		<h3 class="comments_headers"><mango:PostProperty commentCount /> response<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty><mango:PostProperty ifCommentCountLT="1">s</mango:PostProperty><mango:PostProperty ifcommentsallowed> so far &darr;</mango:PostProperty></h3>
	
		<ul id="comment_list">
			<mango:Comments>
			<mango:Comment>
			<li class="comment <mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
				<p class="comment_meta">
					<span class="comment_num"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a></span>
						<strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong>
						<span class="comment_time">// <mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></span>
				</p>
				<div class="entry">
					 <mango:CommentProperty content />
				</div>
			</li>
			</mango:Comment>
			</mango:Comments>
			
			<mango:PostProperty ifcommentsallowed ifCommentCountLT="1">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<p>There are no comments yet...Kick things off by filling out the form below.</p>
				</div>
			</li>
			</mango:PostProperty>
		</ul>
		
<mango:PostProperty ifcommentsallowed>
	<!-- Comment Form -->
	<mango:Message ifMessageExists type="comment" status="error">
		<div class="alert alert-dismissable alert-danger">
			<button type="button" class="close" data-dismiss="alert">×</button>
			<strong>Oh Snap!</strong><mango:Message text />
		</div>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<div class="alert alert-dismissable alert-success">
			<button type="button" class="close" data-dismiss="alert">×</button>
			<strong>Oh Snap!</strong><mango:Message text />
		</div>
	</mango:Message>
	
	<form method="post" action="#respond" id="comment_form" class="well">
		<fieldset>
			<legend>Leave Your Comment</legend>
			<input type="hidden" name="action" value="addComment" />
			<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
			<input type="hidden" name="comment_parent" value="" />
			<mango:AuthenticatedAuthor ifIsLoggedIn>
				<p>You are logged in as <span class="label label-info"><mango:AuthorProperty name /></span></p>
				<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
				<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
				<input type="hidden" name="comment_website" value="<mango:Blog url />" />
			</mango:AuthenticatedAuthor>
			
			<mango:AuthenticatedAuthor ifNotIsLoggedIn>
			<p><input id="author" class="text_input form-control" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" /><label for="author"><strong>Name</strong></label></p>
			<p><input class="text_input form-control" type="text" id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" /><label for="email"><strong>Mail</strong> (it will not be displayed)</label></p>
			<p><input class="text_input form-control" type="text" id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  /><label for="url"><strong>Website</strong></label></p>
			</mango:AuthenticatedAuthor>
			
			<p><textarea class="text_input text_area form-control" id="comment" name="comment_content" rows="7"><mango:RequestVar name="comment_content" /></textarea></p>
			<p><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></p>
			<p><mango:Event name="beforeCommentFormEnd" /></p>
			<p><input name="submit" class="form_submit btn btn-primary" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Submit" /></p>
		</fieldset>
		
	</form>
</mango:PostProperty>
		
</div> <!-- Close #comments container -->
<div class="clear flat"></div>
</mango:Post>
				
		</div>
		
<!--- <div id="sidebar">
	<ul class="sidebar_list">
		<mangox:PodGroup locationId="sidebar" template="post">
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
