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
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> This alert box could indicate a successful or positive action.
		</div>
		<div class="alert alert-info">
			<strong>Info!</strong> This alert box could indicate a neutral informative change or action.
		</div>
		<div class="alert alert-warning">
			<strong>Warning!</strong> This alert box could indicate a warning that might need attention.
		</div>
		<div class="alert alert-danger">
			<strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
		</div>
		
		<h2>Alert Links</h2>
		<p>Add the alert-link class to any links inside the alert box to create "matching colored links".</p>
		<div class="alert alert-success">
			<strong>Success!</strong> You should <a href="#" class="alert-link">read this message</a>.
		</div>
		<div class="alert alert-info">
			<strong>Info!</strong> You should <a href="#" class="alert-link">read this message</a>.
		</div>
		<div class="alert alert-warning">
			<strong>Warning!</strong> You should <a href="#" class="alert-link">read this message</a>.
		</div>
		<div class="alert alert-danger">
			<strong>Danger!</strong> You should <a href="#" class="alert-link">read this message</a>.
		</div>
		
		<h2>Alerts - 오른쪽에 삭제 생성</h2>
		<p>The a element with class="close" and data-dismiss="alert" is used to close the alert box.</p>
		<p>The alert-dismissible class adds some extra padding to the close button.</p>
		<div class="alert alert-success alert-dismissable">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a> <strong>Success!</strong> This alert box could indicate a successful or positive action.
		</div>
		<div class="alert alert-info alert-dismissable">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a> <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
		</div>
		<div class="alert alert-warning alert-dismissable">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a> <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
		</div>
		<div class="alert alert-danger alert-dismissable">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a> <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
		</div>
		
		<h2>Animated Alerts - fade in class</h2>
		<p>The .fade and .in classes adds a fading effect when closing the alert message.</p>
		<div class="alert alert-success alert-dismissable fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong> This alert box could indicate a successful or positive action.
		</div>
		<div class="alert alert-info alert-dismissable fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
		</div>
		<div class="alert alert-warning alert-dismissable fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
		</div>
		<div class="alert alert-danger alert-dismissable fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
		</div>
	</div>
</body>
</html>