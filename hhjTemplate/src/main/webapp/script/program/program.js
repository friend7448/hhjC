$(document).ready(function() {
	jQuery("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
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
		colModel : [ {name : 'RNUM',	   	index : 'RNUM',		    width : 80, 	sortable : false,	align : 'center', 	hidden : true},
		             {name : 'MENU_ID',		index : 'MENU_ID',		width : 100, 	sortable : false,	align : 'center', 	hidden : false},
		             {name : 'UP_MENU_ID',	index : 'UP_MENU_ID',	width : 100,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'MENU_NAME',	index : 'MENU_NAME',    width : 220,	sortable : false, 	align : 'left', 	hidden : false},
		             {name : 'PROGRM_URL',	index : 'PROGRM_URL',   width : 220,	sortable : false, 	align : 'left', 	hidden : false},
		             {name : 'SORT_ORDER',	index : 'SORT_ORDER',   width : 80,		sortable : false, 	align : 'center',	hidden : false},
		             {name : 'USE_YN',		index : 'USE_YN',	    width : 80,    	sortable : false, 	align : 'center',	hidden : false}
		],
//		pager : '#tbodyPager',
		rowNum : 2,
		rowList:[10,20,30],
		height: 370,
		sortable:true,
		sortname:'AA',
		sortorder:"desc",
		gridview: true,
//		caption : '프로그램정보', //제목
//		autowidth : true,
		rownumbers: true,
	    rownumWidth : 40,
	    
		viewrecords : true,
		loadComplete: function(data) {
			initPage("tbody", "paginate", data);
		},
//		onPaging: function (action) {
//			paging(action);
//		},
		onSelectRow: function (nId) {
			detail(nId);
		}
	});

	doMenuSearch();
	btnBind();
	
	resizeJqGridWidth('tbody', 'grid_container', $('#grid_container').width(), true);
});

/*
 * @param string grid_id 사이즈를 변경할 그리드의 아이디
 * @param string div_id 그리드의 사이즈의 기준을 제시할 div 의 아이디
 * @param string width 그리드의 초기화 width 사이즈
  * @param boolean tf 그리드의 리사이즈 여부(true/false)
 */
 function resizeJqGridWidth(grid_id, div_id, width, tf){
    // window에 resize 이벤트를 바인딩 한다. 
    $(window).bind('resize', function() {
    var resizeWidth = width; //jQuery-ui의 padding 설정 및 border-width값때문에 넘치는 걸 빼줌.
    // 그리드의 width 초기화
    $('#' + grid_id).setGridWidth(width, true);
	// 그리드의 width를 div 에 맞춰서 적용
    $('#' + grid_id).setGridWidth($('#' + div_id).width() , true); //Resized to new width as per window
     }).trigger('resize');
 }

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
	jQuery("#TXT_MENU_ID").focus();
}

// 초기화 상세
function initTableDetail()
{
	jQuery("#SLT_UP_MENU_ID").val("");  	// 상위프로그램명
	jQuery("#TXT_MENU_ID").val("");           	// 프로그램 ID
	jQuery("#TXT_MENU_NAME").val("");         	// 프로그램명
	jQuery("#TXT_PROGRM_URL").val("");             	// 프로그램 URL
	jQuery("#TXT_SORT_ORDER").val("99");        	// 프로그램 순서
	jQuery("#SLT_USE_AT").val("Y");        			// 사용여부
	jQuery("#TXT_UPDUSR_SN").val("0");                	// 수정자 ID
	jQuery("#TXT_UPDT_DT").val("");              	// 수정일시
	
	jQuery("#TXT_MENU_ID").prop('readonly', false);
	
	btnStatus(0,1,1);
}

// 리스트 조회
function doMenuSearch()
{
	jQuery("#tbody").clearGridData();		
	jQuery("#tbody").jqGrid('setGridParam', {
		url : "./common/doSelect.do",
		page : 1,
		postData : {
			ACTION : 'program.doSelect',
			MENU_ID : jQuery('#TXT_SEARCH_MENU_ID').val(), 		// 프로그램 ID
			MENU_NAME : jQuery('#TXT_SEARCH_MENU_NAME').val()	// 프로그램명
		}
	}
	).trigger("reloadGrid");
	
	initTableDetail();
}

// 리스트 상세정보 조회
function detail(nId)
{
	var MENU_ID = jQuery("#tbody").getCell(nId,'MENU_ID');

    $.ajax({
        type: "POST",
        url: "./common/doSelectDetail.do",
        data: {
        	ACTION : 'program.doSelectDetail',
        	MENU_ID : MENU_ID
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

	jQuery("#SLT_UP_MENU_ID").val(response.UP_MENU_ID); 
 	jQuery("#TXT_MENU_ID").val(response.MENU_ID);
 	jQuery("#TXT_MENU_NAME").val(response.MENU_NAME);
	jQuery("#TXT_PROGRM_URL").val(response.PROGRM_URL);
	jQuery("#TXT_SORT_ORDER").val(response.SORT_ORDER);
	jQuery("#SLT_USE_AT").val(response.USE_YN);
	jQuery("#TXT_UPDUSR_SN").val(response.UPDUSR_SN);
	jQuery("#TXT_UPDT_DT").val(dateToFormat(response.UPDT_DT));
	
	jQuery("#TXT_MENU_ID").prop('readonly', true); 
	
	btnStatus(1,0,0);
}

// 등록, 수정, 삭제 시 파라메타 값 체크
function IUDcheckValue() {
	if(jQuery("#TXT_MENU_ID").val().length == 0)
	{
		alert("프로그램ID를 입력하십시오.");
		jQuery("#TXT_MENU_ID").focus();
		return false;
	}
	else if(jQuery("#TXT_MENU_NAME").val().length == 0)
	{
		alert("프로그램명을 입력하십시오.");
		jQuery("#TXT_MENU_NAME").focus();
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
	
	var actionData = '&ACTION=program.doInsert';
	var url = './common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid);
}

// 수정
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=program.doUpdate';
	var url = './common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid);
}

// 삭제
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=program.doDelete';
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