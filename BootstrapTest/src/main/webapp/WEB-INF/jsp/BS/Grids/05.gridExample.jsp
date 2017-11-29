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
	<div class="container-fluid">
		<h1>Hello World! - Mixed : Mobile and Desktop</h1>
		<p>Resize the browser window to see the effect.</p>
		<div class="row">
			<div class="col-xs-9 col-md-7" style="background-color: red;">.col-xs-9 .col-md-7</div>
			<div class="col-xs-3 col-md-5" style="background-color: lavender;">.col-xs-3 .col-md-5</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-md-10" style="background-color: lavenderblush;">.col-xs-6 .col-md-10</div>
			<div class="col-xs-6 col-md-2" style="background-color: lightgrey;">.col-xs-6 .col-md-2</div>
		</div>
		<div class="row" style="background-color: lightcyan;">
			<div class="col-xs-6">.col-xs-6</div>
			<div class="col-xs-6">.col-xs-6</div>
		</div>
	</div>
	<div class="container-fluid">
		<h1>Hello World! - Mixed: Mobile, Tablet And Desktop</h1>
		<p>Resize the browser window to see the effect.</p>
		<div class="row">
			<div class="col-xs-7 col-sm-6 col-lg-8" style="background-color: red;">.col-xs-7 .col-sm-6 .col-lg-8</div>
			<div class="col-xs-5 col-sm-6 col-lg-4" style="background-color: lavender;">.col-xs-5 .col-sm-6 .col-lg-4</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-sm-8 col-lg-10" style="background-color: lavenderblush;">.col-xs-6 .col-sm-8 .col-lg-10</div>
			<div class="col-xs-6 col-sm-4 col-lg-2" style="background-color: lightgrey;">.col-xs-6 .col-sm-4 .col-lg-2</div>
		</div>
		<div class="row" style="background-color: lightcyan;">
			<div class="col-xs-6">.col-xs-6</div>
			<div class="col-xs-6">.col-xs-6</div>
		</div>
		<div class="container-fluid">
			<h1>Hello World! - 한쪽 내용이 많을경우 옆에 col들이 다 채워지는데 공백 허용(필수!)</h1>
			<div class="row">
				<div class="col-xs-6 col-sm-3" style="background-color: lavender;">
					Column 1<br> Resize the browser window to see the effect. Also try to remove the div clearfix line and see what happens.
				</div>
				<div class="col-xs-6 col-sm-3" style="background-color: lavenderblush;">Column 2</div>
				<!-- Add clearfix for only the required viewport -->
				<div class="clearfix visible-xs"></div>
				<div class="col-xs-6 col-sm-3" style="background-color: lightcyan;">Column 3</div>
				<div class="col-xs-6 col-sm-3" style="background-color: lightgray;">Column 4</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<h1>Offsetting Columns - col 띄워사용</h1>
		<p>Resize the browser window to see the effect.</p>
		<div class="row" style="background-color: lavender;">
			<div class="col-sm-5 col-md-6" style="background-color: lightgray;">.col-sm-5 .col-md-6</div>
			<div class="col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0" style="background-color: lightcyan;">.col-sm-5 .col-sm-offset-2 .col-md-6 .col-md-offset-0</div>
		</div>
	</div>
	<div class="container-fluid">
		<h1>Push and Pull - push 사용으로 화면 resize에 따른 col 순서 바꾸기.</h1>
		<p>Resize the browser window to see the effect.</p>
		<div class="row">
			<div class="col-sm-4 col-sm-push-8" style="background-color: lavender;">.col-sm-4 .col-sm-push-8</div>
			<div class="col-sm-8 col-sm-pull-4" style="background-color: lavenderblush;">.col-sm-8 .col-sm-pull-4</div>
		</div>
	</div>
</body>
</html>