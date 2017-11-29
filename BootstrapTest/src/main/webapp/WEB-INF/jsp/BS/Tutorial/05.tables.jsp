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
		<h2 style="background-color: lavender;">Basic Table</h2>
		<p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>
		<table class="table">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr>
					<td>Mary</td>
					<td>Moe</td>
					<td>mary@example.com</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Dooley</td>
					<td>july@example.com</td>
				</tr>
			</tbody>
		</table>
		
		<h2 style="background-color: lavenderblush;">Striped Rows</h2>
		<p>The .table-striped class adds zebra-stripes to a table:</p>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr>
					<td>Mary</td>
					<td>Moe</td>
					<td>mary@example.com</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Dooley</td>
					<td>july@example.com</td>
				</tr>
			</tbody>
		</table>
		
		<h2 style="background-color: lavender;">Bordered Table</h2>
		<p>The .table-bordered class adds borders to a table:</p>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr>
					<td>Mary</td>
					<td>Moe</td>
					<td>mary@example.com</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Dooley</td>
					<td>july@example.com</td>
				</tr>
			</tbody>
		</table>
		
		<h2 style="background-color: lavenderblush">Hover Rows - 마우스 올렸을때 색상 변경</h2>
		<p>The .table-hover class enables a hover state on table rows:</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr>
					<td>Mary</td>
					<td>Moe</td>
					<td>mary@example.com</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Dooley</td>
					<td>july@example.com</td>
				</tr>
			</tbody>
		</table>
		
		<h2 style="background-color: lavender;">Condensed Table - 살짝 폭 좁게?</h2>
		<p>The .table-condensed class makes a table more compact by cutting cell padding in half:</p>
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr>
					<td>Mary</td>
					<td>Moe</td>
					<td>mary@example.com</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Dooley</td>
					<td>july@example.com</td>
				</tr>
			</tbody>
		</table>
		
		<h2 style="background-color: lavenderblush;">Contextual Classes - 경고, 성공 등 색상 의미 부여</h2>
		<p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
		<table class="table">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Default</td>
					<td>Defaultson</td>
					<td>def@somemail.com</td>
				</tr>
				<tr class="success">
					<td>Success</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr class="danger">
					<td>Danger</td>
					<td>Moe</td>
					<td>mary@example.com</td>
				</tr>
				<tr class="info">
					<td>Info</td>
					<td>Dooley</td>
					<td>july@example.com</td>
				</tr>
				<tr class="warning">
					<td>Warning</td>
					<td>Refs</td>
					<td>bo@example.com</td>
				</tr>
				<tr class="active">
					<td>Active</td>
					<td>Activeson</td>
					<td>act@example.com</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="container">
		<h2 style="background-color: lavender;">.table-responsive class - 768px 이하 변함</h2>
		<p>The .table-responsive class creates a responsive table which will scroll horizontally on small devices (under 768px). When viewing on anything larger than 768px wide, there is no difference:</p>
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Age</th>
						<th>City</th>
						<th>Country</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Anna</td>
						<td>Pitt</td>
						<td>35</td>
						<td>New York</td>
						<td>USA</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>