<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ajax" uri="http://ajaxtags.sourceforge.net/tags/ajaxtags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!--   -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="title" ignore="true" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.container-fluid.header {
	background-color: #fff;
	color: #000;
	padding: 15px;
}

.container-fluid.body {
	margin-top: 50px;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px;
	
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>
	<div class="container-fluid header">
		<tiles:insertAttribute name="header" />
	</div>
	<div class="container-fluid body text-center">
		<div class="row content">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<footer class="container-fluid text-center">
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>