<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<c:if test="${idConfirmResult eq '중복'}">
		<span class="danger">중복 된 아이디입니다.</span>
	</c:if>
	<c:if test="${idConfirmResult eq '가입가능'}">
		<span class="safety">사용가능한 아이디입니다.</span>
	</c:if>
</body>
</html>