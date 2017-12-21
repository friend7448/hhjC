
$(document).ready(function() {
	getCookieId(); // cookie
	
	jQuery("#btn_signin").bind("click",doLogin);   // 검색
});

//입력항목 검사
function checkInputText()
{
	if (jQuery("#USER_ID").val().length == 0) 
	{
		alert("아이디를 입력해주시기 바랍니다.");
		jQuery("#USER_ID").focus();
		return false;
	}

	if (jQuery("#USER_PW").val().length == 0) 
	{
		alert("비밀번호를 입력해주시기 바랍니다.");
		jQuery("#USER_PW").focus();
		return false;
	}

	return true;
}

// 로그인정보 조회
function doLogin()
{
	if (!checkInputText()) return;
	
	 $.ajax({
	        type: "POST",
	        url: "./signin/doLogin.do",
	        data: {
	        	ACTION : 'signin.doLogin',
	        	USER_ID : jQuery("#USER_ID").val(),
	        	USER_PW : jQuery("#USER_PW").val() 
	        },
	        dataType: 'json',
	        error: function(){
	            alert('로그인 중 오류가 발생하였습니다.');
	        },
	        success: function(jData) {
				if (jData.isSuccess == "SUCC") 
				{
					doSaveCookie();	//Cookie 설정
					location.href = "main/main.do";
//					location.href = "privgrp/privgrp.do";
//					location.href = "program/program.do";
				} 
				else 
				{
					alert(jData.msg);
					jQuery("#USER_PW").val("");
					jQuery("#USER_ID").focus();
					
					if (jQuery('#SAVE_ID').prop("checked") == false)
						jQuery("#USER_ID").val("");
				}
        	}
	 });
}

//쿠기 설정 
function doSaveCookie()
{
	var expdate = new Date();
	var user_id = jQuery("#USER_ID").val();
	
	// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
	if (jQuery('#SAVE_ID').prop("checked") == true)
	{
		expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
	} 
	else 
	{
		expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제

	}
	 setCookie("saveId", user_id, expdate);
}

//
function setCookie(name, value, expires)
{
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

//
function getCookieId()
{
	var cookieUserId = getCookie("saveId");
	
	if(cookieUserId.length != 0)
	{
		jQuery('#USER_ID').val(cookieUserId);
		jQuery('#USER_PW').val("");
		jQuery('#SAVE_ID').prop("checked", true);
	}
	else
	{
		jQuery('#SAVE_ID').prop("checked", false);
	}
}

// 
function getCookie(Name)
{
    var search = Name + "=";
    
    // 쿠키가 설정되어 있다면
    if (document.cookie.length > 0) 
    { 
        offset = document.cookie.indexOf(search);
        
        if(offset != -1) 
        { 
        	offset += search.length;
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset);
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length;
            return unescape(document.cookie.substring(offset, end));
        }
    }
    
    return "";
}