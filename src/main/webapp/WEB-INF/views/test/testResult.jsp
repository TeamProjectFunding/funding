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
	<h1>테스트 결과</h1>
	<h4>유저리스트</h4>
	<c:forEach var="user" items="${userList}">
		<p>${user.userId },${user.userPassword } 이름 : ${user.userName }</p>
	</c:forEach>
	<h4>유저검색리스트</h4>
	<c:forEach var="user" items="${userSearchList}">
		<p>${user.userId },${user.userPassword } 이름 : ${user.userName }</p>
	</c:forEach>
	<h4>회원가입결과</h4>
	<p>${userJoinResult }</p>
</body>
</html>