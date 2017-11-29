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
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.jumbotron {
	background-color: #f4511e; /* Orange */
	color: #ffffff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

.container-fluid {
	padding: 60px 50px;
}

.bg-gray {
	background-color: #f6f6f6;
}

.logo {
	font-size: 200px;
	color: #f4511e;
}

.logo-small {
	font-size: 50px;
	color: #f4511e;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #f4511e;
}

.carousel-indicators li {
	border-color: #f4511e;
}

.carousel-indicators li.active {
	background-color: #f4511e;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

.panel-footer .btn:hover {
	border: 1px solid #f4511e;
	background-color: #fff !important;
	color: #f4511e;
}

.panel-heading {
	color: #fff !important;
	background-color: #f4511e !important;
	padding: 25px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
}

.panel-footer {
	background-color: #fff !important;
}

.panel-footer h3 {
	font-size: 32px;
}

.panel-footer h4 {
	color: #aaa;
	font-size: 14px;
}

.panel-footer .btn {
	margin: 15px 0;
	background-color: #f4511e;
	color: #fff;
}

.navbar {
	margin-bottom: 0;
	background-color: #f4511e;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #f4511e !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #f4511e;
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="#myPage" class="navbar-brand">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">ABOUT</a></li>
					<li><a href="#services">SERVICES</a></li>
					<li><a href="#portfolio">PORTFOLIO</a></li>
					<li><a href="#pricing">PRICING</a></li>
					<li><a href="#contact">CONTACT</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron text-center">
		<h1>Company</h1>
		<p>We specialize in blablabla</p>
		<form action="" class="form-inline">
			<div class="input-group">
				<input type="email" class="form-control" size="50" placeholder="Email Address" required />
				<div class="input-group-btn">
					<button class="btn btn-danger">Subscribe</button>
				</div>
			</div>
		</form>
	</div>
	<div id="about" class="container-fluid">
		<div class="row">
			<div class="col-sm-8">
				<h2>About Company Page</h2>
				<h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores soluta.</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam neque.</p>
				<button class="btn btn-default btn-lg">Get in Touch</button>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-signal logo"></span>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-gray">
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-globe logo"></span>
			</div>
			<div class="col-sm-8">
				<h2>Our Values</h2>
				<h4>
					<strong>MISSION:</strong>Our mission Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia laudantium?
				</h4>
				<p>
					<strong>VISION:</strong>Our vision Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia laudantium?
				</p>
			</div>
		</div>
	</div>
	<div id="services" class="container-fluid text-center">
		<h2>SERVICE</h2>
		<h4>What we offer</h4>
		<br />
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-off logo-small"></span>
				<h4>POWER</h4>
				<p>Lorem ipsum dolor sit amet.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-heart logo-small"></span>
				<h4>LOVE</h4>
				<p>Lorem ipsum dolor sit amet.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-lock logo-small"></span>
				<h4>JOB DONE</h4>
				<p>Lorem ipsum dolor sit amet.</p>
			</div>
		</div>
		<br /> <br />
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-leaf logo-small"></span>
				<h4>GREEN</h4>
				<p>Lorem ipsum dolor sit amet.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-certificate logo-small"></span>
				<h4>CERTIFIED</h4>
				<p>Lorem ipsum dolor sit amet.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-wrench logo-small"></span>
				<h4>HARD WORK</h4>
				<p>Lorem ipsum dolor sit amet.</p>
			</div>
		</div>
	</div>
	<div id="portfolio" class="container-fluid text-center bg-gray">
		<h2>PORTFOLIO</h2>
		<h4>What we have created</h4>
		<div class="row">
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="https://www.w3schools.com/bootstrap/paris.jpg" alt="paris" width="400px" height="300px" />
					<p>
						<strong>Paris</strong>
					</p>
					<p>Yes, we built Paris</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="https://www.w3schools.com/bootstrap/newyork.jpg" alt="newyork" width="400px" height="300px" />
					<p>
						<strong>New York</strong>
					</p>
					<p>We Built New York</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="https://www.w3schools.com/bootstrap/sanfran.jpg" alt="sanfran" width="400px" height="300px" />
					<p>
						<strong>San Francisco</strong>
					</p>
					<p>Yes, San Fran is ours</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid text-center">
		<h2>What our customers say</h2>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<h4>
						"This company is the best. I am so happy with the result!"<br> <span>Michael Roe, Vice President, Comment Box</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						"One word... WOW!!"<br> <span>John Doe, Salesman, Rep Inc</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						"Could I... BE any more happy with this company?"<br> <span>Chandler Bing, Actor, FriendsAlot</span>
					</h4>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div id="pricing" class="container-fluid bg-gray text-center">
		<h2>PRICING</h2>
		<h4>Choose a payment plan that works for you</h4>
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Basic</h1>
					</div>
					<div class="panel-body">
						<p>
							<strong>20</strong> Lorem
						</p>
						<p>
							<strong>15</strong> Ipsum
						</p>
						<p>
							<strong>5</strong> Dolor
						</p>
						<p>
							<strong>2</strong> Sit
						</p>
						<p>
							<strong>Endless</strong> Amet
						</p>
					</div>
					<div class="panel-footer">
						<h3>$19</h3>
						<p>per month</p>
						<button class="btn btn-lg">Sign Up</button>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Pro</h1>
					</div>
					<div class="panel-body">
						<p>
							<strong>20</strong> Lorem
						</p>
						<p>
							<strong>15</strong> Ipsum
						</p>
						<p>
							<strong>5</strong> Dolor
						</p>
						<p>
							<strong>2</strong> Sit
						</p>
						<p>
							<strong>Endless</strong> Amet
						</p>
					</div>
					<div class="panel-footer">
						<h3>$29</h3>
						<p>per month</p>
						<button class="btn btn-lg">Sign Up</button>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Premium</h1>
					</div>
					<div class="panel-body">
						<p>
							<strong>20</strong> Lorem
						</p>
						<p>
							<strong>15</strong> Ipsum
						</p>
						<p>
							<strong>5</strong> Dolor
						</p>
						<p>
							<strong>2</strong> Sit
						</p>
						<p>
							<strong>Endless</strong> Amet
						</p>
					</div>
					<div class="panel-footer">
						<h3>$49</h3>
						<p>per month</p>
						<button class="btn btn-lg">Sign Up</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="contact" class="container-fluid">
		<h2 class="text-center">CONTACT</h2>
		<div class="row">
			<div class="col-sm-5">
				<p>Contact us and we'll get back to you within 24 hours.</p>
				<p>
					<span class="glyphicon glyphicon-map-marker"></span> Chicago, US
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span> +00 1515151515
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span> myemail@something.com
				</p>
			</div>
			<div class="col-sm-7">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="required" />
					</div>
					<div class="col-sm-6 form-group">
						<input type="email" class="form-control" id="email" name="email" placeholder="Email" required="required" />
					</div>
				</div>
				<textarea name="comments" id="comments" rows="5" class="form-control" placeholder="Comment"></textarea>
				<br />
				<div class="row">
					<div class="col-sm-12 form-group">
						<button class="btn btn-default pull-right" type="submit">Send</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid bg-gray text-center">
		<a href="#myPage" title="To Top"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<p>
			Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a>
		</p>
	</footer>
	<script>
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {
								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {
									// Prevent default anchor click behavior
									event.preventDefault();
									// Store hash
									var hash = this.hash;
									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {
										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});
				})
	</script>
</body>
</html>