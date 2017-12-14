<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">

<style>
	nav { z-index: 1000} /* 메뉴 최상위 */ 
	nav ul li ul { z-index:1001} 
	
	nav {
		background-color: #555; /* 기본 배경 색 */
	}
	
	nav ul {
		font-size: 0;
		margin: 0;
		padding: 0;
	}
	
	nav ul li {
		display: inline-block;
		position: relative;
	}
	
	nav ul li a {
/* 	 	color: #9d9d9d; /* 기본 글 색 */
		color: #fff;
		display: block;
		font-size: 14px;
		padding: 15px 14px;
		transition: 0.3s linear;
	}
	
	nav ul li:hover { 
		background: #080808; /* 마우스 오버시 메뉴 색 */
	}
	
	nav ul li a:hover {
 		color: #fff; /* 마우스 오버시 글 색 */
		text-decoration: none;
	}
	
	nav ul li ul { /* 2뎁스 메뉴 아래 표시 */
		border-bottom: 5px solid #080808;
		display: none;
	 	position: absolute; 
	  	width: 250px;  
	}
	
	nav ul li ul li { /* 2뎁스 메뉴 사이 선 긋기 */
		border-top: 1px solid #444;
		display: block;
		background-color: #555; /* 기본 배경 색 */
	}
	
	nav ul li ul li:first-child {
		border-top: none;
	}
	
	nav ul li ul li a {
/* 		color: #9d9d9d; /* 기본 글 색 */
		color: #fff;
		display: block;
		padding: 10px 14px;
	}
	
	nav ul li ul li a:hover {
		background: #080808; /* 마우스 오버시 메뉴 색 */
 		color: #fff; /* 마우스 오버시 글 색 */
		text-decoration: none;
	}
}
</style>

<div class="container-fluid">
	<div class="form-group">
		<span style="background-color: red">로고</span>
		<div class="pull-right">
			<span class="glyphicon glyphicon-user"> ${user_name} 님</span> 
			<a href="<c:url value='/signin/signout.do'/>" class="btn btn-default"
				role="button" style="margin-bottom: 5px"> <span class="glyphicon glyphicon-log-out"></span>
				Logout
			</a>
		</div>
	</div>
</div>

<div class="body-nav">
	<nav>
		<div class="container-fluid">
			<ul class="nav-justified">
				<c:forEach items="${up_menu}" var="menu1">
					<li><a class="">${menu1.MENU_NAME}</a>
						<ul>
							<c:forEach items="${menu}" var="menu2">
								<c:if test="${menu1.MENU_ID eq menu2.UP_MENU_ID}">
									<li><a
										href="<c:url value='${menu2.PROGRM_URL}'/>">${menu2.MENU_NAME}</a></li>
								</c:if>
							</c:forEach>
						</ul></li>
				</c:forEach>
			</ul>
		</div>
	</nav>
</div>

<script>
	$('nav li').hover(function() {
		$('ul', this).stop().slideDown(200);
	}, function() {
		$('ul', this).stop().slideUp(200);
	});
</script>


<!-- <div class="container-fluid"> -->
<!-- 	<div class="form-group"> -->
<!-- 		<div class="pull-right"> -->
<%-- 			<span class="glyphicon glyphicon-user"> ${user_name} 님</span> <a --%>
<%-- 				href="<c:url value='/signin/signout.do'/>" class="btn btn-default" --%>
<!-- 				role="button"> <span class="glyphicon glyphicon-log-out"></span> -->
<!-- 				Logout -->
<!-- 			</a> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
<!-- <div class="container-fluid"> -->
<!-- 	<nav class="navbar navbar-default"> -->
<!-- 		<ul class="nav nav-justified"> -->
<%-- 			<c:forEach items="${up_menu}" var="menu1"> --%>
<%-- 				<li><a class="">${menu1.MENU_NAME}</a> --%>
<!-- 					<ul> -->
<%-- 						<c:forEach items="${menu}" var="menu2"> --%>
<%-- 							<c:if test="${menu1.MENU_ID eq menu2.UP_MENU_ID}"> --%>
<%-- 								<li class="${menu2.MENU_ID}"><a --%>
<%-- 									href="<c:url value='${menu2.PROGRM_URL}'/>">${menu2.MENU_NAME}</a></li> --%>
<%-- 							</c:if> --%>
<%-- 						</c:forEach> --%>
<!-- 					</ul></li> -->
<%-- 			</c:forEach> --%>
<!-- 		</ul> -->
<!-- 	</nav> -->
<!-- </div> -->


