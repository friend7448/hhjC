<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
	<form action="" class="form-horizontal" onsubmit="return false;">
		<div class="form-group">
			<label class="control-label col-sm-2" for="srch_menu_id">프로그램ID</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="srch_menu_id" name="srch_menu_id" placeholder="프로그램ID" onkeydown="checkEnter(this.event);"/>
			</div>
			<label class="control-label col-sm-2" for="srch_menu_name">프로그램명</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="srch_menu_name" name="srch_menu_name" placeholder="프로그램명" onkeydown="checkEnter(this.event);"/>
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
		<div class="form-group">
			<label for="" class="control-label col-sm-2">상위프로그램</label>
			<div class="col-sm-4">
				<select class="form-control" id="up_menu_id" name="up_menu_id">
					<option value="" selected="selected">선택</option>
					<c:forEach var="result" items="${selectUpPrg}" varStatus="status">
						<option value="<c:out value="${result.menuId}"/>"><c:out value="${result.menuName}" /></option>
					</c:forEach>
				</select>
			</div>
			<label for="" class="control-label col-sm-2">프로그램ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="menu_id" name="menu_id" maxlength="5" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-2">프로그램명</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="menu_name" name="menu_name" maxlength="100" />
			</div>
			<label for="" class="control-label col-sm-2">프로그램URL</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="progrm_url" name="progrm_url" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-2">프로그램순서</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="sort_order" name="sort_order" maxlength="3" onkeyup="check_number(this,'int',3,0,'N');" />
			</div>
			<label for="" class="control-label col-sm-2">사용여부</label>
			<div class="col-sm-4">
				<select id="use_at" class="form-control" name="use_at">
					<option value="Y">사용</option>
					<option value="N">미사용</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-2">최종수정자ID</label>
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
<script type="text/javascript" src="../script/program/program.js"></script>
<script type="text/javascript" src="../script/common/hhj_defaultContent.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
