<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/script/rsa/jsbn.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/rsa/rsa.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/rsa/prng4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/rsa/rng.js"></script>

<!-- <div class="modal fade" style="z-index: 10000;" id="myModal" role="dialog"> -->
<div class="container-fluid">
	<!--     <div class="modal-dialog"> -->

	<!-- Modal content-->
	<div class="modal-header" style="padding: 15px 50px;">
		<button type="button" class="close" onclick="javascript:window.close();">&times;</button>
		<h4> <span class="glyphicon glyphicon-lock"></span>비밀번호 변경</h4>
	</div>

	<div class="modal-body" style="padding: 20px 50px;">
		<input type="hidden" id="rsaPublicKeyModulus" name="rsaPublicKeyModulus" value="${publicKeyMap.modulus}" /> 
		<input type="hidden" id="rsaPublicKeyExponent" name="rsaPublicKeyExponent" value="${publicKeyMap.exponent}" />
		<form role="form" name="frm" id="frm" method="post"
			enctype="multipart/form-data" action="" onsubmit="return false;">
			<input type="hidden" id="securedPrevPwd" name="securedPrevPwd" value="" /> 
			<input type="hidden" id="securedNewPwd" name="securedNewPwd" value="" /> 
			<div class="form-group">
				<label class="control-label" for="prev_pw">이전 비밀번호</label> 
				<input type="password" style="display: inline; width: 75%; margin-left: 20px"
					class="form-control" id="prev_pw" name="prev_pw" />
			</div>
			<div class="form-group">
				<label class="control-label" for="new_pw">신규 비밀번호</label> 
				<input type="password" style="display: inline; width: 75%; margin-left: 20px"
					class="form-control" id="new_pw" name="new_pw" />
			</div>
			<div class="form-group">
				<label class="control-label" for="check_pw">비밀번호 확인</label> 
				<input type="password" style="display: inline; width: 75%; margin-left: 20px"
					class="form-control" id="check_pw" name="check_pw" />
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" id="save" name="save"
			onclick="doSave('pw');">비밀번호 변경</button>
		<button type="button" class="btn btn-danger btn-default"
			onclick="javascript:window.close();">닫기</button>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {

	});

	function doSave(check) {
		var msg = '';
		var name = '';
		
		var prev_pw = $.trim($('#prev_pw').val());
		var new_pw = $.trim($('#new_pw').val());
		var check_pw = $.trim($('#check_pw').val());

		msg = "비밀번호를 변경 하시겠습니까?.";
		if (prev_pw == '') {
			alert("이전비밀번호를 입력하세요");
			$('#prev_pw').focus();
			return false;
		} else if (new_pw == '') {
			alert("신규비밀번호 입력 하세요");
			$('#new_pw').focus();
			return false;
		} else if (check_pw == '') {
			alert("비밀번호확인을 입력 하세요");
			$('#check_pw').focus();
			return false;
		} else if (new_pw != check_pw) {
			alert("신규비밀번호와 비밀번호확인이 일치 하지 않습니다.");
			$('#check_pw').focus();
			return false;
		} else {
			var rsaPublicKeyModulus = $.trim($("#rsaPublicKeyModulus").val());
			var rsaPublicKeyExponent = $.trim($("#rsaPublicKeyExponent").val());

			try {
				encryptedFormDate(prev_pw, "securedPrevPwd",rsaPublicKeyModulus, rsaPublicKeyExponent);
				encryptedFormDate(new_pw, "securedNewPwd",rsaPublicKeyModulus, rsaPublicKeyExponent);
			} catch (err) {
				alert(err);
				return false;
			}
		}
		
		//암호화 데이터만 전송
 		$('#prev_pw').val('');
		$('#new_pw').val('');
		$('#check_pw').val('');        	

		var ajax_set = {
			url : "../signin/changeInfoIUD.do",
			data : $("#frm").serialize(),
			return_fn : function(jdata) {
				set_changeInfo(jdata, prev_pw, new_pw, check_pw);
			}
		};

		ajax(ajax_set, 'U');
	}

	function set_changeInfo(jData, prev_pw, new_pw, check_pw) {
		var result = jData.isSuccess;
		var msg = jData.msg;
		
		if (result == "fail") {
			alert(msg);
			
			$('#prev_pw').val(prev_pw);
			$('#new_pw').val(new_pw);
			$('#check_pw').val(check_pw);  
			$('#prev_pw').focus();
		} else {
				if (confirm("비밀번호가 변경 되었습니다. 창을 닫으시겠습니까?")) {
					window.close();
				}
		}
	}

	//RSA 암호화 처리
	function encryptedFormDate(Id, securedId, rsaPublicKeyModulus, rsaPpublicKeyExponent) {
		var rsa = new RSAKey();
		var securedData = "";
		rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);

		if (Id != null && Id != "") {
			// RSA로 암호화한다.
			securedData = rsa.encrypt(Id);
		} else {
			securedData = '';
		}
		$('#' + securedId).val(securedData);
	}
</script>