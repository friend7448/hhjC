<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
response.setHeader("Cache-Control","no-store");   
response.setHeader("Pragma","no-cache");   
response.setDateHeader("Expires",0);
%>

<script type="text/javascript" src="./script/rsa/jsbn.js"></script>
<script type="text/javascript" src="./script/rsa/rsa.js"></script>
<script type="text/javascript" src="./script/rsa/prng4.js"></script>
<script type="text/javascript" src="./script/rsa/rng.js"></script>
<script type="text/javascript" src="./script/signin/signin.js"></script>

<div class="container">
	<form name="frm" id="frm" action="" class="form-horizontal" onsubmit="return false;">
		<h2>로그인</h2>
		<div class="form-group">
			<label for="user_id">아이디 : </label> 
			<input type="text" id="user_id" name="user_id" class="form-control" value="hhj" placeholder="ID" autofocus>
		</div>
		<div class="form-group">
			<label for="user_pw">비밀번호 : </label> 
			<input type="password" id="user_pw" name="user_pw" class="form-control" value="1111" placeholder="Password" >
		</div>
		<div class="checkbox">
			<label> <input type="checkbox" id="save_id"> 아이디 저장
			</label>
		</div>
		<button class="btn btn-primary btn-block" id="signinBtn">로그인</button>
		
		<input type="hidden" id="rsaPublicKeyModulus" name="rsaPublicKeyModulus" value="${publicKeyMap.modulus}" />
        <input type="hidden" id="rsaPublicKeyExponent" name="rsaPublicKeyExponent" value="${publicKeyMap.exponent}" />
        <input type="hidden" id="securedUserId" name="securedUserId" value="" />
        <input type="hidden" id="securedPwd" name="securedPwd" value="" />
	</form>
</div>

<script type="text/javascript">
	$(document).ready(function() {

	});
</script>