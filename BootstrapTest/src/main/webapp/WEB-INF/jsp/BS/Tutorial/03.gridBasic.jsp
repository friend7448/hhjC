<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- grid 사용법. row 당 col 쪼개기  -->
    
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
	<p>Bootstrap's grid system allows up to 12 columns across the page.</p>
	<p>The Bootstrap grid system has four classes:</p>
	<ul>
		<li>xs(for phones)</li>
		<li>sm(for tablets)</li>
		<li>md(for desktops)</li>
		<li>lg(for larger desktops)</li>
	</ul>
	
	<h1>1:1:1</h1>
	<div class="row">
		<div class="col-md-4" style="background-color: lavender;">.col-md-4</div>
		<div class="col-md-4" style="background-color: lavenderblush;">.col-md-4</div>
		<div class="col-md-4" style="background-color: lavender;">.col-md-4</div>
	</div>
	
	<h1>1:2</h1>
	<div class="row">
		<div class="col-md-4" style="background-color: lavender;">.col-md-4</div>
		<div class="col-md-8" style="background-color: lavenderblush;">.col-md-8</div>
	</div>
</body>
</html>