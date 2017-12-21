<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.nav.nav-pills.nav-stacked li {
	border-bottom: 1px solid #9d9d9d;
}

.nav.nav-pills.nav-stacked li:first-child {
		border-top: none;
	}

.nav.nav-pills.nav-stacked li a {
	color: #000;
}

.left_title {
	background-color: #9d9d9d;
	height: 70px;
	text-align: center;
	margin-top: 5px;
	padding-top: 20px;
}
</style>


<c:set var="upMenuId" value="${left_menu[0].UP_MENU_ID}" />
<c:forEach items="${up_menu}" var="menu1">
		<c:if test="${menu1.MENU_ID eq upMenuId}">
			<h3 class="left_title">${menu1.MENU_NAME}</h3>
		</c:if>
</c:forEach>	

<c:set var="menu_name" value="${menus_name[0].MENU_NAME}" />
<ul class="nav nav-pills nav-stacked">
	<c:forEach items="${left_menu}" var="left_menu">
		<c:choose>
			<c:when test="${left_menu.MENU_NAME eq menu_name}">
				<li class="active"><a href="<c:url value='${left_menu.PROGRM_URL}'/>">${left_menu.MENU_NAME}</a></li>
			</c:when>
			<c:otherwise>
				<li class=""><a href="<c:url value='${left_menu.PROGRM_URL}'/>">${left_menu.MENU_NAME}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>