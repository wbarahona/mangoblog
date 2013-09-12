<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<title><mango:Message title /> &#8212; Error</title>
	
	<!--- <link rel="stylesheet" href="skins/cutline/assets/styles/style.css" type="text/css" media="screen" /> --->
	<link rel="stylesheet" href="skins/cutline/assets/styles/custom.css" type="text/css" media="screen" />
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
	<link rel="stylesheet" type="text/css" href="skins/cutline/assets/styles/ie7.css" media="screen" />
	<![endif]-->
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="skins/cutline/assets/styles/ie6.css" media="screen" />
	<![endif]-->
	
	<meta name="robots" content="noindex, nofollow" />
</head>
<body class="custom">
<div id="container">

	<div id="masthead">
		<h1>Error</h1>
	</div>

	<ul id="nav" class="navbar navbar-default nav">
	
	</ul>
	<br />
	<div id="header_img">
		<img src="skins/cutline/assets/images/header_4.jpg" width="770" height="140" />
	</div>
	<div id="content_box">
	
		<div id="content" class="pages">
<!--- 			<h2><mango:Message title /></h2>
			<div class="entry">
				<mango:Message text />
				<mango:Message data />
			</div>
			 --->

			<div class="panel panel-warning">
				<div class="panel-heading">
					<h3 class="panel-title"><mango:Message title /></h3>
				</div>
				<div class="panel-body">
					<p class="text-warning"><mango:Message text /><mango:Message data /></p><br />
					<p class="text-warning">Porfavor hazme saber que paso. Enviame un <a href="mailto:errors-wbarahona@gmail.com" class="label label-warning">correo</a></p>
				</div>
			</div>
			<div class="clear"></div>
			<div class="clear flat"></div>
		</div>

	</div>
	<div id="footer" class="well well-lg">
		<p>2013 &dash; &reg; <mango:Blog title /> &mdash; Willmer Barahona Web Develpment &mdash; Proudly Honduran! <a target="_blank" href="http://www.visitehonduras.com">Visit Honduras</a></p>
	</div>
</div>
</body>
</html>