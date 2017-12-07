$(function(){
});

/**
 * 날짜포맷변환 ex) 길이가 8자리인 경우 xxxxxxxx = > xxxx.xx.xx 길이가 14자리인 경우 xxxxxxxxxxxxxx = >
 * xxxx.xx.xx xx:xx:xx
 */
function dateToFormat(parm)
{
	var return_val = "";
	var parm_leng = parm.length;
	
	if(parm_leng == 8)
	{
		return_val = parm.substr(0,4) + "-" + parm.substr(4,2) + "-" + parm.substr(6,2); 
	}
	else if(parm_leng == 14)
	{
		return_val = parm.substr(0,4) + "-" + parm.substr(4,2) + "-" + parm.substr(6,2) + " " + parm.substr(8,2) + ":" + parm.substr(10,2) + ":" + parm.substr(12,2);	
	}
	
	return return_val;
}

/**
 * @param obj :
 *            this (고정)
 * @param type :
 *            int => 정수(소수 입력 안 됨) / -int => -정수(소수 입력 안 됨) / float => 실수(소수 입력
 *            가능) / -float => -실수 (소수 입력 가능)
 * @param tlen :
 *            tlen => 총 자리수 (정수 입력 시 tlen에서 flen 뺀 결과가 정수자리수)
 * @param flen :
 *            소수 자리수 (~까지)
 * @param comma :
 *            Y => 세자리마다 콤마(,) 자동입력 N => 콤마 미적용
 * @return <input type="" onkeyup="check_number(this,'int',5,2,'Y');" />
 */
function check_number(obj, type, tlen, flen, comma){
	var returnVal = String(obj.value);
	var regexp = /[^-\.0-9]/g;
	var repexp = "";
	var len = 2;
	var ilen = 0;

	if(flen != undefined){
		len = flen;
	}
	
	ilen = tlen - flen;

	returnVal = returnVal.replace(regexp, repexp);
	
	if(returnVal.split(".").length > 1){
		returnVal = returnVal.split(".")[0].substr(0,ilen) + "." + returnVal.split(".")[1].substr(0, len);
	}else{
		returnVal = returnVal.substring(0,ilen);
	}
	
	switch(type){
		case "int" : regexp = /[^0-9]/g; break;
		case "float" : regexp = /^(-?)([0-9]*)(\.?)([^0-9]*)([0-9]*)([^0-9]*)/; break;
		case "-int" : regexp = /^(-?)([0-9]*)([^0-9]*)([0-9]*)([^0-9]*)/; break;
		case "-float" : regexp = /^(-?)([0-9]*)(\.?)([^0-9]*)([0-9]*)([^0-9]*)/; break;
		default : regexp = /[^0-9]/g; break;
	}

	switch(type){
		case "int" : repexp = ""; break;
		case "float" : repexp = "$2$3$5"; break;
		case "-int" : repexp = "$1$2$4"; break;
		case "-float" : repexp = "$1$2$3$5"; break;
		default : repexp = /[^0-9]/g; break; 
	}
	
	returnVal = returnVal.replace(regexp, repexp);

	
	if(comma == "Y"){
		var str = "" + returnVal.replace(/,/gi,'');
		var regx = new RegExp(/(-?\d+)(\d{3})/);
		var bExists = str.indexOf(".",0);
		var strArr = str.split('.');
		 
		while(regx.test(strArr[0])){
	 		strArr[0] = strArr[0].replace(regx,"$1,$2");
	 	}
	 
	 	if (bExists > -1){
			obj.value = strArr[0] + "." + strArr[1];
		}else{
	 		obj.value = strArr[0];
	 	}
			
	}else{
		obj.value =  returnVal;
	}
}	


 
/*******************************************************************************
 * 버튼상태 설정 btn_no: 버튼 아이디 btn_insert, btn_update, btn_delete 파라미터: 1:비활성화, 0:활성화
 ******************************************************************************/
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

// ajaxSubmit 등록, 수정, 삭제 등 트랜젝션 발생 시 사용
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

// 등록, 수정, 삭제 등 트랜젝션 발생 시 사용
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

// 저장등 do_submitIUD 발생시 진행중 표시 화면
// hhj - 추후에 이미지 경로 잡고 체크!
function submit_ingView(flag){
//    
//    if (flag) {
//        var h = $("body").height();
//        $("#wini_submit_ing").css({height:h});
//        $("#wini_submit_ing").show();
//        $("#wini_window_mask_cont").show();
//    } else {
//        $("#wini_submit_ing").hide();
//        $("#wini_window_mask_cont").hide();
//    }
}
