<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
		<h2 style="background-color: lavender;">Rounded Corners - img-rounded class</h2>
		<p>The .img-rounded class adds rounded corners to an image (not available in IE8):</p>
		<img src="https://www.w3schools.com/bootstrap/cinqueterre.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
		
		<h2 style="background-color: lavenderblush;">Circle - img-circle class</h2>
		<p>The .img-circle class shapes the image to a circle (not available in IE8):</p>
		<img src="https://www.w3schools.com/bootstrap/cinqueterre.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
		
		<h2 style="background-color: lavender;">Thumbnail - img-thumbnail class</h2>
		<p>The .img-thumbnail class creates a thumbnail of the image:</p>
		<img src="https://www.w3schools.com/bootstrap/cinqueterre.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
		
		<h2 style="background-color: lavenderblush;">Image - 반응형 이미지</h2>
		<p>The .img-responsive class makes the image scale nicely to the parent element (resize the browser window to see the effect):</p>
		<img class="img-responsive" src="https://www.w3schools.com/bootstrap/img_chania.jpg" alt="Chania" width="460" height="345">
		
		<h2 style="background-color: lavender;">Inage Gallery</h2>
		<p>The .thumbnail class can be used to display an image gallery.</p>
		<p>The .caption class adds proper padding and a dark grey color to text inside thumbnails.</p>
		<p>Click on the images to enlarge them.</p>
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="https://www.w3schools.com/w3images/lights.jpg" target="_blank"> 
						<img src="https://www.w3schools.com/w3images/lights.jpg" alt="Lights" style="width: 100%" />
						<div class="caption">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate facilis!</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="https://www.w3schools.com/w3images/nature.jpg" target="_blank"> 
						<img src="https://www.w3schools.com/w3images/nature.jpg" alt="Lights" style="width: 100%" />
						<div class="caption">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora rem.</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="https://www.w3schools.com/w3images/fjords.jpg" target="_blank"> 
						<img src="https://www.w3schools.com/w3images/fjords.jpg" alt="Lights" style="width: 100%" />
						<div class="caption">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid id.</p>
						</div>
					</a>
				</div>
			</div>
		</div>
		
		<h2 style="background-color: lavenderblush;">Responsive Embed</h2>
		<p>Create a responsive video and scale it nicely to the parent element with an 16:9 aspect ratio</p>
		<!-- 16:9 aspect ratio. 4:3일경우는 4by3으로.. -->
		<div class="embed-responsive embed-responsive-16by9">
			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/XGSy3_Czz8k"></iframe>
		</div>
	</div>
</body>
</html>