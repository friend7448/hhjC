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
		<h2 style="background-color: lavender;">Media Object</h2>
		<p>Use the "media-left" class to left-align a media object. Text that should appear next to the image, is placed inside a container with class="media-body".</p>
		<p>Tip: Use the "media-right" class to right-align the media object.</p>
		<br>
		<!-- Left-aligned media object -->
		<div class="media">
			<div class="media-left">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 60px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">Left-aligned</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
		</div>
		<hr>
		<!-- Right-aligned media object -->
		<div class="media">
			<div class="media-body">
				<h4 class="media-heading">Right-aligned</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
			<div class="media-right">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 60px">
			</div>
		</div>
	</div>
	<div class="container">
		<h2 style="background-color: lavender;">Media Object 이미지 위치</h2>
		<p>The media object can also be top, middle or bottom-aligned with the "media-top", "media-middle" or "media-bottom" class:</p>
		<br>
		<div class="media">
			<div class="media-left media-top">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 80px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">Media Top</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
		</div>
		<hr>
		<div class="media">
			<div class="media-left media-middle">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 80px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">Media Middle</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
		</div>
		<hr>
		<div class="media">
			<div class="media-left media-bottom">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 80px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">Media Bottom</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
		</div>
	</div>
	<div class="container">
		<h2 style="background-color: lavender;">Nested Media Objects 계층 배치</h2>
		<p>Media objects can also be nested (a media object inside a media object):</p>
		<br>
		<div class="media">
			<div class="media-left">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 45px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">
					John Doe <small><i>Posted on February 19, 2016</i></small>
				</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<!-- Nested media object -->
				<div class="media">
					<div class="media-left">
						<img src="https://www.w3schools.com/bootstrap/img_avatar2.png" class="media-object" style="width: 45px">
					</div>
					<div class="media-body">
						<h4 class="media-heading">
							John Doe <small><i>Posted on February 19, 2016</i></small>
						</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<!-- Nested media object -->
						<div class="media">
							<div class="media-left">
								<img src="https://www.w3schools.com/bootstrap/img_avatar3.png" class="media-object" style="width: 45px">
							</div>
							<div class="media-body">
								<h4 class="media-heading">
									John Doe <small><i>Posted on February 19, 2016</i></small>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<h2>Nested Media Objects</h2>
		<p>Media objects can also be nested (a media object inside a media object):</p>
		<br>
		<div class="media">
			<div class="media-left">
				<img src="https://www.w3schools.com/bootstrap/img_avatar1.png" class="media-object" style="width: 45px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">
					John Doe <small><i>Posted on February 19, 2016</i></small>
				</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<!-- Nested media object -->
				<div class="media">
					<div class="media-left">
						<img src="https://www.w3schools.com/bootstrap/img_avatar2.png" class="media-object" style="width: 45px">
					</div>
					<div class="media-body">
						<h4 class="media-heading">
							John Doe <small><i>Posted on February 20, 2016</i></small>
						</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<!-- Nested media object -->
						<div class="media">
							<div class="media-left">
								<img src="https://www.w3schools.com/bootstrap/img_avatar3.png" class="media-object" style="width: 45px">
							</div>
							<div class="media-body">
								<h4 class="media-heading">
									John Doe <small><i>Posted on February 21, 2016</i></small>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							</div>
						</div>
					</div>
					<!-- Nested media object -->
					<div class="media">
						<div class="media-left">
							<img src="https://www.w3schools.com/bootstrap/img_avatar4.png" class="media-object" style="width: 45px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								Jane Doe <small><i>Posted on February 20, 2016</i></small>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- Nested media object -->
			<div class="media">
				<div class="media-left">
					<img src="https://www.w3schools.com/bootstrap/img_avatar5.png" class="media-object" style="width: 45px">
				</div>
				<div class="media-body">
					<h4 class="media-heading">
						Jane Doe <small><i>Posted on February 19, 2016</i></small>
					</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>