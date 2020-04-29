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
	<h1>EVENT</h1>
			<form action="eventWrite.do" method="POST" enctype="multipart/form-data">
				<input type="hidden" name="adminId" value="${admin.adminId }">	
				<table>
					<tr>
						<th>EVENT TITLE</th>
						<td><input type="text" name="eventTilte" placeholder="타이틀을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>EVENT CONTENT</th>
						<td><textarea name="eventContent"></textarea></td>
					</tr>
					<tr>
						<th>EVENT CLOSE</th>
						<td><input type="date" name="eventEndDate"></td>
					</tr>
					<tr>
						<th>EVENT THUMNAIL</th>
						<td><input type="file" name="image1" placeholder="썸네일 업로드(image 파일)"></td>
					</tr>
					<tr>
						<th>EVENT DETAIL IMAGE</th>
						<td><input type="file" name="image2" placeholder="상세이미지 업로드(image 파일)"></td>
					</tr>
					<tr>
						<th>EVENT PRODUCT NAME</th>
						<td><input type="text" name="eventProductName" placeholder="상품명 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>EVENT PRODUCT IMAGE</th>
						<td><input type="file" name="image3" placeholder="상품이미지 업로드(image 파일)"></td>
					</tr>
					<tr>
						<th>APPLICATION PERIOD</th>
						<td><input type="date" name="eventProductDeliveryDate"></td>
					</tr>
				</table>
				<table>
					<tr>
						<th id="buttonWrap" colspan="2">
							<input type="submit" value="APPLY" class="button">
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