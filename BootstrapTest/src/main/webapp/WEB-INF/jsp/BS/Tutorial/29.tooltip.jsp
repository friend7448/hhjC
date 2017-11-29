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
		<h3>Tooltip Example</h3>
		<a href="#" data-toggle="tooltip" title="Hooray!">Hover over me</a>
	</div>
	<script>
		$(document).ready(function() {

			$('[data-toggle="tooltip"]').tooltip();

		});
	</script>
	<div class="container">
		<h3>Tooltip Example 툴팁 위치</h3>
		<p>The data-placement attribute specifies the tooltip position.</p>
		<ul class="list-inline">
			<li><a href="#" data-toggle="tooltip" data-placement="top" title="Hooray!">Top</a></li>
			<li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Hooray!">Bottom</a></li>
			<li><a href="#" data-toggle="tooltip" data-placement="left" title="Hooray!">Left</a></li>
			<li><a href="#" data-toggle="tooltip" data-placement="right" title="Hooray!">Right</a></li>
		</ul>
	</div>
	<script>
		$(document).ready(function() {

			$('[data-toggle="tooltip"]').tooltip();

		});
	</script>
</body>
</html>