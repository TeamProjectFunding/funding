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
	<jsp:include page="../adminMenu.jsp"/>
	<div id="contentWrap" class="adminMainWrap">
		<section id="userListWrap">
			<h1>USERS LIST</h1>
			<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="userName" placeholder="회원명을 입력하세요.">
							<input type ="submit" value="SEARCH" placeholder="회원명을 입력하세요." class="button">
						</th>
					</tr>
				</table>
			</form>
			<table>
				<tr>
					<th>GRADE</th>
					<th>ID</th>
					<th>NAME</th>
					<th>PHONE</th>
					<th>ADDRESS</th>
					<th>JOIN DATE</th>
				</tr>
				<tr class="userInfo">
					<td>USERGRADE</td>
					<td><a href="${conPath }/adminUserView.do">USERID</a></td>
					<td>USERNAME</td>
					<td>USERPHONE</td>
					<td>USERADDRESS</td>
					<td>USERJOINDATE</td>
				</tr>
				<tr class="userInfo">
					<td>USERGRADE</td>
					<td><a href="${conPath }/adminUserView.do">USERID</a></td>
					<td>USERNAME</td>
					<td>USERPHONE</td>
					<td>USERADDRESS</td>
					<td>USERJOINDATE</td>
				</tr>
				<tr class="userInfo">
					<td>USERGRADE</td>
					<td><a href="${conPath }/adminUserView.do">USERID</a></td>
					<td>USERNAME</td>
					<td>USERPHONE</td>
					<td>USERADDRESS</td>
					<td>USERJOINDATE</td>
				</tr>
				<tr class="userInfo">
					<td>USERGRADE</td>
					<td><a href="${conPath }/adminUserView.do">USERID</a></td>
					<td>USERNAME</td>
					<td>USERPHONE</td>
					<td>USERADDRESS</td>
					<td>USERJOINDATE</td>
				</tr>
				<tr class="userInfo">
					<td>USERGRADE</td>
					<td><a href="${conPath }/adminUserView.do">USERID</a></td>
					<td>USERNAME</td>
					<td>USERPHONE</td>
					<td>USERADDRESS</td>
					<td>USERJOINDATE</td>
				</tr>
				
			</table>
		</section>
	</div>
</body>
</html>