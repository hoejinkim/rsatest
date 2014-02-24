<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value="/js/jsbn.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/rsa.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/prng4.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/rng.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/login.js" />"></script>
<title>Login Form</title>
</head>
<body>
<div>
	<label for="username">사용자ID : <input type="text" id="username" size="16" /></label>
	<label for="password">비밀번호 : <input type="password" id="password" size="16" /></label>
	<input type="hidden" id="rsaPublicKeyModulus" value="${publicKeyModulus}" />
	<input type="hidden" id="rsaPublicKeyExponent" value="${publicKeyExponent}" />
	<a href="<c:url value="/loginFailure.jsp" />" onclick="validateEncryptedForm(); return false;">로그인</a>
</div>
<form id="securedLoginForm" name="securedLoginForm" action="<c:url value="/login" />" method="post" style="display: none;">
    <input type="hidden" name="securedUsername" id="securedUsername" value="" />
    <input type="hidden" name="securedPassword" id="securedPassword" value="" />
</form>
</body>
</html>