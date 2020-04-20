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
	<jsp:include page="../adminMenu.jsp"/>
	<div id="contentWrap" class="adminMainWrap">
		<section id="boardListWrap">
			<h1>Q&A LIST</h1>
			<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="userName" placeholder="제목을 입력하세요.">
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
				<tr class="userInfo">
					<td>Q&A NUMBER</td>
					<td><a href="${conPath }/adminQnaView.do">QNA TITLE</a></td>
					<td>WRITER</td>
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
</body>
</html>