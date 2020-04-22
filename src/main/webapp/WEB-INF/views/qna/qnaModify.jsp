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
			<section id="boardModifyWrap">
				<h1>Q&A</h1>
				<form action="${conPath}/qnaModify.do" method="get">
				<input type="hidden" name="qnANumber" value="${qnaDetail.qnANumber}">
				<input type="hidden" name="qnARef" value="${qnaDetail.qnARef}">
				<input type="hidden" name="qnAIndent" value="${qnaDetail.qnAIndent}">				
				<input type="hidden" name="pageNum" value="${param.pageNum}">
				
					<table>
						<tr>
							<th>TITLE</th>
							<td><input type="text" name="qnATitle" value="qnaTitle" required="required"></td>
						</tr>
						<tr>
							<th>WRITER</th>
							<td><input type="text" name="writer" value="${qnaDetail.writer}" readonly="readonly"></td>
						</tr>
						<tr>
							<th>CONTENT</th>
							<td><textarea name="qnAContent"></textarea></td>
						</tr>
					</table>
					
					<table>
						<tr>
							<th id="buttonWrap" colspan="2">
								<input type="submit" value="MODIFY" class="button">
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