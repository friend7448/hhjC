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
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.bg-1 {
	background: #2d2d30;
	color: #bdbdbd;
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.navbar {
	margin-bottom: 0;
	background-color: #2d2d30;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

/* Dropdown */
.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

/* Dropdown links */
.dropdown-menu li a {
	color: #000 !important;
}

/* On hover, the dropdown links will turn red */
.dropdown-menu li a:hover {
	background-color: red !important;
}

footer {
	background-color: #2d2d30;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
	>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#myPage">HOME</a></li>
					<li><a href="#band">BAND</a></li>
					<li><a href="#tour">TOUR</a></li>
					<li><a href="#contact">CONTACT</a></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Merchandise</a></li>
							<li><a href="#">Extras</a></li>
							<li><a href="#">Media</a></li>
						</ul></li>
					<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="https://www.w3schools.com/bootstrap/la.jpg" alt="Chania">
					<div class="carousel-caption">
						<h3>Los Angeles</h3>
						<p>LA is always so much fun!</p>
					</div>
				</div>
				<div class="item">
					<img src="https://www.w3schools.com/bootstrap/chicago.jpg" alt="Chicago">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>
				<div class="item">
					<img src="https://www.w3schools.com/bootstrap/ny.jpg" alt="New York">
					<div class="carousel-caption">
						<h3>New York</h3>
						<p>We love the Big Apple!</p>
					</div>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div id="band" class="container text-center">
		<h3>THE BAND</h3>
		<p>We love music!</p>
		<p>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia repellendus facilis hic cumque quidem temporibus nulla debitis quia eligendi atque amet unde ex cum non libero animi vel consequatur deserunt dignissimos similique consequuntur in incidunt consectetur molestiae quaerat nesciunt eaque adipisci voluptatem accusamus ipsum? Qui porro aliquid aspernatur accusamus cupiditate impedit architecto reiciendis iure fugiat voluptas voluptatum neque ab doloribus vel recusandae assumenda sequi alias quam veniam repudiandae tenetur voluptate cum? Culpa libero optio placeat sit deserunt ipsa aspernatur quod laudantium officia nesciunt facilis temporibus commodi voluptate eius non voluptatibus molestiae illo distinctio reprehenderit quisquam! Quibusdam aut modi sapiente dicta.</p>
		<div class="row">
			<div class="col-sm-4">
				<p>
					<strong>Name</strong>
				</p>
				<a href="#demo" data-toggle="collapse"> <img src="https://www.w3schools.com/bootstrap/bandmember.jpg" alt="member" class="img-circle person" />
				</a>
				<div id="demo" class="collapse">
					<p>Guitarist and Lead Vocalist</p>
					<p>Loves long walks on the beach</p>
					<p>Member since 1988</p>
				</div>
			</div>
			<div class="col-sm-4">
				<p>
					<strong>Name</strong>
				</p>
				<a href="#demo2" data-toggle="collapse"> <img src="https://www.w3schools.com/bootstrap/bandmember.jpg" alt="member" class="img-circle person" />
				</a>
				<div id="demo2" class="collapse">
					<p>Drummer</p>
					<p>Loves drummin'</p>
					<p>Member since 1988</p>
				</div>
			</div>
			<div class="col-sm-4">
				<p>
					<strong>Name</strong>
				</p>
				<a href="#demo3" data-toggle="collapse"> <img src="https://www.w3schools.com/bootstrap/bandmember.jpg" alt="member" class="img-circle person" />
				</a>
				<div id="demo3" class="collapse">
					<p>Bass player</p>
					<p>Loves math</p>
					<p>Member since 2005</p>
				</div>
			</div>
		</div>
	</div>
	<div class="bg-1">
		<div id="tour" class="container">
			<h3 class="text-center">TOUR DATES</h3>
			<p class="text-center">
				Lorem ipsum dolor sit amet, <br>consectetur adipisicing elit. Minima magni!
			</p>
			<ul class="list-group">
				<li class="list-group-item">A <span class="label label-danger">Sold out!</span></li>
				<li class="list-group-item">B <span class="label label-danger">Sold out!</span></li>
				<li class="list-group-item">C <span class="badge">3</span>
				</li>
			</ul>
			<div class="row text-center">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="https://www.w3schools.com/bootstrap/paris.jpg" alt="" />
						<p>
							<strong>Paris</strong>
						</p>
						<p>Fri. 27 November 2015</p>
						<button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="https://www.w3schools.com/bootstrap/newyork.jpg" alt="New York">
						<p>
							<strong>New York</strong>
						</p>
						<p>Sat. 28 November 2015</p>
						<button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="https://www.w3schools.com/bootstrap/sanfran.jpg" alt="San Francisco">
						<p>
							<strong>San Francisco</strong>
						</p>
						<p>Sun. 29 November 2015</p>
						<button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Tickets
					</h4>
				</div>
				<div class="modal-body">
					<form action="" role="form">
						<div class="form-group">
							<label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label> <input type="number" class="form-control" id="psw" placeholder="How many?" />
						</div>
						<div class="form-group">
							<label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label> <input type="text" class="form-control" id="usrname" placeholder="Enter email" />
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-danger pull-left" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span>Cancel
					</button>
					<p>
						Need <a href="#">help?</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div id="contact" class="container">
		<h3 class="text-center">Contact</h3>
		<p class="text-center">
			<em>We love our fans!</em>
		</p>
		<div class="row">
			<div class="col-md-4">
				<p>Fan? Drop a note.</p>
				<p>
					<span class="glyphicon glyphicon-map-marker"></span>Chicago, US
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com
				</p>
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
				<br>
				<div class="row">
					<div class="col-md-12 form-group">
						<button class="btn pull-right" type="submit">Send</button>
					</div>
				</div>
			</div>
		</div>
		<h3 class="text-center">From The Blog</h3>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#Mike">Mike</a></li>
			<li><a data-toggle="tab" href="#Chandler">Chandler</a></li>
			<li><a data-toggle="tab" href="#Peter">Peter</a></li>
		</ul>
		<div class="tab-content">
			<div id="Mike" class="tab-pane fade in active">
				<h3>Mike Ross, Manager</h3>
				<p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
			</div>
			<div id="Chandler" class="tab-pane fade">
				<h3>Chandler Bing, Guitarist</h3>
				<p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
			</div>
			<div id="Peter" class="tab-pane fade">
				<h3>Peter Griffin, Bass player</h3>
				<p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
			</div>
		</div>
	</div>
	<footer class="text-center">
		<a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a><br> <br>
		<p>
			Bootstrap Theme Made By <a href="https://www.w3schools.com" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a>
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