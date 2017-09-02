<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<form action="" class="form-horizontal" onsubmit="return false;">
		<div class="form-group">
			<label class="control-label col-sm-2" for="TXT_SEARCH_MENU_ID">프로그램ID</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="TXT_SEARCH_MENU_ID" name="TXT_SEARCH_MENU_ID" placeholder="프로그램ID" />
			</div>
			<label class="control-label col-sm-2" for="TXT_SEARCH_MENU_NAME">프로그램명</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="TXT_SEARCH_MENU_NAME" name="TXT_SEARCH_MENU_NAME" placeholder="프로그램명" />
			</div>
			<div class="pull-right hhj-search-btn"> 
			<button id="btn_search" class="btn btn-default">검색</button>
			</div>
		</div>
	</form>
</div>
<div class="container-fluid" id="grid_container">
	<table id="tbody"></table>
<!-- 	<div id="tbodyPager"></div> -->
	<div id="paginate"></div>
</div>
<div class="container-fluid">
	<form action="" class="form-horizontal" id="frmDetail" name="frmDetail" method="post" onsubmit="return false;">
		<div class="form-group">
			<label for="" class="control-label col-sm-4">상위프로그램</label>
			<div class="col-sm-8">
				<select class="form-control" id="SLT_UP_MENU_ID" name="SLT_UP_MENU_ID">
					<option value="" selected="selected">선택</option>
					<c:forEach var="result" items="${selectUpPrg}" varStatus="status">
						<option value="<c:out value="${result.MENU_ID}"/>"><c:out value="${result.MENU_NAME}" /></option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">프로그램ID</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="TXT_MENU_ID" name="TXT_MENU_ID" maxlength="5" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">프로그램명</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="TXT_MENU_NAME" name="TXT_MENU_NAME" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">프로그램URL</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="TXT_PROGRM_URL" name="TXT_PROGRM_URL" maxlength="100" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">프로그램순서</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="TXT_SORT_ORDER" name="TXT_SORT_ORDER" maxlength="3" onkeyup="check_number(this,'int',3,0,'N');" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">사용여부</label>
			<div class="col-sm-8">
				<select name="" id="SLT_USE_AT" class="form-control" name="SLT_USE_AT">
					<option value="Y">사용</option>
					<option value="N">미사용</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">최종수정자ID</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="TXT_UPDUSR_SN" name="TXT_UPDUSR_SN" readonly="readonly" />
			</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-sm-4">최종수정일시</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="TXT_UPDT_DT" name="TXT_UPDT_DT" readonly="readonly" />
			</div>
		</div>
		<div class="pull-right">
			<button type="reset" class="btn btn-default" id="btn_init">초기화</button>
			<button type="button" class="btn btn-default" id="btn_insert">등록</button>
			<button type="button" class="btn btn-default" id="btn_update">수정</button>
			<button type="button" class="btn btn-default" id="btn_delete">삭제</button>
		</div>
	</form>
</div>
<script type="text/javascript" src="<c:url value='/script/program/program.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>