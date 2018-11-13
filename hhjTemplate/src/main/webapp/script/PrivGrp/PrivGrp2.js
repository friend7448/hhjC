// 검색 조건
var search_set2 = 
	{
		url : "../PrivGrp/doSelect2.do", 
		postData : {
			action : 'privgrp.doSelect2',
			privgrp_sn : ''
		},
	};

$(document).ready(function() {
	$("#tbody2").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set2.url,
		postData : search_set2.postData,
		mtype : "POST", 
		colNames : [ '권한ID','프로그램ID', '프로그램명','읽기', '읽기/쓰기'],
		jsonReader : {
			page : 'page',
			total : 'total',
			root : 'rows',
			  cellEdit: true,
			records : function(obj) {
				return obj.length;
			},
			repeatitems : false,
			cell : '',
			id : 'RNUM'
		},
		colModel : [ {name : 'privgrpSn',	index : 'privgrpSn',	width : 90,  	sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'menuId',		index : 'menuId',		width : 90,  	sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'menuName',	index : 'menuName',	width : 100,    sortable : false, 	align : 'center', 	hidden : false},
		             {name : 'inqireYn',	index : 'inqireYn',  	width : 90,		sortable : false, 	align : 'center', 	hidden : false,
		            	 editable: true,
		            	 edittype:'checkbox',
		            	 editoptions: { value:'Y:N', defaultValue: 'N'},
		            	 formatter : 'checkbox',
		            	 formatoptions: { disabled : false }
		             }, 
	            	 {name : 'writeYn',	index : 'writeYn',  	width : 90,		sortable : false, 	align : 'center', 	hidden : false,
		            	 editable: true,
		            	 edittype:'checkbox',
		            	 editoptions: { value:'Y:N', defaultValue: 'N' },
		            	 formatter : 'checkbox',
		            	 formatoptions: { disabled : false }
	            	 }, 
		            	 
		],
//		pager : '#tbodyPager',
		rowNum : 50,
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
	});
	hhj_resizeJqGridWidth('tbody2', 'grid_container2', $('#grid_container2').width());

	btnBind2();
	initTableDetail2();
});

// 권한 선택시 권한 그룹 재검색
function doJqgridSearch2(nId)
{
	search_set2.postData.privgrp_sn = $("#tbody").getCell(nId,'privgrpSn');
	
	$("#tbody2").clearGridData();		
	$("#tbody2").jqGrid('setGridParam', {
		page : 1,
		url : search_set2.url,
		postData : search_set2.postData,
	}
	).trigger("reloadGrid");
	
	$('#btn_update2').css("display", "");
}

//버튼
function btnBind2()
{
	$("#btn_update2").bind("click",doUpdate2);       // 수정
}

// 초기화 상세
function initTableDetail2()
{
		$('#btn_update2').css("display", "none");
}

// 등록, 수정, 삭제 시 ajax 전송
function IUDdoAjax2(url, uid) {
	var info = new Object();
	info.list = $("#tbody2").getRowData();
	var params = JSON.stringify(info);
	
	var ajax_set =
    {
		data: {data:params, "privgrp_sn":search_set2.postData.privgrp_sn},
        url:url,
        return_fn:function(jdata){doIUDCallback2(jdata, uid);}
    }

    ajax(ajax_set, uid);
}

// 수정
function doUpdate2()
{
	var url = '../PrivGrp/doUpdate2.do';
	var uid = 'U';
	
	IUDdoAjax2(url, uid);
}

// 등록, 수정, 삭제 결과
function doIUDCallback2(jData, iud) {
	var result = jData.isSuccess;
	var msg = "";
	
	if(iud=="I") msg = "등록";
	else if(iud=="U") msg = "수정";
	else if(iud=="D") msg = "삭제";
	
	
	if (result == "succ")
	{
		alert(msg + "되었습니다.");
		//적용 후 처리는 여기서..
	}
	else if (result == "fail")
	{
		if(iud=="D") alert(msg + "가 실패했습니다.");
		else alert(msg + "이 실패했습니다.");
	}
}


