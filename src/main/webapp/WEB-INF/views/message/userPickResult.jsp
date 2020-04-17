<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${userPickResult eq true }"><!-- 찜 추가 -->
	찜 추가 하였어요~☆
</c:if>
<c:if test="${userPickResult eq false }"><!-- 찜 삭제 -->
	찜 삭제 하였어요~★
</c:if>
</body>
</html>