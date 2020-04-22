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
	<link href="${conPath}/css/admin.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<div id="contentWrap" class="adminLoginWrap">
		<h1>ADMIN LOG-IN</h1>
		<form action="adminMain.do">
			<table>
				<tr>
					<td><input type="text" name="adminId" placeholder="관리자 아이디 입력하세요."></td>
				</tr>
				<tr>
					<td><input type="password" name="adminPassword" placeholder="비밀번호를 입력하세요." ></td>
				</tr>
				<tr>
					<th id="buttonWrap">
						<input type="submit" value="LOGIN" class="button">
					</th>
				</tr>
			</table>
		</form>
		
	</div>
</body>
</html>