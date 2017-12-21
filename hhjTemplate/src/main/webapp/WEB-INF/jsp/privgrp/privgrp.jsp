<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<form action="" class="form-horizontal" onsubmit="return false;">
		<div class="form-group">
			<label class="control-label col-sm-2" for="TXT_SEARCH_PRIVGRP_NAME">권한그룹명</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="TXT_SEARCH_PRIVGRP_NAME" name="TXT_SEARCH_PRIVGRP_NAME" placeholder="권한그룹명" onkeydown="checkEnter(this.event);"/>
			</div>
			<label class="control-label col-sm-2" for="SLT_SEARCH_USE_YN">사용여부</label>
			<div class="col-sm-3">
				<select name="SLT_SEARCH_USE_YN" id="SLT_SEARCH_USE_YN" class="form-control" onkeydown="checkEnter(this.event);">
					<option value="" selected="selected">전체</option>
					<option value="Y">사용</option>
					<option value="N">미사용</option>
				</select>
			</div>
			<div class="pull-right hhj-search-btn">
				<button type="button" class="btn btn-info" id="btn_search">
					<span class="glyphicon glyphicon-search"></span> 검색
				</button>
			</div>
		</div>
	</form>
</div>
<div class="row">
	<div class="col-sm-6">
		<div class="container-fluid" id="grid_container">
			<h4 style="text-align: left">권한 그룹 정보</h4>
			<table id="tbody"></table>
			<div id="paginate"></div>
		</div>
		<div class="container-fluid hhj-content-detail">
			<form action="" class="form-horizontal" id="frmDetail" name="frmDetail" method="post" onsubmit="return false;">
				<div class="form-group">
					<input type="hidden" class="form-control" id="TXT_HIDDEN_PRIVGRP_SN" name="TXT_HIDDEN_PRIVGRP_SN" /> 
					<label for="" class="control-label col-sm-2">권한그룹명</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="TXT_PRIVGRP_NAME" name="TXT_PRIVGRP_NAME" />
					</div>
					<label for="" class="control-label col-sm-2">사용여부</label>
					<div class="col-sm-4">
						<select name="SLT_USE_YN" id="SLT_USE_YN" class="form-control">
							<option value="Y" selected="selected">사용</option>
							<option value="N">미사용</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="" class="control-label col-sm-2">그룹설명</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="TXT_PRIVGRP_DESC" name="TXT_PRIVGRP_DESC" />
					</div>
					<label for="" class="control-label col-sm-2">우선순위</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="TXT_PRIORT" name="TXT_PRIORT" />
					</div>
				</div>
				<div class="form-group">
					<label for="" class="control-label col-sm-2">수정자ID</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="TXT_UPDUSR_SN" name="TXT_UPDUSR_SN" readonly="readonly" />
					</div>
					<label for="" class="control-label col-sm-2">수정일시</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="TXT_UPDT_DT" name="TXT_UPDT_DT" readonly="readonly" />
					</div>
				</div>
				<div class="pull-right">
					<c:if test="${program_auth[0].WRITE_YN == 'Y'}">
						<button type="button" class="btn btn-default" id="btn_init">초기화</button>
						<button type="button" class="btn btn-default" id="btn_insert">등록</button>
						<button type="button" class="btn btn-default" id="btn_update">수정</button>
						<button type="button" class="btn btn-default" id="btn_delete">삭제</button>
					</c:if>
				</div>
			</form>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="container-fluid" id="grid_container2">
			<h4 style="text-align: left">프로그램 권한 정보</h4>
			<form action="" id="frm2" name="frm2" method="post" onsubmit="return false;">
				<table id="tbody2"></table>
				<div id="paginate2"></div>
			</form>
		</div>
		<div class="container-fluid hhj-content-detail">
			<div class="pull-right">
				<c:if test="${program_auth[0].WRITE_YN == 'Y'}">
					<button type="button" class="btn btn-default" id="btn_update2">수정</button>
				</c:if>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="../script/privgrp/privgrp.js"></script>
<script type="text/javascript" src="../script/privgrp/privgrp2.js"></script>
<script type="text/javascript" src="../script/common/hhj_defaultContent.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>