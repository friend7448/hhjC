// 검색 조건
var search_set = 
	{
		url : "../common/doSelect.do", //추가
		postData : {
			action : 'program.doSelect',
			srch_menu_id : '', 		// 프로그램 ID
			srch_menu_name : ''	// 프로그램명
		},
	};

function setSearchValue() {
	search_set.postData.srch_menu_id = $('#srch_menu_id').val();
	search_set.postData.srch_menu_name = $('#srch_menu_name').val();
}

$(document).ready(function() {
	setSearchValue();
	
	$("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set.url,
		postData : search_set.postData,
		mtype : "POST", 
		colNames : [ 'NO','프로그램ID','상위프로그램ID','프로그램명','프로그램 주소','정렬순서','사용여부'],
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
		colModel : [ {name : 'rnum',	   	index : 'rnum',		    width : 0, 		sortable : false,	align : 'center', 	hidden : true},
		             {name : 'menuId',		index : 'menuId',		width : 100, 	sortable : false,	align : 'center', 	hidden : false},
		             {name : 'upMenuId',	index : 'upMenuId',   width : 100,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'menuName',	index : 'menuName',    width : 220,	sortable : false, 	align : 'left', 	hidden : false},
		             {name : 'progrmUrl',	index : 'progrmUrl',   width : 220,	sortable : false, 	align : 'left', 	hidden : false},
		             {name : 'sortOrder',	index : 'sortOrder',   width : 80,		sortable : false, 	align : 'center',	hidden : false},
		             {name : 'useYn',		index : 'useYn',	    width : 80,    	sortable : false, 	align : 'center',	hidden : false}
		],
//		pager : '#tbodyPager',
		rowNum : 10,
		rowList:[10,20,30],
		height: 345,
		sortable: true,
		sortname:'menu_id',
		sortorder:"asc",
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
	$("#menu_id").focus();
}

// 초기화 상세
function initTableDetail()
{
	$("#up_menu_id").val("");  	// 상위프로그램명
	$("#menu_id").val("");           	// 프로그램 ID
	$("#menu_name").val("");         	// 프로그램명
	$("#progrm_url").val("");             	// 프로그램 URL
	$("#sort_order").val("999");        	// 프로그램 순서
	$('#use_at option:eq(0)').attr('selected', 'selected')
	$("#updusr_sn").val("0");                	// 수정자 ID
	$("#updt_dt").val("");              	// 수정일시
	
	$("#menu_id").prop('readonly', false);
	
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
	var menu_id = $("#tbody").getCell(nId,'menuId');

    $.ajax({
        type: "POST",
        url: "../common/doSelectDetail.do",
        data: {
        	action : 'program.doSelectDetail',
        	menu_id : menu_id
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

	$("#up_menu_id").val(response.upMenuId); 
 	$("#menu_id").val(response.menuId);
 	$("#menu_name").val(response.menuName);
	$("#progrm_url").val(response.progrmUrl);
	$("#sort_order").val(response.sortOrder);
	$("#use_at").val(response.useYn);
	$("#updusr_sn").val(response.updusrSn);
	$("#updt_dt").val(dateToFormat(response.updtDt));
	
	$("#menu_id").prop('readonly', true); 
	
	btnStatus(1,0,0);
}

// 등록, 수정, 삭제 시 파라메타 값 체크
function IUDcheckValue() {
	if($("#menu_id").val().length == 0)
	{
		alert("프로그램ID를 입력하십시오.");
		$("#menu_id").focus();
		return false;
	}
	else if($("#menu_name").val().length == 0)
	{
		alert("프로그램명을 입력하십시오.");
		$("#menu_name").focus();
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
	
	var actionData = '&action=program.doInsert';
	var url = '../common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 수정
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&action=program.doUpdate';
	var url = '../common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid, "#frmDetail");
}

// 삭제
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&action=program.doDelete';
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
//		doSearch($("#tbody").getGridParam("page"));
//	}
//	else if (result == "fail")
//	{
//		if(iud=="D") alert(msg + "가 실패했습니다.");
//		else alert(msg + "이 실패했습니다.");
//	}
//}