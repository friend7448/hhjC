<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<form action="" class="form-horizontal" onsubmit="return false;">
		<h2>로그인</h2>
		<div class="form-group">
			<label for="USERID">아이디 : </label> 
			<input type="text" id="USER_ID" name="USER_ID" class="form-control" value="hhj" placeholder="ID" autofocus>
		</div>
		<div class="form-group">
			<label for="USER_PW">비밀번호 : </label> 
			<input type="password" id="USER_PW" name="USER_PW" class="form-control" value="1111" placeholder="Password" >
		</div>
		<div class="checkbox">
			<label> <input type="checkbox" id="SAVE_ID"> 아이디 저장
			</label>
		</div>
		<button class="btn btn-primary btn-block" id="btn_signin">로그인</button>
	</form>
</div>
<script type="text/javascript" src="./script/signin/signin.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>