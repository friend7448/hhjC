// 검색 조건
var search_set = 
	{
		url : "../common/doSelect.do", //추가
		postData : {
			action : 'privgrp.doSelect',
			srch_privgrp_name : '',
			srch_use_yn : '' 		
		},
	};

function setSearchValue() {
		search_set.postData.srch_privgrp_name = $('#srch_privgrp_name').val();
		search_set.postData.srch_use_yn = $('#srch_use_yn').val();
}

$(document).ready(function() {
	setSearchValue();
	
	$("#tbody").jqGrid({
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
		colModel : [ {name : 'rnum',	   	index : 'rnum',		    width : 80, 	sortable : false,	align : 'center', 	hidden : true},
		             {name : 'privgrpSn',	index : 'privgrpSn',	width : 90,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'privgrpName',	index : 'privgrpName',	width : 90,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'useYn',		index : 'useYn',  		width : 50,		sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'priort',		index : 'priort', 		width : 50,		sortable : false, 	align : 'center', 	hidden : false}
		],
//		pager : '#tbodyPager',
		rowNum : 5,
		rowList:[10,20,30],
		height: 175,
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
	$("#btn_init").bind("click",doInit);			// 초기화
	$("#btn_search").bind("click",doSearch);	   // 검색
	$("#btn_insert").bind("click",doInsert);       // 등록
	$("#btn_update").bind("click",doUpdate);       // 수정
	$("#btn_delete").bind("click",doDelete);       // 삭제
}

// 초기화
function doInit()
{
	initTableDetail();
	$("#privgrp_name").focus();
}

// 초기화 상세
function initTableDetail()
{
	$("#privgrp_sn").val("");
	
	$("#privgrp_name").val("");  		// 사용자ID
	$("#privgrp_desc").val("");       // 이름
	$("#priort").val("0");         // 비번
	$("#use_yn").val("Y");            // 전번
	$("#updusr_sn").val("0");      // 수정자 ID
	$("#updt_dt").val("");         // 수정일시
	
	btnStatus(0,1,1);
}

//리스트 조회
function doSearch()
{
	setSearchValue();
	
	$("#tbody").clearGridData();		
	$("#tbody").jqGrid('setGridParam', {
		page : 1,
		url : search_set.url,
		postData : search_set.postData,
	}
	).trigger("reloadGrid");
	
	initTableDetail();
	
	// 검색 버튼 클릭 시, 오른쪽 메뉴 퀀한 리셋
	doJqgridSearch2(0);
}

// 리스트 상세정보 조회
function detail(nId)
{
	var privgrp_sn = $("#tbody").getCell(nId,'privgrpSn');
	
    $.ajax({
        type: "POST",
        url: "../common/doSelectDetail.do",
        data: {
        	action : 'privgrp.doSelectDetail',
        	privgrp_sn : privgrp_sn
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
 	$("#privgrp_sn").val(response.privgrpSn);
	$("#privgrp_name").val(response.privgrpName);
	$("#privgrp_desc").val(response.privgrpDesc);
	$("#priort").val(response.priort);
	$("#use_yn").val(response.useYn);
	$("#updusr_sn").val(response.updusrSn);
	$("#updt_dt").val(dateToFormat(response.updtDt));
	
	btnStatus(1,0,0);
}

// 등록, 수정, 삭제 시 파라메타 값 체크
function IUDcheckValue() {
	if($("#privgrp_name").val().length == 0)
	{
		alert("권한그룹명을 입력하십시오.");
		$("#privgrp_name").focus();
		return false;
	}
	else if($("#priort").val().length == 0)
	{
		alert("우선순위를 입력하십시오.");
		$("#priort").focus();
		return false;
	}

	return true;
}

// 등록, 수정, 삭제 시 ajax 전송
//function IUDdoAjax(actionData, url, uid) {
//	var frmData = $("#frmDetail").serialize();
//	
//	var ajax_set =
//    {
//		data: frmData + actionData,
//        url:url,
//        return_fn:function(jdata){doIUDCallback(jdata, uid);}
//    }
//
//    ajax(ajax_set, uid);
//}

// 등록
function doInsert()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&action=privgrp.doInsert';
	var url = '../common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 수정
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&action=privgrp.doUpdate';
	var url = '../common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 삭제
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&action=privgrp.doDelete';
	var url = '../common/doDelete.do';
	var uid = 'D';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 등록, 수정, 삭제 결과
//function doIUDCallback(jData, iud) {
//	var result = jData.isSuccess;
//	var msg = "";
//	
//	if(iud=="I") msg = "등록";
//	else if(iud=="U") msg = "수정";
//	else if(iud=="D") msg = "삭제";
//	
//	
//	if (result == "succ")
//	{
//		alert(msg + "되었습니다.");
//	
//		initTableDetail();
//		doSearch();
//	}
//	else if (result == "fail")
//	{
//		if(iud=="D") alert(msg + "가 실패했습니다.");
//		else alert(msg + "이 실패했습니다.");
//	}
//}

