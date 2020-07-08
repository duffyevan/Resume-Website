<!DOCTYPE html>
<html>
<head>
	<title>Evan Duffy</title>

	<script
  src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
  crossorigin="anonymous"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript-->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

	<!-- My customizations -->
	<link rel="stylesheet" type="text/css" href="/css/evan.css">
	<style>
	.nopadding{
		padding: 0;
		margin: 0;
	}
	</style>
</head>


<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
		<div class="navbar-header">
			<img alt="Brand" src="https://pokemoncreed.net/img/icon/Bidoof.gif">
			<a class="navbar-brand hvr-shutter-out-horizontal " href="#" id="nav-name">Evan Duffy</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav">
		   <li class="hvr-underline-reveal"><a href="/">Home<span class="sr-only"></span></a></li>
		   <li class="hvr-underline-reveal active"><a href="#">Projects<span class="sr-only">(current)</span></a></li>
		   <li class="hvr-underline-reveal"><a href="/resume.php">Resume<span class="sr-only"></span></a></li>
		   <li class="hvr-underline-reveal"><a href="/contact.php">Contact<span class="sr-only"></span></a></li>
	   </div><!-- /.navbar-collapse -->
   </div><!-- /.container-fluid -->
</nav>



<div class="container" style="padding: 0px;">
	<center>	
		<div class="hib" style="padding: 50px;">
			<img src="/resources/fish.gif" class="avatar" style="width: 150px;">
			<br>
			<h1 class="myname hvr-shutter-out-horizontal" style="border-radius: 8px;">Evan L. Duffy</h1>
		</div> 
	</center>
	<div class="text-box">
		<?php 
			echo shell_exec("cat /var/www/html/projects/projects.md | markdown");
		?>
	</div>
	
</div>
<div class="myfooter">
	<p>Evan Duffy <br> 
		<?php echo date('F Y') ?></p>
	</div>
</body>
</html>
