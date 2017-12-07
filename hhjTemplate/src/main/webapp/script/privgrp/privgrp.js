// 검색 조건
var search_set = 
	{
		url : "../common/doSelect.do", //추가
		postData : {
			ACTION : 'privgrp.doSelect',
			TXT_SEARCH_PRIVGRP_NAME : '',
			SLT_SEARCH_USE_YN : '' 		
		},
	};

function setSearchValue() {
		search_set.postData.TXT_SEARCH_PRIVGRP_NAME = jQuery('#TXT_SEARCH_PRIVGRP_NAME').val();
		search_set.postData.SLT_SEARCH_USE_YN = jQuery('#SLT_SEARCH_USE_YN').val();
}

$(document).ready(function() {
	setSearchValue();
	
	jQuery("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set.url,
		postData : search_set.postData,
		mtype : "POST", 
		colNames : [ 'NO','SN', '권한그룹명','사용여부','우선순위'],
		jsonReader : {
			page : 'page',
			total : 'total',
			root : 'rows',
			records : function(obj) {
				return obj.length;
			},
			repeatitems : false,
			cell : '',
			id : 'RNUM'
		},
		colModel : [ {name : 'RNUM',	   	index : 'RNUM',		    width : 80, 	sortable : false,	align : 'center', 	hidden : true},
		             {name : 'PRIVGRP_SN',	index : 'PRIVGRP_SN',	width : 90,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'PRIVGRP_NAME',index : 'PRIVGRP_NAME',	width : 90,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'USE_YN',		index : 'USE_YN',  		width : 50,		sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'PRIORT',		index : 'PRIORT', 		width : 50,		sortable : false, 	align : 'center', 	hidden : false}
		],
//		pager : '#tbodyPager',
		rowNum : 10,
		rowList:[10,20,30],
		height: 370,
		sortable:true,
//		sortname:'AA',
//		sortorder:"desc",
		gridview: true,
//		caption : '프로그램정보', //제목
//		autowidth : true,
		rownumbers: true,
	    rownumWidth : 40,
		viewrecords : true,
		loadComplete: function(data) {
			initPage("tbody", "paginate", data);
		},
		onSelectRow: function (nId) {
			detail(nId);
			doJqgridSearch2(nId);
		}
	});
	hhj_resizeJqGridWidth('tbody', 'grid_container', $('#grid_container').width());

	btnBind();
	initTableDetail();
});

//버튼
function btnBind()
{
	jQuery("#btn_init").bind("click",doInit);			// 초기화
	jQuery("#btn_search").bind("click",doMenuSearch);   // 검색
	jQuery("#btn_insert").bind("click",doInsert);       // 등록
	jQuery("#btn_update").bind("click",doUpdate);       // 수정
	jQuery("#btn_delete").bind("click",doDelete);       // 삭제
}

// 초기화
function doInit()
{
	initTableDetail();
	jQuery("#TXT_PRIVGRP_NAME").focus();
}

// 초기화 상세
function initTableDetail()
{
	jQuery("#TXT_HIDDEN_PRIVGRP_SN").val("");
	
	jQuery("#TXT_PRIVGRP_NAME").val("");  		// 사용자ID
	jQuery("#TXT_PRIVGRP_DESC").val("");       // 이름
	jQuery("#TXT_PRIORT").val("0");         // 비번
	jQuery("#SLT_USE_YN").val("Y");            // 전번
	jQuery("#TXT_UPDUSR_SN").val("0");      // 수정자 ID
	jQuery("#TXT_UPDT_DT").val("");         // 수정일시
	
	btnStatus(0,1,1);
}

//리스트 조회
function doMenuSearch()
{
	setSearchValue();
	
	jQuery("#tbody").clearGridData();		
	jQuery("#tbody").jqGrid('setGridParam', {
		page : 1,
		url : search_set.url,
		postData : search_set.postData,
	}
	).trigger("reloadGrid");
	
	initTableDetail();
}

// 리스트 상세정보 조회
function detail(nId)
{
	var TXT_HIDDEN_PRIVGRP_SN = jQuery("#tbody").getCell(nId,'PRIVGRP_SN');
	
    $.ajax({
        type: "POST",
        url: "../common/doSelectDetail.do",
        data: {
        	ACTION : 'privgrp.doSelectDetail',
        	TXT_HIDDEN_PRIVGRP_SN : TXT_HIDDEN_PRIVGRP_SN
        },
        dataType: 'json',
        error: function(){
            alert('조회중 오류가 발생하였습니다.');
        },
        success: function(jdata){doDetailCallback(jdata);}
    });
}

// 상세정보 조회 결과
function doDetailCallback(jData)
{
	var response = jData.response[0];

	initTableDetail();
 	jQuery("#TXT_HIDDEN_PRIVGRP_SN").val(response.PRIVGRP_SN);
	jQuery("#TXT_PRIVGRP_NAME").val(response.PRIVGRP_NAME);
	jQuery("#TXT_PRIVGRP_DESC").val(response.PRIVGRP_DESC);
	jQuery("#TXT_PRIORT").val(response.PRIORT);
	jQuery("#SLT_USE_YN").val(response.USE_YN);
	jQuery("#TXT_UPDUSR_SN").val(response.UPDUSR_SN);
	jQuery("#TXT_UPDT_DT").val(dateToFormat(response.UPDT_DT));
	
	btnStatus(1,0,0);
}

// 등록, 수정, 삭제 시 파라메타 값 체크
function IUDcheckValue() {
	if(jQuery("#TXT_PRIVGRP_NAME").val().length == 0)
	{
		alert("권한그룹명을 입력하십시오.");
		jQuery("#TXT_PRIVGRP_NAME").focus();
		return false;
	}
	else if(jQuery("#TXT_PRIORT").val().length == 0)
	{
		alert("우선순위를 입력하십시오.");
		jQuery("#TXT_PRIORT").focus();
		return false;
	}

	return true;
}

// 등록, 수정, 삭제 시 ajax 전송
function IUDdoAjax(actionData, url, uid) {
	var frmData = $("#frmDetail").serialize();
	
	var ajax_set =
    {
		data: frmData + actionData,
        url:url,
        return_fn:function(jdata){doIUDCallback(jdata, uid);}
    }

    ajax(ajax_set, uid);
}

// 등록
function doInsert()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=privgrp.doInsert';
	var url = '../common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid);
}

// 수정
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=privgrp.doUpdate';
	var url = '../common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid);
}

// 삭제
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=privgrp.doDelete';
	var url = '../common/doDelete.do';
	var uid = 'D';
	
	IUDdoAjax(actionData, url, uid);
}

// 등록, 수정, 삭제 결과
function doIUDCallback(jData, iud) {
	var result = jData.isSuccess;
	var msg = "";
	
	if(iud=="I") msg = "등록";
	else if(iud=="U") msg = "수정";
	else if(iud=="D") msg = "삭제";
	
	
	if (result == "SUCC")
	{
		alert(msg + "되었습니다.");
	
		initTableDetail();
		doMenuSearch();
	}
	else if (result == "FAIL")
	{
		if(iud=="D") alert(msg + "가 실패했습니다.");
		else alert(msg + "이 실패했습니다.");
	}
}

