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

/* Note: Try to remove the following lines to see the effect of CSS positioning */
.affix {
	top: 0;
	width: 100%;
}

.affix+.container-fluid {
	padding-top: 70px;
}
</style>
</head>
<body>
	<div class="container-fluid" style="background-color: #F44336; color: #fff; height: 200px;">
		<h1>Bootstrap Affix Example 메뉴 위에 내용 있는 상황에서 스크롤 내렸을경우 메뉴 고정</h1>
		<h3>Fixed (sticky) navbar on scroll</h3>
		<p>Scroll this page to see how the navbar behaves with data-spy="affix".</p>
		<p>The navbar is attached to the top of the page after you have scrolled a specified amount of pixels.</p>
	</div>
	<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Basic Topnav</a></li>
			<li><a href="#">Page 1</a></li>
			<li><a href="#">Page 2</a></li>
			<li><a href="#">Page 3</a></li>
		</ul>
	</nav>
	<div class="container-fluid" style="height: 1000px">
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
		<h1>Some text to enable scrolling</h1>
	</div>
</body>
</html>