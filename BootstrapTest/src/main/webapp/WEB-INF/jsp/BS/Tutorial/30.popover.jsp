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
		<h3>Popover Example</h3>
		<a href="#" data-toggle="popover" title="Popover Header" data-content="Some content inside the popover">Toggle popover</a>
	</div>
	<script>
		$(document).ready(function() {

			$('[data-toggle="popover"]').popover();

		});
	</script>
	<div class="container">
		<h3>Popover Example 위치</h3>
		<ul class="list-inline">
			<li><a href="#" title="Header" data-toggle="popover" data-placement="top" data-content="Content">Top</a></li>
			<li><a href="#" title="Header" data-toggle="popover" data-placement="bottom" data-content="Content">Bottom</a></li>
			<li><a href="#" title="Header" data-toggle="popover" data-placement="left" data-content="Content">Left</a></li>
			<li><a href="#" title="Header" data-toggle="popover" data-placement="right" data-content="Content">Right</a></li>
		</ul>
	</div>
	<script>
		$(document).ready(function() {

			$('[data-toggle="popover"]').popover();

		});
	</script>
	<div class="container">
		<h3>Popover Example 다른곳 클릭 시(포커스 out)  없어짐</h3>
		<a href="#" title="Dismissible popover" data-toggle="popover" data-trigger="focus" data-content="Click anywhere in the document to close this popover">Click me</a>
	</div>
	<script>
		$(document).ready(function() {

			$('[data-toggle="popover"]').popover();

		});
	</script>
	<div class="container">
		<h3>Popover Example 마우스 벗어나면 없어짐</h3>
		<a href="#" title="Header" data-toggle="popover" data-content="Some content">Click Me</a><br> <a href="#" title="Header" data-toggle="popover" data-trigger="hover" data-content="Some content">Hover over me</a>
	</div>
	<script>
		$(document).ready(function() {

			$('[data-toggle="popover"]').popover();

		});
	</script>
</body>
</html>