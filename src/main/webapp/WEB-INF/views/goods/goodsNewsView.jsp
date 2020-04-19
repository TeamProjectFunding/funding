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
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="goodsWrap">
		<section class="goodsViewWrap newsViewWrap">
			<h1>GOODS NEWS</h1>
			
			<table>
				<tr>
					<th class="newsTitle">GOODS NEWS TITLE <span>2020-04-17</span></th>
				</tr>
				<tr>
					<td class="fundingTitle">FUNDING TITLE</td>
				</tr>
				<tr>
					<td class="newsContent">
						<img src="" alt="newsImages">
					 	도산함 
					</td>
				</tr>
				<tr>
					<th id="buttonWrap">
						<button class="button" onClick="history.back()">BACK</button>
					</th>
				</tr>
			</table>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>