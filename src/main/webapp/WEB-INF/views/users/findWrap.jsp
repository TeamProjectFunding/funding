<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${conPath}/css/common.css" rel="stylesheet">
</head>
<body>
	<div id="findWrap">
		<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		
		<table class="sendMail">
			<tr>
				<th><input type='email' placeholder="아이디(이메일)을 입력하세요."></th>
			</tr>
			<tr>
				<th class="buttonWrap">
					<a href='#none' class="button" >SEND</a>
				</th>
			</tr>
			
		</table>
	</div>
</body>
</html>