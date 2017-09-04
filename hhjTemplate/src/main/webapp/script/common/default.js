/*
 * Cookie 관리자
 */
CookieManager = {
	
	setCookie : function(name, value, validity)
	{
		var date = new Date();
		if (!validity) validity = 10;

		date.setDate(date.getDate() + validity);
		document.cookie = name + '=' + escape(value) + '; expires=' + date.toGMTString();
	},

	getCookie : function(name)
	{
		var all_cookies = document.cookie.split('; '); 
		for (i=0 ; i<all_cookies.length ; i++)
		{
			var cookie_array = all_cookies[i].split('=');
			if (name == cookie_array[0])
				return cookie_array[1];
		}
		return null;
	},

	delCookie : function(name)
	{
		document.cookie = name + '= ; expires= ;';	
	}

};



/**
 * null 값 체크1
 */
function toNVLString(value, alt)
{
	if (alt == null) alt = "";

	if (value == null || value.length == 0)
		return alt;
	else
		return value;
}


/**
 * null 값 체크2
 */
function toNVLString2(value, alt)
{	
	if (alt == null) alt = "";	

	if (value == null || value.length == 0)
		return alt;
	else
	{
		try
		{			
			return value[0].firstChild.nodeValue;
		}
		catch (e)
		{
			return alt;
		}
	}
}


/**
 * 문자 Encode
 */
function toEncodeString(value)
{
	var result = "";
	if (typeof value != "string")	
	{
		for (name in value)
		{
			if (result != "")
				result += "&";

			result += name + "=" + encodeURIComponent(value[name]);
		}		
	}
	else
		result = value;

	return encodeURIComponent(result);
}

/**
 * 
 */
function setRestrictText(el, type, count1, count2)
{	

	if (typeof el == "string")
		el = document.getElementById(el);	

	if (el == null)
		return;

	switch (type)
	{
		case "number":		
		case "no_hangul":		
		case "serial_no":
		case "bunji":
		case "ip":
			el.style.imeMode = "disabled";
			break;
		case "letter":
			el.style.imeMode = "inactive";
			break;
		case "hangul_first":
			el.style.imeMode = "active";
			break;
	}
	el.maxLength = count1;

	if (type != "no_hangul" && type != "letter" && type != "hangul_first")
	{	
		var onkeydown = function(e) {
			var event = window.event || e;				
			validateText(event, el, type, count1);
		};
		addEvent(el, "keydown", onkeydown);
	}
}


/**
 * 태그 엘리먼트 관련 메소드 
 */
TagElement = {

	//
	// 하위 자식 노드 전체 삭제
	//
	clearChildNodes : function(element)
	{		
		while (element.childNodes.length > 0)
		{
			// 원래 노드 구조상 최하위부터 지워나가려 했지만 ie의 ㅈㄹ같은 js엔진 속도로 인해서
			// 직속 하위 노드만 지우는 식으로 처리하기로 결정
			//TagElement.clearChildNodes(element.childNodes[0]); 
			element.removeChild(element.childNodes[0]);
		}
	}	
};











/**
* TextArea 입력 글자 제한 check_input_length(id, byte size)
*/
function check_input_length(name, msgMax) {
   var msgList = name.value;  			 //글자가 입력되는 이벤트가 발생되는 value 값
   var msgListLength = msgList.length;  //입력 되는 글자의 전체 길이
   
   var limitSize = msgMax;  //제한 할 글자 길이
   var charOne = "";  		 //한 글자씩 검사하기 위한 변수
   var charByte = 0;  		 //입력 되고 있는 문자의 길이(바이트) 를 저장할 변수
   var msgLen = 0;  		 //입력 내용을 담아 subString 할 변수
   var msgLast = "";  		 //글자수가 초과 할 경우, 제한 할 마지막 글자 까지 보여준다
   
   for(var i = 0; i < msgListLength; i++) {  //입력 되고 있는 글자의 전체길이를 루프를 돈다.
	     charOne = msgList.charAt(i);  		  //한글자씩 읽음
	    
	     //한글은 2byte 이므로, 한글이 입력 되고 있을 경우 2를 더한다.
	     if(escape(charOne).length > 4) {
	      charByte += 2;
	     } else {
	      charByte++;  //그 외에 경우에는 1byte. 1을 더한다.
	     }
	     
	     if(charByte <= limitSize) {  //전체 크기가 제한 글자 길이를 넘지 않는다면..
	      msgLen = i + 1;
	     }
   }
   
   if(charByte > limitSize) {
	     alert(parseInt(limitSize)/2 + " 글자를 초과 입력 할 수 없습니다.");
	     msgLast = msgList.substr(0, msgLen);
	     name.value = msgLast;
	     charByte = limitSize;
   }
}



/**
* 서센터 콤보박스
*/
function onChngCmnWard(comboNm1, comboNm2, itm_nm, type, obj)
{
	
	var p1 = "";  
	var obj_type = "";
	p1 = jQuery("#"+comboNm1).val();
	
	if(obj == "s")
		obj_type = "search_";
	
	var gubun = obj == "s" ? "전체" : "선택";
	
 	jQuery.ajax({
 		url:"/INTRA/Com/Com_select_WardList2.do",
 		type:"POST",
 		dataType:"json",
 		data:{"part1":p1},  
 		async:false,
 		success:function(data,textStatus){

 			jQuery("#"+comboNm2).empty();
 			jQuery("#"+comboNm2).append("<option value='' selected='selected'>"+gubun+"</option>");
 			
 			for(var i=0; i < data.length ; i++){
 				
 				jQuery("#"+comboNm2).append("<option value="+data[i].WARD_ID+">"+data[i].WARD_NAME+"</option>");
 			}
 		}
 	});
	
	if(p1 == "" && type == "up")
	{
		
		jQuery('#'+obj_type+'cmb_ward2').val("");
		jQuery('#'+obj_type+'cmb_ward2').empty();
		jQuery('#'+obj_type+'cmb_ward2').append('<option value = "" selected="selected">'+gubun+'</option>');	
		
		jQuery('#'+obj_type+'cmb_ward3').val("");
		jQuery('#'+obj_type+'cmb_ward3').empty();
		jQuery('#'+obj_type+'cmb_ward3').append('<option value = "" selected="selected">'+gubun+'</option>');	
	}
}


/**
* 지역 1단계 구군
*/
function onChngCmnAddr_gu(p_obj)
{
	
	var comboNm1 = "cmb_si";
	var comboNm2 = "cmb_gu";
	var comboNm3 = "cmb_dong";
	var comboNm4 = "cmb_li";

	if(p_obj == "s")
	{
		comboNm1 = "search_" + comboNm1;
		comboNm2 = "search_" + comboNm2;
		comboNm3 = "search_" + comboNm3;
		comboNm4 = "search_" + comboNm4;
	}
	
	var p1 = jQuery("#"+comboNm1).val();
	var gubun = p_obj == "s" ? "전체" : "선택";
	
	
	jQuery('#'+comboNm2).empty();
	jQuery('#'+comboNm2).append('<option value = "000" selected="selected">'+gubun+'</option>');
	jQuery('#'+comboNm3).empty();
	jQuery('#'+comboNm3).append('<option value = "000" selected="selected">'+gubun+'</option>');
	jQuery('#'+comboNm4).empty();
	jQuery('#'+comboNm4).append('<option value = "000" selected="selected">'+gubun+'</option>');

	
	jQuery.ajax({
 		url: "/INTRA/getGuAddrCode.do",
 		type: "POST",
 		dataType: "json",
 		data: {"codeStep1":p1},  
 		async: false,
 		success: function(data,textStatus){

 			jQuery("#"+comboNm2).empty();
 			jQuery("#"+comboNm2).append("<option value='000' selected='selected'>"+gubun+"</option>");
 			
 			for(var i=0; i < data.length ; i++){

 				jQuery("#"+comboNm2).append("<option value="+data[i].CODE2+">"+data[i].CODE_NM+"</option>");
 			}
 		}
 	});
}


/**
* 지역 2단계 동
*/
function onChngCmnAddr_dong(p_obj)
{
	
	var comboNm1 = "cmb_si";
	var comboNm2 = "cmb_gu";
	var comboNm3 = "cmb_dong";

	if(p_obj == "s")
	{
		comboNm1 = "search_" + comboNm1;
		comboNm2 = "search_" + comboNm2;
		comboNm3 = "search_" + comboNm3;
	}
			
	var p1 = jQuery("#"+comboNm1).val();
	var p2 = jQuery("#"+comboNm2).val();
	
	var gubun = p_obj == "s" ? decodeURIComponent("전체") : "선택";
	
	jQuery('#'+comboNm3).empty();
	jQuery('#'+comboNm3).append('<option value = "000" selected="selected">'+gubun+'</option>');	
	
 	jQuery.ajax({
 		url: "/INTRA/getDongAddrCode.do",
 		type: "POST",
 		dataType: "json",
 		data: {"codeStep1":p1, "codeStep2":p2},  
 		async: false,
 		success: function(data,textStatus){

 			jQuery("#"+comboNm3).empty();
 			jQuery("#"+comboNm3).append("<option value='000' selected='selected'>"+gubun+"</option>");
 			
 			for(var i=0; i < data.length ; i++){
 				
 				jQuery("#"+comboNm3).append("<option value="+data[i].CODE2+">"+data[i].CODE_NM+"</option>");
 			}
 		}
 	});
}

/**
* 지역 3단계 리
*/
function onChngCmnAddr_li(p_obj)
{
	
	var comboNm1 = "cmb_si";
	var comboNm2 = "cmb_gu";
	var comboNm3 = "cmb_dong";
	var comboNm4 = "cmb_li";

	if(p_obj == "s")
	{
		comboNm1 = "search_" + comboNm1;
		comboNm2 = "search_" + comboNm2;
		comboNm3 = "search_" + comboNm3;
		comboNm4 = "search_" + comboNm4;
	}
	
	var p1 = jQuery("#"+comboNm1).val();
	var p2 = jQuery("#"+comboNm2).val();
	var p3 = jQuery("#"+comboNm3).val();
	
	var gubun = p_obj == "s" ? "전체" : "선택";
	
	jQuery('#'+comboNm4).empty();
	jQuery('#'+comboNm4).append('<option value = "00" selected="selected">'+gubun+'</option>');	
	
 	jQuery.ajax({
 		url: "/INTRA/getLiAddrCode.do",
 		type: "POST",
 		dataType: "json",
 		data: {"codeStep1":p1, "codeStep2":p2, "codeStep3":p3}, 
 		async: false,
 		success: function(data,textStatus){

 			jQuery("#"+comboNm4).empty();
 			jQuery("#"+comboNm4).append("<option value='00' selected='selected'>"+gubun+"</option>");
 			
 			for(var i=0; i < data.length ; i++){
 				
 				jQuery("#"+comboNm4).append("<option value="+data[i].CODE2+">"+data[i].CODE_NM+"</option>");
 			}
 		}
 	});
}


/**
 * 통계 화면에서 2단계 메뉴 보이기
 */ 
function stats_viewMainMenu()
{

	if(jQuery("#OZApplicationViewer").length > 0) 
	{
		jQuery("#OZEQ").css("padding-left","200px");
	}
}


/**
 * 통계 화면에서 2단계 메뉴 숨기기
 */ 
function stats_notViewMainMenu()
{

	if(jQuery("#OZApplicationViewer").length > 0) 
	{
		jQuery("#OZEQ").css("padding-left","0px");
	}
}


/**
 * 전화번호 검사
 */
function check_tel(obj, event, maxLen)
{
	
	if(gfn_isNumber(this.event.keyCode) && obj.readOnly == false)
	{
		var divChar = "-";

		//if(Boolean(char)) divChar = char;

		var oTxt = obj.value.replace(/-/g, "");

		obj.value = transFormTelFormat(oTxt, divChar).substring(0, maxLen);
	}
	else
	{
		return;
	}
}


function gfn_isNumber(keyCode)
{
	return ((keyCode > 47 && keyCode < 58) || (keyCode > 95 && keyCode < 106));

}


function transFormTelFormat(oTxt, divChar)
{
	if(Boolean(oTxt) && typeof divChar != 'undefined')
	{
		var temp = [];

		if(oTxt.length == 8)	return oTxt.substring(0,4) + divChar + oTxt.substring(4);
		else if(oTxt.length >= 12)	return oTxt.substring(0,4) + divChar + oTxt.substring(4,8) + divChar + oTxt.substring(8, 12);

		if(/^02/.test(oTxt) && oTxt.length < 11)
		{
			temp.push(oTxt.substring(0,2) + divChar);
			oTxt = oTxt.substring(2);
		}
		else if(/^\d{3}/.test(oTxt))
		{
			temp.push(oTxt.substring(0,3) + divChar);
			oTxt = oTxt.substring(3);
		}

		var len = oTxt.length;

		if(len > 2 && len < 8)	temp.push(oTxt.substring(0,3) + divChar + oTxt.substring(3));
		else if(len == 8)	temp.push(oTxt.substring(0,4) + divChar + oTxt.substring(4));
		else	temp.push(oTxt);

		return temp.join("");
	}
}

