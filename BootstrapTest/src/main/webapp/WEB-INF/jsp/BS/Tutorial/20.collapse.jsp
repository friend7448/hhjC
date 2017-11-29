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
		<h2>Simple Collapsible</h2>
		<p>Click on the button to toggle between showing and hiding content.</p>
		<button type="button" data-toggle="collapse" data-target="#demo" class="btnbtn-info">Simple collapsible</button>
		<div id="demo" class="collapse">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil vel eius qui corrupti illum odio incidunt voluptatum delectus ut quisquam voluptas neque vero magni assumenda aliquid nisi amet at quibusdam!</div>
		<h2>Simple Collapsible</h2>
		<a href="#demo" class="btn btn-info" data-toggle="collapse">Simple collapsible</a>
		<div id="demo" class="collapse">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
		<h2>Simple Collapsible - 시작시 보임.</h2>
		<p>Click on the button to toggle between showing and hiding content.</p>
		<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Simple collapsible</button>
		<div id="demo" class="collapse in">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
		<h2>Collapsible Panel - 패널 해더에 적용</h2>
		<p>Click on the collapsible panel to open and close it.</p>
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse1">Collapsible panel</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse">
					<div class="panel-body">Panel Body</div>
					<div class="panel-footer">Panel Footer</div>
				</div>
			</div>
		</div>
		<h2>Collapsible List Group</h2>
		<p>Click on the collapsible panel to open and close it.</p>
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse2">Collapsible list group</a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<ul class="list-group">
						<li class="list-group-item">One</li>
						<li class="list-group-item">Two</li>
						<li class="list-group-item">Three</li>
					</ul>
					<div class="panel-footer">Footer</div>
				</div>
			</div>
		</div>
		<h2>Accordion Example</h2>
		<p>
			<strong>Note:</strong> The <strong>data-parent</strong> attribute makes sure that all collapsible elements under the specified parent will be closed when one of the collapsible item is shown.
		</p>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapse11">Collapsible Group 1</a>
					</h4>
				</div>
				<div id="collapse11" class="panel-collapse collapse in">
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapse22">Collapsible Group 2</a>
					</h4>
				</div>
				<div id="collapse22" class="panel-collapse collapse">
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapse33">Collapsible Group 3</a>
					</h4>
				</div>
				<div id="collapse33" class="panel-collapse collapse">
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>