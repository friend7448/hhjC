<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--   -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}

p {
	font-size: 16px;
}

.margin {
	margin-bottom: 45px;
}

.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}

.navbar-nav  li a:hover {
	color: #1abc9c !important;
}

.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}

.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.bg-2 {
	background-color: #474e5d; /* Dark Blue */
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}

.bg-4 {
	background-color: #2f2f2f;
	color: #ffffff;
}
</style>
</head>
<body>
	<!--  -->
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">Me</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">WHO</a></li>
					<li><a href="#">WHAT</a></li>
					<li><a href="#">WHERE</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid bg-1 text-center">
		<h3>Who Am I?</h3>
		<img src="https://www.w3schools.com/bootstrap/bird.jpg" class="img-circle" alt="bird" />
		<h3>I'm an adventurer</h3>
	</div>
	<div class="container-fluid bg-2 text-center">
		<h3>What Am I?</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id doloremque assumenda ab nesciunt quisquam odit sunt omnis possimus autem officia.</p>
		<button type="button" class="btn btn-default btn-lg">
			<span class="glyphicon glyphicon-search"></span> Search
		</button>
	</div>
	<div class="container-fluid bg-3 text-center">
		<h3>Where To Find Me?</h3>
		<div class="row">
			<div class="col-sm-4">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos facere.</p>
				<img src="https://www.w3schools.com/bootstrap/birds1.jpg" class="img-responsive margin" width="100%" alt="bird" />
			</div>
			<div class="col-sm-4">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos facere.</p>
				<img src="https://www.w3schools.com/bootstrap/birds2.jpg" class="img-responsvie margin" width="100%" alt="bird" />
			</div>
			<div class="col-sm-4">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos facere.</p>
				<img src="https://www.w3schools.com/bootstrap/birds3.jpg" class="img-responsive margin" width="100%" alt="bird" />
			</div>
		</div>
	</div>
	<footer class="container-fluid bg-4 text-center">
		<p>
			Bootstrap Theme Made By <a href="https://www.w3schools.com">https://www.w3schools.com</a>
		</p>
	</footer>
</body>
</html>