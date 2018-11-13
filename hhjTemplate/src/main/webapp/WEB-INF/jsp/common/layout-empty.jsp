<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!--   -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/jquery-ui-1.12.1.custom/jquery-ui.min.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.jqgrid.css" /> -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/jqGrid_JS_5.2.1/css/ui.jqgrid-bootstrap.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.multiselect.css" /> -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/overlap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/hhj.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jqGrid_JS_5.2.1/i18n/grid.locale-kr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jqGrid_JS_5.2.1/jquery.jqGrid.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/common/hhj_default.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/common/paginate.js"></script>

</head>
<body>
<tiles:insertAttribute name="content" />
	
</body>
</html>