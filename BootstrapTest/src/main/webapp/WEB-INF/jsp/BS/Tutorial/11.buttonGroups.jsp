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
		<div class="btn-group">
			<button type="button" class="btn btn-primary">apple</button>
			<button type="button" class="btn btn-primary">samsung</button>
			<button type="button" class="btn btn-primary">sony</button>
		</div>
		
		<h2>Button Groups - Set Sizes</h2>
		<p>Add class .btn-group-* to size all buttons in a button group.</p>
		<h3>Large Buttons:</h3>
		<div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-primary">Apple</button>
			<button type="button" class="btn btn-primary">Samsung</button>
			<button type="button" class="btn btn-primary">Sony</button>
		</div>
		<h3>Default Buttons:</h3>
		<div class="btn-group">
			<button type="button" class="btn btn-primary">Apple</button>
			<button type="button" class="btn btn-primary">Samsung</button>
			<button type="button" class="btn btn-primary">Sony</button>
		</div>
		<h3>Small Buttons:</h3>
		<div class="btn-group btn-group-sm">
			<button type="button" class="btn btn-primary">Apple</button>
			<button type="button" class="btn btn-primary">Samsung</button>
			<button type="button" class="btn btn-primary">Sony</button>
		</div>
		<h3>Extra Small Buttons:</h3>
		<div class="btn-group btn-group-xs">
			<button type="button" class="btn btn-primary">Apple</button>
			<button type="button" class="btn btn-primary">Samsung</button>
			<button type="button" class="btn btn-primary">Sony</button>
		</div>
		
		<h2>Vertical Button Group</h2>
		<p>Use the .btn-group-vertical class to create a vertical button group:</p>
		<div class="btn-group-vertical">
			<button type="button" class="btn btn-primary">Apple</button>
			<button type="button" class="btn btn-primary">Samsung</button>
			<button type="button" class="btn btn-primary">Sony</button>
		</div>
		
		<h2>Justified Button Groups - a 태그 활용 화면 전체 사용</h2>
		<p>To span the entire width of the screen, use the .btn-group-justified class:</p>
		<div class="btn-group btn-group-justified">
			<a href="#" class="btn btn-primary">Apple</a> <a href="#" class="btn btn-primary">Samsung</a> <a href="#" class="btn btn-primary">Sony</a>
		</div>
		
		<h2>Justified Button Groups - button 태그 활용 화면 전체 사용(각 버튼을 group로 묶어야함)</h2>
		<div class="btn-group btn-group-justified">
			<div class="btn-group">
				<button type="button" class="btn btn-primary">Apple</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary">Samsung</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary">Sony</button>
			</div>
		</div>
		
		<h2>Nesting Button Groups - 리스트 버튼 추가</h2>
		<p>Nest button groups to create drop down menus:</p>
		<div class="btn-group">
			<button type="button" class="btn btn-primary">Apple</button>
			<button type="button" class="btn btn-primary">Samsung</button>
			<div class="btn-group">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
					Sony <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Tablet</a></li>
					<li><a href="#">Smartphone</a></li>
				</ul>
			</div>
		</div>
		
		<h2>Split Buttons - 리스트 버튼만 생성</h2>
		<div class="btn-group">
			<button type="button" class="btn btn-primary">Sony</button>
			<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">Tablet</a></li>
				<li><a href="#">Smartphone</a></li>
			</ul>
		</div>
	</div>
	
	
</body>
</html>