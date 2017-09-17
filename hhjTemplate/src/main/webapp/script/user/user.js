// 검색 조건
var search_set = 
	{
		url : "./common/doSelect.do", //추가
		postData : {
			ACTION : 'user.doSelect',
			SEARCH_USER_ID : jQuery('#TXT_SEARCH').val(),
			SEARCH_USER_NAME : '' 		
		},
	};

$(document).ready(function() {
	jQuery("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set.url,
		postData : search_set.postData,
		mtype : "POST", 
		colNames : [ 'NO','SN','사용자ID','사용자명','연락처','이메일'],
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
		             {name : 'USER_SN',		index : 'USER_SN',		width : 100, 	sortable : false,	align : 'center', 	hidden : true},
		             {name : 'USER_ID',		index : 'USER_ID',		width : 50,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'USER_NAME',	index : 'USER_NAME',    width : 50,		sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'CELL',		index : 'CELL', 		width : 80,		sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'EMAIL',		index : 'EMAIL',	    width : 80,    	sortable : false, 	align : 'center',	hidden : false}
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
	jQuery("#TXT_USER_ID").focus();
}

// 초기화 상세
function initTableDetail()
{
	jQuery("#TXT_USER_ID").val("");  		// 사용자ID
	jQuery("#TXT_USER_NAME").val("");       // 이름
	jQuery("#TXT_USER_PW").val("");         // 비번
	jQuery("#TXT_CELL").val("");            // 전번
	jQuery("#TXT_EMAIL").val("");        	// 이메일
	jQuery("#TXT_UPDUSR_SN").val("0");      // 수정자 ID
	jQuery("#TXT_UPDT_DT").val("");         // 수정일시
	
	jQuery("#TXT_USER_ID").prop('readonly', false);
	
	jQuery("#HIDDEN_USER_ID").val(""); //사용자 ID 중복체크용
	
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
	var USER_ID = jQuery("#tbody").getCell(nId,'USER_ID');

    $.ajax({
        type: "POST",
        url: "./common/doSelectDetail.do",
        data: {
        	ACTION : 'user.doSelectDetail',
        	USER_ID : USER_ID
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

	jQuery("#TXT_USER_ID").val(response.USER_ID); 
 	jQuery("#TXT_USER_NAME").val(response.USER_NAME);
	jQuery("#TXT_USER_PW").val(response.USER_PW);
	jQuery("#TXT_CELL").val(response.CELL);
	jQuery("#TXT_EMAIL").val(response.EMAIL);
	jQuery("#TXT_UPDUSR_SN").val(response.UPDUSR_SN);
	jQuery("#TXT_UPDT_DT").val(dateToFormat(response.UPDT_DT));
	
	jQuery("#TXT_USER_ID").prop('readonly', true); 
	
	btnStatus(1,0,0);
}

// 등록, 수정, 삭제 시 파라메타 값 체크
function IUDcheckValue() {
	if(jQuery("#TXT_USER_ID").val().length == 0)
	{
		alert("사용자ID를 입력하십시오.");
		jQuery("#TXT_USER_ID").focus();
		return false;
	}
	else if(jQuery("#TXT_USER_NAME").val().length == 0)
	{
		alert("사용자 이름을 입력하십시오.");
		jQuery("#TXT_USER_NAME").focus();
		return false;
	}
	else if(jQuery("#TXT_USER_PW").val().length == 0)
	{
		alert("비밀번호를 입력하십시오.");
		jQuery("#TXT_USER_PW").focus();
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
	if(jQuery("#HIDDEN_USER_ID").val() != "Y") {
		alert("사용자ID 중복체크 하세요.");
		jQuery("#btn_checkRepetition").focus();
		return;
	}
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=user.doInsert';
	var url = './common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid);
}

// 수정
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=user.doUpdate';
	var url = './common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid);
}

// 삭제
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=user.doDelete';
	var url = './common/doDelete.do';
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

function setSearchValue() {
	if($("#SLT_SEARCH").val() == 1) {
		search_set.postData.SEARCH_USER_ID = jQuery('#TXT_SEARCH').val();
		search_set.postData.SEARCH_USER_NAME = '';
	}
	else if($("#SLT_SEARCH").val() == 2) {
		search_set.postData.SEARCH_USER_ID = '';
		search_set.postData.SEARCH_USER_NAME = jQuery('#TXT_SEARCH').val();
	}
}

/**
 * @returns {Boolean}
 * 함수기능 : 사용자 ID 중복체크
 */
function checkRepetition(){
	var USER_ID = $("#TXT_USER_ID").val();
	
	if(USER_ID == ""){
		alert("사용자 아이디를 입력해주세요");
		$("#TXT_USER_ID").val("");
		$("#TXT_USER_ID").focus();
		return false;
	} 

    $.ajax({
        type: "POST",
        url: "./common/doSelectDetail.do",
        data: {
        	ACTION : 'user.doCheckUserId',
        	USER_ID : USER_ID
        },
        dataType: 'json',
        error: function(){
            alert('조회중 오류가 발생하였습니다.');
        },
        success: function(jdata){
        	if(jdata.response.length == 0) {
        		alert("사용 가능합니다.");
        		jQuery("#HIDDEN_USER_ID").val("Y");
        	}
        	else {
        		alert("사용중인 ID 입니다.");
        		jQuery("#HIDDEN_USER_ID").val("");
        	}
        }
    });
}

