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
	background-color: #080808;
	color: #9d9d9d;
	height: 70px;
	text-align: center;
	margin-top: 5px;
	padding-top: 20px;
}
</style>

<h3 class="left_title">${menus_name[0].upMenuName}</h3>

<c:set var="menu_name" value="${menus_name[0].menuName}" />
<ul class="nav nav-pills nav-stacked">
	<c:forEach items="${left_menu}" var="left_menu">
		<c:choose>
			<c:when test="${left_menu.menuName eq menu_name}">
			
				<li style="background-color: #9d9d9d;"><a href="<c:url value='${left_menu.progrmUrl}'/>">${left_menu.menuName}</a></li>
			</c:when>
			<c:otherwise>
				<li class=""><a href="<c:url value='${left_menu.progrmUrl}'/>">${left_menu.menuName}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>