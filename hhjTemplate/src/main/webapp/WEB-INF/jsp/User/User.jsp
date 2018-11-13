<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<form action="" class="form-horizontal" onsubmit="return false;">
		<div class="form-group">
			<label class="control-label col-sm-2" for="srch_privgrp_sn">사용자 권한</label>
			<div class="col-sm-3">
				<select name="srch_privgrp_sn" id="srch_privgrp_sn" class="form-control" onkeydown="checkEnter(this.event);">
					<option value="" selected="selected">전체</option>
					<c:forEach var="result" items="${selectPrivGrp}" varStatus="status">
						<option value="<c:out value="${result.privgrpSn}"/>"><c:out value="${result.privgrpName}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="col-sm-2">
				<select name="" id="slt_search" name="slt_search" class="form-control" onkeydown="checkEnter(this.event);">
					<option value="1" selected="selected">사용자ID</option>
					<option value="2">사용자명</option>
				</select>
			</div>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="txt_search" name="txt_search" onkeydown="checkEnter(this.event);"/>
			</div>
			<div class="pull-right hhj-search-btn">
				<button type="button" class="btn btn-info" id="btn_search">
					<span class="glyphicon glyphicon-search"></span> 검색
				</button>
			</div>
		</div>
	</form>
</div>
<div class="container-fluid" id="grid_container">
	<table id="tbody"></table>
	<div id="paginate"></div>
</div>
<div class="container-fluid hhj-content-detail">
	<form action="" class="form-horizontal" id="frmDetail" name="frmDetail" method="post" onsubmit="return false;">
		<input type="hidden" id="user_sn" name="user_sn" /> 
		<input type="hidden" id="hidden_user_id" name="txt_hidden_user_id" /> 
		<div class="form-group">
			<label for="" class="control-label col-sm-2">사용자ID<span>*</span></label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="user_id" name="user_id" />
			</div>
			<div class="col-sm-1">
				<button class="btn btn-default pull-right" id="btn_checkRepetition" onClick="checkRepetition(); return false;">중복체크</button>
			</div>
			<label for="" class="control-label col-sm-2">사용자명<span>*</span></label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="user_name" name="user_name" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-2">비밀번호<span>*</span></label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="user_pw" name="user_pw" />
			</div>
			<label for="" class="control-label col-sm-2">전화번호</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="cell" name="cell" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-2">이메일</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="email" name="email" />
			</div>
			<label for="" class="control-label col-sm-2">권한<span>*</span></label>
			<div class="col-sm-4">
				<select class="form-control" id="privgrp_sn" name="privgrp_sn">
					<option value="" selected="selected">선택</option>
					<c:forEach var="result" items="${selectPrivGrp}" varStatus="status">
						<option value="<c:out value="${result.privgrpSn}"/>"><c:out value="${result.privgrpName}" /></option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-2">최종수정자</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="updusr_sn" name="updusr_sn" readonly="readonly" />
			</div>
			<label for="" class="control-label col-sm-2">최종수정일시</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="updt_dt" name="updt_dt" readonly="readonly" />
			</div>
		</div>
		<div class="pull-right">
			<c:if test="${program_auth[0].writeYn == 'Y'}">
				<button type="button" class="btn btn-default" id="btn_init">초기화</button>
				<button type="button" class="btn btn-default" id="btn_insert">등록</button>
				<button type="button" class="btn btn-default" id="btn_update">수정</button>
				<button type="button" class="btn btn-default" id="btn_delete">삭제</button>
			</c:if>
		</div>
	</form>
</div>
<script type="text/javascript" src="../script/User/User.js"></script>
<script type="text/javascript" src="../script/common/hhj_defaultContent.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>