<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<form action="" class="form-horizontal" onsubmit="return false;">
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_USER_ID">아이디</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="S_USER_ID" name="S_USER_ID" placeholder="USER_ID" onkeydown="checkEnter(this.event);"/>
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_USER_NAME">이름</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="S_USER_NAME" name="S_USER_NAME" placeholder="USER_NAME" onkeydown="checkEnter(this.event);"/>
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_USER_PW">비밀번호</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="S_USER_PW" name="S_USER_PW" placeholder="USER_PW" onkeydown="checkEnter(this.event);"/>
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_CELL">전화번호</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="S_CELL" name="S_CELL" placeholder="CELL" onkeydown="checkEnter(this.event);"/>
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_EMAIL">e-mail</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="S_EMAIL" name="S_EMAIL" placeholder="EMAIL" onkeydown="checkEnter(this.event);"/>
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_UPDT_DT">등록일시</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="S_UPDT_DT" name="S_UPDT_DT" placeholder="UPDT_DT" onkeydown="checkEnter(this.event);"/>
			</div>
		</div>
  		<div class="form-group pull-right hhj-search-btn">
			<button type="button" class="btn btn-info" id="btn_search">
				<span class="glyphicon glyphicon-search"></span> ê²ì
			</button>
		</div>
	</form>
</div>
<div class="container-fluid" id="grid_container">
	<table id="tbody"></table>
	<div id="paginate"></div>
</div>
<div class="container-fluid hhj-content-detail">
	<form action="" class="form-horizontal" id="frmDetail" name="frmDetail" method="post" onsubmit="return false;">
		<input type="hidden" class="form-control" id="USER_SN" name="USER_SN" maxlength="10" />
		<div class="form-group">
			<label for="USER_ID" class="control-label col-sm-3">아이디</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="USER_ID" name="USER_ID" maxlength="250" />
			</div>
		</div>
		<div class="form-group">
			<label for="USER_NAME" class="control-label col-sm-3">이름</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="USER_NAME" name="USER_NAME" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="USER_PW" class="control-label col-sm-3">비밀번호</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="USER_PW" name="USER_PW" maxlength="250" />
			</div>
		</div>
		<div class="form-group">
			<label for="CELL" class="control-label col-sm-3">전화번호</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="CELL" name="CELL" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="EMAIL" class="control-label col-sm-3">e-mail</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="EMAIL" name="EMAIL" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="UPDT_DT" class="control-label col-sm-3">등록일시</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="UPDT_DT" name="UPDT_DT" maxlength="14" />
			</div>
		</div>
		<div class="pull-right">
			<c:if test="${program_auth[0].WRITE_YN == 'Y'}">
				<button type="button" class="btn btn-default" id="btn_init">ì´ê¸°í</button>
				<button type="button" class="btn btn-default" id="btn_insert">ë±ë¡</button>
				<button type="button" class="btn btn-default" id="btn_update">ìì </button>
				<button type="button" class="btn btn-default" id="btn_delete">ì­ì </button>
			</c:if>
		</div>
	</form>
</div>

<script type="text/javascript" src="../script/TestUser/TestUser.js"></script>
<script type="text/javascript" src="../script/common/hhj_defaultContent.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>