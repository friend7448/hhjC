<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
-
-
isMenu 
-

<div class="container-fluid hhj-content-header">
	<form action="" class="form-horizontal" onsubmit="return false;">
		<div class="form-group">
			<label class="control-label col-sm-2" for="S_MENU_ID">MENU_ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_MENU_ID" name="S_MENU_ID" placeholder="MENU_ID" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_MENU_NAME">MENU_NAME</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_MENU_NAME" name="S_MENU_NAME" placeholder="MENU_NAME" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_UP_MENU_ID">UP_MENU_ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_UP_MENU_ID" name="S_UP_MENU_ID" placeholder="UP_MENU_ID" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_PROGRM_URL">PROGRM_URL</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_PROGRM_URL" name="S_PROGRM_URL" placeholder="PROGRM_URL" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_SORT_ORDER">SORT_ORDER</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_SORT_ORDER" name="S_SORT_ORDER" placeholder="SORT_ORDER" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_USE_YN">USE_YN</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_USE_YN" name="S_USE_YN" placeholder="USE_YN" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_UPDT_DT">UPDT_DT</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_UPDT_DT" name="S_UPDT_DT" placeholder="UPDT_DT" />
			</div>
		</div>
 		<div class="form-group">
			<label class="control-label col-sm-2" for="S_UPDUSR_SN">UPDUSR_SN</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="S_UPDUSR_SN" name="S_UPDUSR_SN" placeholder="UPDUSR_SN" />
			</div>
		</div>
  		<div class="pull-right hhj-search-btn">
			<button id="btn_search" class="btn btn-default">ê²ì</button>
		</div>
	</form>
</div>
<div class="container-fluid" id="grid_container">
	<table id="tbody"></table>
	<div id="paginate"></div>
</div>
<div class="container-fluid hhj-content-detail">
	<form action="" class="form-horizontal" id="frmDetail" name="frmDetail" method="post" onsubmit="return false;">
		<div class="form-group">
			<label for="MENU_ID" class="control-label col-sm-3">MENU_ID</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="MENU_ID" name="MENU_ID" maxlength="20" />
			</div>
		</div>
		<div class="form-group">
			<label for="MENU_NAME" class="control-label col-sm-3">MENU_NAME</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="MENU_NAME" name="MENU_NAME" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="UP_MENU_ID" class="control-label col-sm-3">UP_MENU_ID</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="UP_MENU_ID" name="UP_MENU_ID" maxlength="20" />
			</div>
		</div>
		<div class="form-group">
			<label for="PROGRM_URL" class="control-label col-sm-3">PROGRM_URL</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="PROGRM_URL" name="PROGRM_URL" maxlength="300" />
			</div>
		</div>
		<div class="form-group">
			<label for="SORT_ORDER" class="control-label col-sm-3">SORT_ORDER</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="SORT_ORDER" name="SORT_ORDER" maxlength="10" />
			</div>
		</div>
		<div class="form-group">
			<label for="USE_YN" class="control-label col-sm-3">USE_YN</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="USE_YN" name="USE_YN" maxlength="1" />
			</div>
		</div>
		<div class="form-group">
			<label for="UPDT_DT" class="control-label col-sm-3">UPDT_DT</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="UPDT_DT" name="UPDT_DT" maxlength="14" />
			</div>
		</div>
		<div class="form-group">
			<label for="UPDUSR_SN" class="control-label col-sm-3">UPDUSR_SN</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="UPDUSR_SN" name="UPDUSR_SN" maxlength="10" />
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

<script type="text/javascript" src="../script/IsMenu/IsMenu.js"></script>
<script type="text/javascript" src="../script/common/hhj_defaultContent.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>