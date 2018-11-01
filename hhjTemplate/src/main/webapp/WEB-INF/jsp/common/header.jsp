<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link type="text/css" rel="stylesheet" href="../jquery-ui-1.12.1.custom/jquery-ui.min.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.jqgrid.css" /> -->
<link type="text/css" rel="stylesheet" href="../jqGrid_JS_5.2.1/css/ui.jqgrid-bootstrap.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.multiselect.css" /> -->
<link type="text/css" rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="../css/overlap.css">
<link type="text/css" rel="stylesheet" href="../css/hhj.css">
<link type="text/css" rel="stylesheet" href="../css/common.css">
<link type="text/css" rel="stylesheet" href="../css/default.css">

<script type="text/javascript" src="../jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript" src="../jqGrid_JS_5.2.1/i18n/grid.locale-kr.js"></script>
<script type="text/javascript" src="../jqGrid_JS_5.2.1/jquery.jqGrid.js"></script>
<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../script/common/hhj_default.js"></script>
<script type="text/javascript" src="../script/common/paginate.js"></script>
<script type="text/javascript" src="../script/common/paginate2.js"></script>


<style>
.up_menu_active {
	background: #080808; /* 선택된 상위 메뉴 표시 */
}

</style>

<div id="header">
	<div class="headerDiv">
		<div id="topguide">
			<div class="topLogo">
				<h1>
					<!-- 					<a href="../main/main.do"><img src="#" alt="로고" /></a> -->
				</h1>
			</div>
			<ul class="topLogin">
				<li class="userlogin"><span>${user_name}&nbsp;님</span></li>
				<li class="loginbtn"><a
					href="<c:url value='/signin/signout.do'/>">로그아웃</a></li>
				<!-- 					<li class="loginbtn"><a href="#">비밀번호변경</a></li> -->
			</ul>
		</div>
	</div>
</div>

<div id="gnbDiv">
	<div class="gnbDiv" style="height: 65px;">
		<div class="gnbWrap">
			<h1 class="logo">
				<a href="../main/main.do">A 시스템</a>
			</h1>

			<div class="gnb">
				<ul>
					<c:forEach items="${up_menu}" var="menuVO" varStatus="status">
						<c:if test="${menuVO.upMenuId == ''}">
							<li><a class="oneDep">${menuVO.menuName}</a>
								<p class="twoDep">
									<c:forEach items="${up_menu}" var="menuSubVO" varStatus="status2"> 
 										<c:if test="${menuVO.menuId eq menuSubVO.upMenuId}"> 
 											<a class="off" href="<c:url value='${menuSubVO.progrmUrl}'/>">${menuSubVO.menuName}</a> 
 										</c:if> 
 									</c:forEach> 
								</p>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="twoDbg"></div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		var max_h = 0;
		var tmp_h = 0;
		
		for (var i = 0; i < 7; i++) {
			var h = $('.twoDep').eq(i).css("height");
			if (h != null) {
				tmp_h = Number(h.replace('px', ''));
				if (tmp_h > max_h) {
					max_h = tmp_h;
				}
			}
		}
		$('.twoDbg').css("height", (3 + max_h) + "px");
		$('.twoDep').css("height", (max_h) + "px");
		//gnb
		jQuery(".gnb ul").children("li").each(function(q) {
			jQuery(this).mouseenter(function() {
				jQuery(".gnbDiv").stop().animate({
					height : (70 + max_h)
				}, 400, "easeOutCubic");
				jQuery(this).addClass("on");
			}).focusin(function() {
				jQuery(this).mouseenter();
			})

			jQuery(this).mouseleave(function() {
				jQuery(this).removeClass("on");
				jQuery(".gnbDiv").stop().animate({
					height : 65
				}, 400, "easeOutCubic");
			}).focusout(function() {
				jQuery(this).mouseleave();
			})

			jQuery(this).find(".twoDep").find("a").each(function() {
				jQuery(this).mouseover(function() {
				})
				jQuery(this).mouseout(function() {
				})
			})
		})
	});
</script>
