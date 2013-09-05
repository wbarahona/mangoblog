<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head>
	<title>Login &#8212; <mango:Blog title /></title>
		
	<!-- Basic Meta Data -->
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
		
	<!-- Favicon -->
	<link rel="shortcut icon" href="<mango:Blog skinurl />assets/images/favicon.png" />

	<!--Stylesheets-->
	<link href="<mango:Blog skinurl />assets/styles/style.css" type="text/css" media="screen" rel="stylesheet" />
	<!--[if lt IE 8]><link rel="stylesheet" type="text/css" media="screen" href="<mango:Blog skinurl />assets/styles/ie.css" /><![endif]-->
	<!--[if lte IE 6]><link rel="stylesheet" type="text/css" media="screen" href="<mango:Blog skinurl />assets/styles/ie6.css" /><![endif]-->

	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	<meta name="robots" content="noindex, nofollow" />
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
    	<div id="nav"><ul></ul></div><!--end nav-->
	</div><!--end header-->
	<div id="content" class="pad ">
		<div class="post hentry category-release">
			<div class="post-header">
				<h2>Login</h2>		
			</div><!--end post header-->
			<div class="entry clear"><br />
				<mango:RequestVar ifExists="errormsg">
				<p class="error"><mango:RequestVar name="errormsg" /></p>
			</mango:RequestVar>
		<cfoutput><form action="<mangox:Environment selfUrl />" method="post" id="login_form"></cfoutput>
	
				<label for="username">Username:</label>
				<p>
				<input name="username" id="username" value="" size="22" type="text" class="text_input">
				</p>
				<p>
				<label for="password">Password:</label><br />
				<input name="password" id="password" value="" size="22" type="password" class="text_input">
				</p>
				<input name="login" class="form_submit" type="submit" id="submit" value="Login" />
			</form>
			</div>		
		</div>
	</div>
		<div id="footer">
			<p class="right">Copyright 2009 <mango:Blog title /></p>
			<p><a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a> &mdash; <a href="http://themes.jestro.com/vigilance/">Vigilance Theme</a> by <a href="http://jestro.com/">Jestro</a> ported by <a href="http://www.lowndes.net">Benedict Lowndes</a></p>
		</div><!--end footer-->

	</div>

<mango:Event name="beforeHtmlBodyEnd" />
</body></html>