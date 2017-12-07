<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
	<div class="form-group">
		<div class="pull-right">
			<span class="glyphicon glyphicon-user"> ${user_name} 님</span> <a href="<c:url value='/signin/signout.do'/>" class="btn btn-default" role="button"> <span class="glyphicon glyphicon-log-out"></span> Logout
			</a>
		</div>
	</div>
</div>
<div class="container-fluid">
	<nav class="navbar navbar-default">
		<ul class="nav nav-justified">
			<c:forEach items="${up_menu}" var="menu1">
				<li><a class="">${menu1.MENU_NAME}</a>
					<ul>
						<c:forEach items="${menu}" var="menu2">
							<c:if test="${menu1.MENU_ID eq menu2.UP_MENU_ID}">
								<li class="${menu2.MENU_ID}"><a href="<c:url value='${menu2.PROGRM_URL}'/>">${menu2.MENU_NAME}</a></li>
							</c:if>
						</c:forEach>
					</ul></li>
			</c:forEach>
		</ul>
	</nav>
</div>

