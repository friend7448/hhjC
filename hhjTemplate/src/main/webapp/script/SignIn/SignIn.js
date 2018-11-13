
$(document).ready(function() {
	getCookieId(); // cookie
	
	// 포커스
    if ($("#user_id")[0].value != "") {
        $("#user_pw")[0].focus();
    } else {
        $("#user_id")[0].focus();
    }
    
	$("#signinBtn").bind("click",doLogin);   // 검색
	
});

//입력항목 검사
function checkInputText()
{
	if ($("#user_id").val().length == 0) 
	{
		alert("아이디를 입력해주시기 바랍니다.");
		$("#user_id").focus();
		return false;
	}

	if ($("#user_pw").val().length == 0) 
	{
		alert("비밀번호를 입력해주시기 바랍니다.");
		$("#user_pw").focus();
		return false;
	}

	return true;
}

// 로그인정보 조회
function doLogin()
{
	if (!checkInputText()) return;

	var userId = $.trim($("#user_id").val());
    var password = $.trim($("#user_pw").val());
    var rsaPublicKeyModulus = $.trim($("#rsaPublicKeyModulus").val());
    var rsaPublicKeyExponent = $.trim($("#rsaPublicKeyExponent").val());
    
    try {
        encryptedForm(userId, password, rsaPublicKeyModulus, rsaPublicKeyExponent);
    } catch(err) {
        alert(err);
        return false;
    }
	
    $("#user_id").val(userId);
    
	 $.ajax({
	        type: "POST",
	        url: "./SignIn/doLogin.do",
	        data: {
	        	action : 'signin.doLogin',
	        	user_id : '',
	        	user_pw : '', 
//	        	user_id : $("#user_id").val(),
//	        	user_pw : $("#user_pw").val(), 
	        	rsaPublicKeyModulus : $("#rsaPublicKeyModulus").val(), 
	        	rsaPublicKeyExponent : $("#rsaPublicKeyExponent").val(), 
	        	securedUserId : $("#securedUserId").val(), 
	        	securedPwd : $("#securedPwd").val() 
	        },
	        dataType: 'json',
	        error: function(){
	            alert('로그인 중 오류가 발생하였습니다.');
	        },
	        success: function(jData) {
				if (jData.isSuccess == "succ") 
				{
//					location.href = "main/main.do";
					location.href = "./index.jsp";
					return;
				} 
				else 
				{
					alert(jData.msg);
					$("#user_pw").val("");
					$("#user_id").focus();
					location.href = "./index.jsp";
					return;
				}
        	}
	 });
}

function encryptedForm(userId, password, rsaPublicKeyModulus, rsaPpublicKeyExponent) {
    var rsa = new RSAKey();
    rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);

    // 사용자ID와 비밀번호를 RSA로 암호화한다.
    var securedUserId = rsa.encrypt(userId);
    var securedPwd = rsa.encrypt(password);

    $("#securedUserId").val(securedUserId);
    $("#securedPwd").val(securedPwd);
}

//쿠기 설정 
function doSaveCookie()
{
	var expdate = new Date();
	var user_id = $("#user_id").val();
	
	// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
	if ($('#save_id').prop("checked") == true)
	{
		expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
	} 
	else 
	{
		expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제
	}
	 setCookie("saveId", user_id, expdate);
}

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
		$('#user_id').val(cookieUserId);
		$('#user_pw').val("");
		$('#save_id').prop("checked", true);
	}
	else
	{
		$('#save_id').prop("checked", false);
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