// 검색 조건
var search_set = 
	{
		url : "../common/doSelect.do", //추가
		postData : {
			action : 'user.doSelect',
			srch_user_id : '',
			srch_user_name : '',
			srch_privgrp_sn : ''
		},
	};

function setSearchValue() {
	if($("#slt_search").val() == 1) {
		search_set.postData.srch_user_id = $('#txt_search').val();
		search_set.postData.srch_user_name = '';
	}
	else if($("#slt_search").val() == 2) {
		search_set.postData.srch_user_id = '';
		search_set.postData.srch_user_name = $('#txt_search').val();
	}
	
	search_set.postData.srch_privgrp_sn = $('#srch_privgrp_sn').val();
}

$(document).ready(function() {
	setSearchValue();
	
	$("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set.url,
		postData : search_set.postData,
		mtype : "POST", 
		colNames : [ 'NO','SN', '사용자 권한',  '사용자ID','사용자명','연락처','이메일'],
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
		             {name : 'userSn',		index : 'userSn',		width : 100, 	sortable : false,	align : 'center', 	hidden : true},
		             {name : 'privgrpName',index : 'privgrpName',	width : 50, 	sortable : false,	align : 'center', 	hidden : false},
		             {name : 'userId',		index : 'userId',		width : 50,    	sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'userName',	index : 'userName',    	width : 50,		sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'cell',		index : 'cell', 		width : 80,		sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'email',		index : 'email',	    width : 80,    	sortable : false, 	align : 'center',	hidden : false}
		],
//		pager : '#tbodyPager',
		rowNum : 10,
		page : 1,
		rowList:[10,20,30],
		height: 345, //실제로는 370
//		sortable: true,
//		sortname:'user_name',
//		sortorder:"asc",
		gridview: true,
		rownumbers: true,
	    rownumWidth : 40,
		viewrecords : true,
		loadComplete: function(data) {
			initPage("tbody", "paginate", data);
		},
		onSelectRow: function (nId) {
			detail(nId);
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
	$("#btn_search").bind("click",function() { 	// 검색
		doSearch(1); 
	}); 		 // 검색
	$("#btn_insert").bind("click",doInsert);       // 등록
	$("#btn_update").bind("click",doUpdate);       // 수정
	$("#btn_delete").bind("click",doDelete);       // 삭제
}

// 초기화
function doInit()
{
	initTableDetail();
	$("#user_id").focus();
}

// 초기화 상세
function initTableDetail()
{
	$("#user_id").val("");  		// 사용자ID
	$("#user_name").val("");       // 이름
	$("#user_pw").val("");         // 비번
	$("#cell").val("");            // 전번
	$("#email").val("");        	// 이메일
	$("#updusr_sn").val("0");      // 수정자 ID
	$("#updt_dt").val("");         // 수정일시
	$("#privgrp_sn").val("");  	// 사용자 권한
	
	$("#user_id").prop('readonly', false);
	
	$("#hidden_user_id").val(""); //사용자 ID 중복체크용
	$("#user_sn").val(""); //사용자 ID 중복체크용
		
	btnStatus(0,1,1);
}

//리스트 조회 
function doSearch(page)
{
	setSearchValue();
	
	$("#tbody").clearGridData();		
	$("#tbody").jqGrid('setGridParam', {
		page : page,
		url : search_set.url,
		postData : search_set.postData,
	}
	).trigger("reloadGrid");
	
	initTableDetail();
}

// 리스트 상세정보 조회
function detail(nId)
{
	var user_sn = $("#tbody").getCell(nId,'userSn');

    $.ajax({
        type: "POST",
        url: "../User/doSelectDetail.do",
        data: {
        	action : 'user.doSelectDetail',
        	user_sn : user_sn
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
	var response = jData.response;

	initTableDetail();

	$("#user_sn").val(response.userSn); 
	$("#user_id").val(response.userId); 
 	$("#user_name").val(response.userName);
	$("#user_pw").val(response.userPw);
	$("#cell").val(response.cell);
	$("#email").val(response.email);
	$("#updusr_sn").val(response.updusrSn);
	$("#updt_dt").val(dateToFormat(response.updtDt));
	$("#privgrp_sn").val(response.privgrpSn);
	
	$("#user_id").prop('readonly', true); 
	
	btnStatus(1,0,0);
}

// 등록, 수정, 삭제 시 파라메타 값 체크
function IUDcheckValue() {
	if($("#user_id").val().length == 0)
	{
		alert("사용자ID를 입력하십시오.");
		$("#user_id").focus();
		return false;
	}
	else if($("#user_name").val().length == 0)
	{
		alert("사용자 이름을 입력하십시오.");
		$("#user_name").focus();
		return false;
	}
	else if($("#user_pw").val().length == 0)
	{
		alert("비밀번호를 입력하십시오.");
		$("#user_pw").focus();
		return false;
	}
	else if($("#privgrp_sn").val() == '')
	{
		alert("권한그룹을 선택하십시오.");
		$("#privgrp_sn").focus();
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
	if($("#hidden_user_id").val() != "Y") {
		alert("사용자ID 중복체크 하세요.");
		$("#btn_checkRepetition").focus();
		return;
	}
	if(!IUDcheckValue()) return;
	
	var actionData = '';
	var url = '../User/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 수정
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '';
	var url = '../User/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 삭제
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '';
	var url = '../User/doDelete.do';
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
//		doSearch($("#tbody").getGridParam("page"));
//	}
//	else if (result == "fail")
//	{
//		if(iud=="D") alert(msg + "가 실패했습니다.");
//		else alert(msg + "이 실패했습니다.");
//	}
//}

/**
 * @returns {Boolean}
 * 함수기능 : 사용자 ID 중복체크
 */
function checkRepetition(){
	var user_id = $("#user_id").val();
	
	if(user_id == ""){
		alert("사용자 아이디를 입력해주세요");
		$("#user_id").val("");
		$("#user_id").focus();
		return false;
	} 

    $.ajax({
        type: "POST",
        url: "../common/doSelectDetail.do",
        data: {
        	action : 'user.doCheckUserId',
        	user_id : user_id
        },
        dataType: 'json',
        error: function(){
            alert('조회중 오류가 발생하였습니다.');
        },
        success: function(jdata){
        	if(jdata.response.length == 0) {
        		alert("사용 가능합니다.");
        		$("#hidden_user_id").val("Y");
        	}
        	else {
        		alert("사용중인 ID 입니다.");
        		$("#hidden_user_id").val("");
        	}
        }
    });
}

