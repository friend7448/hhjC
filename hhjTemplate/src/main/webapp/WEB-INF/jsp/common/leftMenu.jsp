<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="nav nav-sidebar">
	<c:forEach items="${left_menu}" var="left_menu">
		<li><a href="<c:url value='${left_menu.PROGRM_URL}'/>">${left_menu.MENU_NAME}</a></li>
	</c:forEach>
</ul>
