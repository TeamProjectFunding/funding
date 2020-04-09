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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
		<section id="userWrap">
			<table>
				<tr>
					<td><a href="${conPath }/joinForm.do?method=user" class="btn">USER JOIN</a></td>
					<td><a href="${conPath }/joinForm.do?method=company" class="btn">COMPANY JOIN</a></td>
				</tr>
			</table>
			
		</section>
	<jsp:include page="../main/footer.jsp" />	
</body>
</html>