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
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
		<section class="joinSelectWrap">
			<table>
				<tr >
					<th id="buttonWrap">
						<a href="${conPath }/joinForm.do?method=user" class="button">USER JOIN</a>
						<a href="${conPath }/joinForm.do?method=company" class="button">COMPANY JOIN</a>
					</th>
				</tr>
			</table>
			
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />	
</body>
</html>