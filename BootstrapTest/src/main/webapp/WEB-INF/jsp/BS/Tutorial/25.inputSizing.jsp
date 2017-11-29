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
		<h2 style="background-color: lavender;">Input Sizing</h2>
		<p>The form below shows input elements with different heights using .input-lg and .input-sm:</p>
		<form action="">
			<div class="form-group">
				<label for="inputdefault">Default input</label> <input type="text" id="inputdefault" class="form-control" />
			</div>
			<div class="form-group">
				<label for="inputlg">input-lg</label> <input type="text" id="inputlg" class="form-control input-lg" />
			</div>
			<div class="form-group">
				<label for="inputsm">input-sm</label> <input type="text" id="inputsm" class="form-control input-sm" />
			</div>
			<div class="form-group">
				<label for="sel1">Default select list</label>
				<select name="sel1" id="sel1" class="form-control">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
				</select>
			</div>
			<div class="form-group">
				<label for="sel2">select list lg</label>
				<select name="sel2" id="sel2" class="form-control input-lg">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
				</select>
			</div>
			<div class="form-group">
				<label for="sel3">select list sm</label>
				<select name="sel3" id="sel3" class="form-control input-sm">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
				</select>
			</div>
		</form>
	</div>
	<div class="container">
		<h2 style="background-color: lavender;">Input Sizing 한 행에 같이 출력</h2>
		<p>You can quickly size labels and form controls within a Horizontal form by adding .form-group-lg or .form-group-sm to the div class="form-group" element:</p>
		<form class="form-horizontal">
			<div class="form-group form-group-lg">
				<label class="col-sm-2 control-label" for="lg">form-group-lg</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="lg">
				</div>
			</div>
			<div class="form-group form-group-sm">
				<label class="col-sm-2 control-label" for="sm">form-group-sm</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="sm">
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<h1 style="background-color: lavender;">Input Group Size 버튼 붙이기</h1>
		<p>The .input-group class is a container to enhance an input by adding an icon, text or a button in front or behind it as a "help text".</p>
		<p>Use the .input-group-lg if you want a large input group:</p>
		<form>
			<div class="input-group input-group-lg">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
		<br>
		<p>Use the .input-group-sm if you want a small input group:</p>
		<form>
			<div class="input-group input-group-sm">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<h2 style="background-color: lavender">Column Sizing</h2>
		<p>The form below shows input elements with different widths using different .col-xs-* classes:</p>
		<form>
			<div class="form-group row">
				<div class="col-xs-2">
					<label for="ex1">col-xs-2</label> <input class="form-control" id="ex1" type="text">
				</div>
				<div class="col-xs-3">
					<label for="ex2">col-xs-3</label> <input class="form-control" id="ex2" type="text">
				</div>
				<div class="col-xs-4">
					<label for="ex3">col-xs-4</label> <input class="form-control" id="ex3" type="text">
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<h2 style="background-color: lavender;">Help text 설명구문 help-block class</h2>
		<p>Use the .help-block class to add a block level help text in forms:</p>
		<form>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password" class="form-control" id="pwd" placeholder="Enter password"> <span class="help-block">This is some help text that breaks onto a new line and may extend more than one line.</span>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>