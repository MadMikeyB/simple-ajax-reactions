<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="width=device-width, initial-scale=1" name="viewport">
	<title>Like / Dislike</title><!-- Bootstrap CSS -->
	<link crossorigin="anonymous" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" rel="stylesheet">
	<link href="//bootswatch.com/paper/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="//oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button> 
				<a class="navbar-brand" href="#">Like / Dislike</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="#">Home <span class="sr-only">(current)</span></a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="blog-header">
			<h1 class="blog-title">My Awesome Blog</h1>
			<p class="lead blog-description">You Should Like all of my Posts</p>
		</div>
		<div class="row">
			<div class="col-sm-8 blog-main">
				<?php foreach ( $posts as $post): ?>
				<div class="blog-post">
					<h2 class="blog-post-title"><?php echo $post['title'] ?></h2>
					<p class="blog-post-meta"><?php echo $post['datetime'] ?> by <a href="#"><?php echo $post['user_id'] ?></a></p>
					<?php echo $post['content'] ?>
				</div><!-- /.blog-post -->
				<?php endforeach; ?>
				<nav>
					<ul class="pager">
						<li>
							<a href="#">Previous</a>
						</li>
						<li>
							<a href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div><!-- /.blog-main -->
			<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
				<div class="sidebar-module sidebar-module-inset">
					<h4>About</h4>
					<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis
					consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed
					consectetur.</p>
				</div>
				<div class="sidebar-module">
					<h4>Archives</h4>
					<ol class="list-unstyled">
						<li>
							<a href="#">March 2014</a>
						</li>
						<li>
							<a href="#">February 2014</a>
						</li>
						<li>
							<a href="#">January 2014</a>
						</li>
						<li>
							<a href="#">December 2013</a>
						</li>
						<li>
							<a href="#">November 2013</a>
						</li>
						<li>
							<a href="#">October 2013</a>
						</li>
						<li>
							<a href="#">September 2013</a>
						</li>
						<li>
							<a href="#">August 2013</a>
						</li>
						<li>
							<a href="#">July 2013</a>
						</li>
						<li>
							<a href="#">June 2013</a>
						</li>
						<li>
							<a href="#">May 2013</a>
						</li>
						<li>
							<a href="#">April 2013</a>
						</li>
					</ol>
				</div>
				<div class="sidebar-module">
					<h4>Elsewhere</h4>
					<ol class="list-unstyled">
						<li>
							<a href="#">GitHub</a>
						</li>
						<li>
							<a href="#">Twitter</a>
						</li>
						<li>
							<a href="#">Facebook</a>
						</li>
					</ol>
				</div>
			</div><!-- /.blog-sidebar -->
		</div><!-- /.row -->
	</div><!-- jQuery -->
	<script src="//code.jquery.com/jquery.js">
	</script> <!-- Bootstrap JavaScript -->
	 
	<script crossorigin="anonymous" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
	</script>
</body>
</html>