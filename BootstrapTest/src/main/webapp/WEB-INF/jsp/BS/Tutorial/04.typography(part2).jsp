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
	<div class="containner">
		<h2 style="background-color: lavender;">.lead class</h2>
		<p>Use the .lead class to make a paragraph "stand out":</p>
		<p class="lead">This paragraph stands out.</p>
		<p>This is a regular paragraph.</p>
		
		<h2 style="background-color: lavenderblush;">.small class</h2>
		<p>Use the .small class to make the text smaller:</p>
		<p class="small">This paragraph is smaller.</p>
		<p>This is a regular paragraph.</p>
		
		<h2 style="background-color: lavender;">text-* class 정렬, 강조(strong)</h2>
		<p class="text-left">Left-aligned text.</p>
		<p class="text-right">Right-aligned text.</p>
		<p class="text-center">Center-aligned text.</p>
		<p class="text-justify">Justified text. Justified text. Justified text. Justified text. Justified text. Justified text.</p>
		<p class="text-nowrap">No wrap text. No wrap text. No wrap text. No wrap text.</p>
		<p>
			<strong>Tip:</strong> Try to resize the browser window to see the behaviour of justify and nowrap.
		</p>
		
		<h2 style="background-color: lavenderblush;">text-* class 대소문자 변경</h2>
		<p class="text-lowercase">Lowercased text.</p>
		<p class="text-uppercase">Uppercased text.</p>
		<p class="text-capitalize">Capitalized text.</p>
		
		<h2 style="background-color: lavender;">initialism class. addr 같이쓰고, addr보다 살짝 폰트 작게</h2>
		<p>
			The <abbr title="World Health Organization">WHO</abbr> was founded in 1948. (normal abbr)
		</p>
		<p>
			The <abbr title="World Health Organization" class="initialism">WHO</abbr> was founded in 1948. (slightly smaller abbr)
		</p>
		
		<h2 style="background-color: lavenderblush;">.list-unstyled class</h2>
		<p>The class .list-unstyled removes the default list-style and left margin on list items (immediate children only):</p>
		<ul class="list-unstyled">
			<li>Coffee</li>
			<li>Tea
				<ul>
					<li>Black tea</li>
					<li>Green tea</li>
				</ul>
			</li>
			<li>Milk</li>
		</ul>
		
		<h2 style="background-color: lavender;">.list-inline class</h2>
		<p>The class .list-inline places all list items on a single line:</p>
		<ul class="list-inline">
			<li>Coffee</li>
			<li>Tea</li>
			<li>Milk</li>
		</ul>
		
		<h2 style="background-color: lavenderblush;">.dl-horizontal class</h2>
		<p>Use the .dl-horizontal class line up the description list side-by-side when the browser window expands:</p>
		<dl class="dl-horizontal">
			<dt>Coffee</dt>
			<dd>- black hot drink</dd>
			<dt>Milk</dt>
			<dd>- white cold drink</dd>
		</dl>
		<p>
			<strong>Tip:</strong> Try to resize the browser window to see the behaviour of the description list.
		</p>
		
		<h2 style="background-color: lavender;">pre-scrollable class. pre 태그와 같이 사용 - pre-scrollable 세로 350 사이즈 이상시 세로 스크롤</h2>
		<p>For multiple lines of code, use the pre element:</p>
		<pre>Text in a pre element
  			  is displayed in a fixed-width
			  font, and it preserves
			  both      spaces and
			  line breaks.
  		</pre>
		<p>If you add the .pre-scrollable class, the pre element gets a max-height of 350px and provides a y-axis scrollbar:</p>
		<pre class="pre-scrollable">Text in a pre element
			  ㅁ
			  ㅠ
			  ㅊ
			  ㅇ
			  ㅊ
			  ㄷ
			  ㅇ
			  is displayed in a fixed-width
			  font, and it preserves
			  both      spaces and
			  line breaks.
	    </pre>
	</div>
</body>
</html>