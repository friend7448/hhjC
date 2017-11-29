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
</head>
<body>
	<div class="container">
		<p>Note: Carousels are not supported properly in Internet Explorer 9 and earlier (because they use CSS3 transitions and animations to achieve the slide effect).</p>
		<h2>Carousel Example</h2>
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
					<img src="https://www.w3schools.com/bootstrap/la.jpg" alt="Los Angeles" style="width: 100%;">
				</div>
				<div class="item">
					<img src="https://www.w3schools.com/bootstrap/chicago.jpg" alt="Chicago" style="width: 100%;">
				</div>
				<div class="item">
					<img src="https://www.w3schools.com/bootstrap/ny.jpg" alt="New york" style="width: 100%;">
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="container">
		<h2>Carousel Example 캡션 추가.</h2>
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
					<img src="https://www.w3schools.com/bootstrap/la.jpg" alt="Los Angeles" style="width: 100%;">
					<div class="carousel-caption">
						<h3>Los Angeles</h3>
						<p>LA is always so much fun!</p>
					</div>
				</div>
				<div class="item">
					<img src="https://www.w3schools.com/bootstrap/chicago.jpg" alt="Chicago" style="width: 100%;">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>
				<div class="item">
					<img src="https://www.w3schools.com/bootstrap/ny.jpg" alt="New York" style="width: 100%;">
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
</body>
</html>