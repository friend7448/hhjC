<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!--   -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="title" ignore="true" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="../jquery-ui-1.12.1.custom/jquery-ui.min.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.jqgrid.css" /> -->
<link type="text/css" rel="stylesheet" href="../jqGrid_JS_5.2.1/css/ui.jqgrid-bootstrap.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.multiselect.css" /> -->
<link type="text/css" rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="../css/overlap.css">
<link type="text/css" rel="stylesheet" href="../css/hhj.css">

<script type="text/javascript" src="../jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript" src="../jqGrid_JS_5.2.1/i18n/grid.locale-kr.js"></script>
<script type="text/javascript" src="../jqGrid_JS_5.2.1/jquery.jqGrid.js"></script>
<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../script/common/hhj_default.js"></script>
<script type="text/javascript" src="../script/common/paginate.js"></script>
<style>
.container-fluid.header {
	background-color: #555;
	color: white;
	padding: 15px;
}

.sidenav {
	background-color: lavender;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
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
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidebar">
				<tiles:insertAttribute name="leftMenu" />
			</div>
			<div class="col-sm-10">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>