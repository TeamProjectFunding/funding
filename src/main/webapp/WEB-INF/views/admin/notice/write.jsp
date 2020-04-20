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
	<link href="${conPath}/css/common.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../adminMenu.jsp" />
	
	<div id="contentWrap" class="adminMainWrap">
		<section id="applyWrap">
			<h1>NOTICE WRITE</h1>
			<form action="noticeWrite.do" method="post" >
				<table>
					<tr>
						<th>TITLE</th>
						<td><input type="text" name="noticeTitle" placeholder="타이틀을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>WRITER</th>
						<td>ADMIN</td>
					</tr>
					<tr>
						<th>CONTENT</th>
						<td><textarea name="noticeContent"></textarea></td>
					</tr>
					
				</table>
				
				<table>
					<tr>
						<th id="buttonWrap" colspan="2">
							<input type="submit" value="WRITE" class="button">
							<input type="reset" value="RESET" class="button">
							<input type="button" value="BACK" class="button" onClick="history.back()">
						</th>
					</tr>
				</table>
				
			</form>
		</section>
	</div>
</body>
</html>