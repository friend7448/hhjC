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
		<h2 style="background-color: lavender;">container 내의 jumbotron</h2>
		<div class="jumbotron">
			<h1>Bootstrap Tutorial</h1>
			<p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
		</div>
		<p>This is some text.</p>
		<p>This is another text.</p>
	</div>
	
	<h2 style="background-color: lavenderblush;">container 밖의 jumbotron</h2>
	<div class="jumbotron">
		<h1>Bootstrap Tutorial</h1>
		<p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
	</div>
	<div class="container">
		<p>This is some text.</p>
		<p>This is another text.</p>
	</div>
	
	<div class="container">
		<h2 style="background-color: lavender;">page-header class</h2>
		<div class="page-header">
			<h1>Example Page Header</h1>
		</div>
		<p>This is some text.</p>
		<p>This is another text.</p>
	</div>
</body>
</html>