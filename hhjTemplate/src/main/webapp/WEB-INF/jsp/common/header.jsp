<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/jquery-ui-1.12.1.custom/jquery-ui.min.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.jqgrid.css" /> -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/jqGrid_JS_5.2.1/css/ui.jqgrid-bootstrap.css" />
<!-- <link type="text/css" rel="stylesheet" href="./jqGrid_JS_5.2.1/css/ui.multiselect.css" /> -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/overlap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/hhj.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/default.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jqGrid_JS_5.2.1/i18n/grid.locale-kr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jqGrid_JS_5.2.1/jquery.jqGrid.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/common/hhj_default.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/common/paginate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/common/paginate2.js"></script>

<style>
.up_menu_active {
	background: #080808; /* 선택된 상위 메뉴 표시 */
}
  .modal-header, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 20px;
  }
  .modal-footer {
      background-color: #f9f9f9;
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
				<li class="loginbtn"><a href="<c:url value='/SignIn/SignOut.do'/>">로그아웃</a></li>
				<li class="loginbtn"><a href="javascript:void(0)" onclick="changeInfo();">비밀번호변경</a></li>
<!-- 					 <a href="javascript:void(0)" onclick="changeInfo();" class="btn_rwhite b_h25">비번변경</a>  -->
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
	
	//정보 변경창 이동
	function changeInfo(){
	    gfn_openPop(
	            {
	                url : "../signin/changeInfoPopUp.do",
	                name : "changeInfo",
	                width : 600,
	                height : 320,
	                scrollbars : "yes",
	                resizable : "no",
	                param:{},
	                callback : ""
	            });
	}
	
	/**
	 * 팝업창 띄움
	 */
	function gfn_openPop(option)
	{
	    var data = "";
	    
	    if(typeof option.callback != 'undefined')
	    {
	        if(data == "")
	            data = data + "?" + "callback=" + option.callback;
	        else
	            data = data + "&" + "callback=" + option.callback;
	    }
	    
	    if(typeof option.param != 'undefined')
	    {
	        $.each(option.param, function(key, value){
	            
	            if(data == "")
	                data = data + "?" + key + "=" + encodeURIComponent(value);
	            else
	                data = data + "&" + key + "=" + encodeURIComponent(value);
	        });
	    }
	    
	    var pop = window.open(
	        option.url + data, 
	        option.name, 
	        "width=" + (typeof option.width == 'undefined' ? 500 : option.width) +
	        ",height=" + (typeof option.height == 'undefined' ? 500 : option.height) +
	        ",scrollbars=" + (typeof option.scroll == 'undefined' ? 'yes' : option.scroll) +
	        ",toolbar=" + (typeof option.toolbar == 'undefined' ? 'no' : option.toolbar) +
	        ",menubar=" + (typeof option.menubar == 'undefined' ? 'no' : option.menubar) +
	        ",location=" + (typeof option.location == 'undefined' ? 'no' : option.location) +
	        ",resizable=" + (typeof option.resizable == 'undefined' ? 'yes' : option.resizable) +
	        ",fullscreen=" + (typeof option.fullscreen == 'undefined' ? 'no' : option.fullscreen) +
	        ",channelmode=" + (typeof option.channelmode == 'undefined' ? 'no' : option.channelmode) 
	    );
	    
	    pop.focus();
	    
	    return pop;
	}

	//팝업창 닫기
	function gfn_popClose() {    
	    self.close();        
	}
</script>
