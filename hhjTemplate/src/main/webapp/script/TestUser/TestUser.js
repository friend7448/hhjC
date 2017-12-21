// search param
var search_set = 
	{
		url : "../common/doSelect.do",
		postData : {
			ACTION : 'test_user.doSelect'
			,S_USER_ID : ''
			,S_USER_NAME : ''
			,S_USER_PW : ''
			,S_CELL : ''
			,S_EMAIL : ''
			,S_UPDT_DT : ''
		},
	};


function setSearchValue() {
	search_set.postData.S_USER_ID = jQuery('#S_USER_ID').val();
	search_set.postData.S_USER_NAME = jQuery('#S_USER_NAME').val();
	search_set.postData.S_USER_PW = jQuery('#S_USER_PW').val();
	search_set.postData.S_CELL = jQuery('#S_CELL').val();
	search_set.postData.S_EMAIL = jQuery('#S_EMAIL').val();
	search_set.postData.S_UPDT_DT = jQuery('#S_UPDT_DT').val();
}

$(document).ready(function() {
	setSearchValue();
	
	jQuery("#tbody").jqGrid({
		styleUI : "Bootstrap",
		datatype : "json",
		url : search_set.url,
		postData : search_set.postData,
		mtype : "POST", 
		colNames : [ 'NO','일련번호','아이디','이름','비밀번호','전화번호','e-mail','등록일시'],
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
		colModel : [ {name : 'RNUM',	   	index : 'RNUM',		    width : 0, 		sortable : false,	align : 'center', 	hidden : true}
					,{name : 'USER_SN',		index : 'USER_SN',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
					,{name : 'USER_ID',		index : 'USER_ID',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
					,{name : 'USER_NAME',		index : 'USER_NAME',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
					,{name : 'USER_PW',		index : 'USER_PW',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
					,{name : 'CELL',		index : 'CELL',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
					,{name : 'EMAIL',		index : 'EMAIL',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
					,{name : 'UPDT_DT',		index : 'UPDT_DT',		width : 0,	sortable : false,	align : 'center',		hidden : false}  
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
	jQuery("#USER_ID").focus();
}

// init - Detail
function initTableDetail()
{
	jQuery("#USER_SN").prop('readonly', false);
	jQuery("#USER_ID").val("");
	jQuery("#USER_NAME").val("");
	jQuery("#USER_PW").val("");
	jQuery("#CELL").val("");
	jQuery("#EMAIL").val("");
	jQuery("#UPDT_DT").val("");
	jQuery("#UPDT_DT").prop('readonly', true);
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
    $.ajax({
        type: "POST",
        url: "../common/doSelectDetail.do",
        data: {
        	ACTION : 'test_user.doSelectDetail'
        	, USER_SN : jQuery("#tbody").getCell(nId,'USER_SN')
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

	jQuery("#USER_SN").val(response.USER_SN);
	jQuery("#USER_SN").prop('readonly', true);
	jQuery("#USER_ID").val(response.USER_ID);
	jQuery("#USER_NAME").val(response.USER_NAME);
	jQuery("#USER_PW").val(response.USER_PW);
	jQuery("#CELL").val(response.CELL);
	jQuery("#EMAIL").val(response.EMAIL);
	jQuery("#UPDT_DT").val(dateToFormat(response.UPDT_DT));

	btnStatus(1,0,0);
}

// not null check
function IUDcheckValue() {
	if(jQuery("#USER_ID").val().length == 0)
	{
		alert("USER_ID ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#USER_ID").focus();
		return false;
	}
	else if(jQuery("#USER_NAME").val().length == 0)
	{
		alert("USER_NAME ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#USER_NAME").focus();
		return false;
	}
	else if(jQuery("#USER_PW").val().length == 0)
	{
		alert("USER_PW ë¥¼ ìë ¥íì­ìì¤.");
		jQuery("#USER_PW").focus();
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
	
	var actionData = '&ACTION=test_user.doInsert';
	var url = '../common/doInsert.do';
	var uid = 'I';
	
	IUDdoAjax(actionData, url, uid);
}

// update
function doUpdate()
{	
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=test_user.doUpdate';
	var url = '../common/doUpdate.do';
	var uid = 'U';
	
	IUDdoAjax(actionData, url, uid);
}

// delete
function doDelete()
{
	if(!IUDcheckValue()) return;
	
	var actionData = '&ACTION=test_user.doDelete';
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