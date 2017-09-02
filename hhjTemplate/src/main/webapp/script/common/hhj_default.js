$(function(){
});

/********************************************************************************
 * 버튼상태 설정
 * btn_no: 버튼 아이디 
 * btn_insert, btn_update, btn_delete 파라미터: 1:비활성화, 0:활성화
 *********************************************************************************/
function btnStatus(btn_insert,btn_update,btn_delete)
{
	if(btn_insert == '1') 
	{
		jQuery('#btn_insert').css("display", "none");
	}
	else
	{
		jQuery('#btn_insert').css("display", "");
	}

	if(btn_update == '1')
	{
		jQuery('#btn_update').css("display", "none");
	}
	else
	{
		jQuery('#btn_update').css("display", "");
	}

	if(btn_delete == '1')
	{
		jQuery('#btn_delete').css("display", "none");
	}
	else
	{
		jQuery('#btn_delete').css("display", "");
	}
}

//ajaxSubmit 등록, 수정, 삭제 등 트랜젝션 발생 시 사용
function ajaxSubmit(ajax_set, c_firm) {
        
    if (c_firm != null && c_firm != "") {
    	submit_ingView(true);
        if (!confirm(c_firm)) {
        	submit_ingView(false);
            return;
        }
    }
    
    $(ajax_set.form_name).ajaxSubmit({ 
        type:"POST",
        dataType:'json',
        url:ajax_set.url, 
        contentType : "application/x-www-form-urlencoded;charset=UTF-8",
        async:false,
        beforeSubmit : function() { submit_ingView(true);},
        complete: function() { submit_ingView(false);},
        error: function(){            
            alert('처리중 오류가 발생하였습니다.');
            submit_ingView(false);
        },
        success:ajax_set.return_fn
    });
}

//등록, 수정, 삭제 등 트랜젝션 발생 시 사용
function ajax(ajax_set, c_firm) {
    if (c_firm != null && c_firm != "") {
    	submit_ingView(true);
    	
    	var msg = "";
    	if(c_firm=="I") msg = "등록 하시겠습니까?";
    	else if(c_firm=="U") msg = "수정 하시겠습니까?";
    	else if(c_firm=="D") msg = "삭제 하시겠습니까?";
    	
        if (!confirm(msg)) {
        	submit_ingView(false);
            return;
        }
    }
    
    $.ajax({ 
        type:"POST",
        dataType:'json',
        data:ajax_set.data,
        url:ajax_set.url, 
        contentType : "application/x-www-form-urlencoded;charset=UTF-8",
        async:false,
        beforeSubmit : function() { submit_ingView(true);},
        complete: function() { submit_ingView(false);},
        error: function(){            
            alert('처리중 오류가 발생하였습니다.');
            submit_ingView(false);
        },
        success:ajax_set.return_fn
    });
}

//저장등 do_submitIUD 발생시 진행중 표시 화면
// hhj - 추후에 이미지 경로 잡고 체크!
function submit_ingView(flag){
    
    if (flag) {
        var h = $("body").height();
        $("#wini_submit_ing").css({height:h});
        $("#wini_submit_ing").show();
        $("#wini_window_mask_cont").show();
    } else {
        $("#wini_submit_ing").hide();
        $("#wini_window_mask_cont").hide();
    }
}