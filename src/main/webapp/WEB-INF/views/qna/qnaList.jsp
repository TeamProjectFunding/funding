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
	<div id="contentWrap" class="boardWrap">
		<section class="boardListWrap">
			<h1>Q&A</h1>
			<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="qnaTitle" placeholder="제목을 입력하세요.">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form>
			<table>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
				<tr class="boardInfo">
					<td>2</td>
					<td><a href="${conPath }/qnaView.do">[Q] Q&A TITLE 2</a></td>
					<td>USER</td>
					<td>2020-04-19</td>
					<td>0</td>
				</tr>
				<tr class="boardInfo">
					<td>2-1</td>
					<td><a href="${conPath }/qnaView.do">[A] Q2 REPLY TITLE</a></td>
					<td>ADMIN</td>
					<td>2020-04-19</td>
					<td>0</td>
				</tr>
				<tr class="boardInfo">
					<td>1</td>
					<td><a href="${conPath }/qnaView.do">[Q] Q&A TITLE 1</a></td>
					<td>USER</td>
					<td>2020-04-19</td>
					<td>0</td>
				</tr>
				<tr class="boardInfo">
					<td>1-1</td>
					<td><a href="${conPath }/qnaView.do">[A] Q1 REPLY TITLE</a></td>
					<td>ADMIN</td>
					<td>2020-04-19</td>
					<td>0</td>
				</tr>
				
				
			</table>
			<div class="paging">
				<a href="" class="prev">PREV</a>
				<a href="" class="current">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<a href="">4</a>
				<a href="">5</a>
				<a href="" class="next">NEXT</a> 
			</div>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>