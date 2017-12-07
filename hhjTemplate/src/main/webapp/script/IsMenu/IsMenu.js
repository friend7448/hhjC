// search param
var search_set = 
	{
		url : "../common/doSelect.do",
		postData : {
			ACTION : 'is_menu.doSelect'
			,S_MENU_ID : ''
			,S_MENU_NAME : ''
			,S_UP_MENU_ID : ''
			,S_PROGRM_URL : ''
			,S_SORT_ORDER : ''
			,S_USE_YN : ''
			,S_UPDT_DT : ''
			,S_UPDUSR_SN : ''
		},
	};


function setSearchValue() {
	search_set.postData.S_MENU_ID = jQuery('#S_MENU_ID').val();
	search_set.postData.S_MENU_NAME = jQuery('#S_MENU_NAME').val();
	search_set.postData.S_UP_MENU_ID = jQuery('#S_UP_MENU_ID').val();
	search_set.postData.S_PROGRM_URL = jQuery('#S_PROGRM_URL').val();
	search_set.postData.S_SORT_ORDER = jQuery('#S_SORT_ORDER').val();
	search_set.postData.S_USE_YN = jQuery('#S_USE_YN').val();
	search_set.postData.S_UPDT_DT = jQuery('#S_UPDT_DT').val();
	search_set.postData.S_UPDUSR_SN = jQuery('#S_UPDUSR_SN').val();
}

$(document).ready(function() {
	setSearchValue();
	
	jQuery("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set.url,
		postData : search_set.postData,
		mtype : "POST", 
		colNames : [ 'NO','MENU_ID','MENU_NAME','UP_MENU_ID','PROGRM_URL','SORT_ORDER','USE_YN','UPDT_DT','UPDUSR_SN'],
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
		colModel : [ {name : 'RNUM',	   	index : 'RNUM',		    width : 0, 		sortable : true,	align : 'center', 	hidden : true}
					,{name : 'MENU_ID',		index : 'MENU_ID',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'MENU_NAME',		index : 'MENU_NAME',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'UP_MENU_ID',		index : 'UP_MENU_ID',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'PROGRM_URL',		index : 'PROGRM_URL',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'SORT_ORDER',		index : 'SORT_ORDER',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'USE_YN',		index : 'USE_YN',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'UPDT_DT',		index : 'UPDT_DT',		width : 0,		align : 'center',		hidden : false}  
					,{name : 'UPDUSR_SN',		index : 'UPDUSR_SN',		width : 0,		align : 'center',		hidden : false}  
		],
//		pager : '#tbodyPager',
		rowNum : 10,
		rowList:[10,20,30],
		height: 370,
		sortable:true,
//		sortname:'AA',
//		sortorder:"desc",
		gridview: true,
//		caption : 'caption',
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

// button binding
function btnBind()
{
	jQuery("#btn_init").bind("click",doInit);		
	jQuery("#btn_search").bind("click",doSearch);
	jQuery("#btn_insert").bind("click",doInsert);    
	jQuery("#btn_update").bind("click",doUpdate);    
	jQuery("#btn_delete").bind("click",doDelete);    
}

// init
function doInit()
{
	initTableDetail();
	jQuery("#MENU_ID").focus();
}

// init - Detail
function initTableDetail()
{
	jQuery("#MENU_ID").val("");
	jQuery("#MENU_NAME").val("");
	jQuery("#UP_MENU_ID").val("");
	jQuery("#PROGRM_URL").val("");
	jQuery("#SORT_ORDER").val("999");
	jQuery("#USE_YN").val("Y");
	jQuery("#UPDT_DT").val("");
	jQuery("#UPDUSR_SN").val("0");

	btnStatus(0,1,1);
}

// doSearch
function doSearch()
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

// list  Detail
function detail(nId)
{
	var MENU_ID = jQuery("#tbody").getCell(nId,'MENU_ID');

    $.ajax({
        type: "POST",
        url: "../common/doSelectDetail.do",
        data: {
        	ACTION : 'is_menu.doSelectDetail'
        	, MENU_ID : MENU_ID
        },
        dataType: 'json',
        error: function(){
            alert('ì¡°íì¤ ì¤ë¥ê° ë°ìíììµëë¤.');
        },
        success: function(jdata){doDetailCallback(jdata);}
    });
}

// list - Detail Callback
function doDetailCallback(jData)
{
	var response = jData.response[0];

	initTableDetail();

	jQuery("#MENU_ID").val(response.MENU_ID);
	jQuery("#MENU_NAME").val(response.MENU_NAME);
	jQuery("#UP_MENU_ID").val(response.UP_MENU_ID);
	jQuery("#PROGRM_URL").val(response.PROGRM_URL);
	jQuery("#SORT_ORDER").val(response.SORT_ORDER);
	jQuery("#USE_YN").val(response.USE_YN);
	jQuery("#UPDT_DT").val(dateToFormat(response.UPDT_DT));
	jQuery("#UPDUSR_SN").val(response.UPDUSR_SN);

	btnStatus(1,0,0);
}

// not null check
function IUDcheckValue() {
	if(jQuery("#MENU_ID").val().length == 0)
	{
		alert("MENU_ID ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#MENU_ID").focus();
		return false;
	}
	else if(jQuery("#MENU_NAME").val().length == 0)
	{
		alert("MENU_NAME ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#MENU_NAME").focus();
		return false;
	}
	else if(jQuery("#SORT_ORDER").val().length == 0)
	{
		alert("SORT_ORDER ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#SORT_ORDER").focus();
		return false;
	}
	else if(jQuery("#USE_YN").val().length == 0)
	{
		alert("USE_YN ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#USE_YN").focus();
		return false;
	}

	return true;
}

// iud ajax
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

// insert
function doInsert()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=is_menu.doInsert';
	var url = '../common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid);
}

// update
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=is_menu.doUpdate';
	var url = '../common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid);
}

// delete
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=is_menu.doDelete';
	var url = '../common/doDelete.do';
	var uid = 'D';
	
	IUDdoAjax(actionData, url, uid);
}

// iud callback
function doIUDCallback(jData, iud) {
	var result = jData.isSuccess;
	var msg = "";
	
	if(iud=="I") msg = "ë±ë¡";
	else if(iud=="U") msg = "ìì ";
	else if(iud=="D") msg = "ì­ì ";
	
	
	if (result == "SUCC")
	{
		alert(msg + "ëììµëë¤.");
	
		initTableDetail();
		doSearch();
	}
	else if (result == "FAIL")
	{
		if(iud=="D") alert(msg + "ê° ì¤í¨íìµëë¤.");
		else alert(msg + "ì´ ì¤í¨íìµëë¤.");
	}
}