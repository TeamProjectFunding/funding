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
	<div id="contentWrap" class="boardWrap">
		<section id="boardWriteWrap">
			<h1>Q&A</h1>
			<form action="qnaWrite.do" method="get">
				<table>
					<tr>
						<th>TITLE</th>
						<td><input type="text" name="qnATitle" placeholder="타이틀을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>WRITER</th>
						<td>
							<c:if test="${not empty user}">
								<input type="text" name="userId" value="${user.userId}" readonly="readonly">
							</c:if>
							<c:if test="${not empty company}">
								<input type="text" name="companyId" value="${company.companyId}" readonly="readonly">
							</c:if>
						</td>
					</tr>
					<tr>
						<th>CONTENT</th>
						<td><textarea name="qnAContent"></textarea></td>
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
	<jsp:include page="../main/footer.jsp" />
</body>
</html>