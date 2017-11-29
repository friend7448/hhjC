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
		<h1>Medium Grid - sm 과 md를 사용해서- 클경우는 md 작아지면 sm 적용됨.</h1>
		<p>The following example will result in a 25%/75% split on small devices and a 50%/50% split on medium (and large) devices. On extra small devices, it will automatically stack (100%).</p>
		<p>Resize the browser window to see the effect.</p>
		<div class="row">
			<div class="col-sm-3 col-md-6" style="background-color: yellow;">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
			</div>
			<div class="col-sm-9 col-md-6" style="background-color: pink;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</div>
		</div>
	</div>
	<div class="container-fluid">
		<h1>Medium Grid</h1>
		<p>The following example will result in a 50%/50% split on medium and large devices. On small (and extra small) devices, it will automatically stack (100%).</p>
		<p>Resize the browser window to see the effect.</p>
		<div class="row">
			<div class="col-md-6" style="background-color: yellow;">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
			</div>
			<div class="col-md-6" style="background-color: pink;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</div>
		</div>
	</div>
</body>
</html>