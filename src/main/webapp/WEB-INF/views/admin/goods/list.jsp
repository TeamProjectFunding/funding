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
		<section id="GoodsWrap">
			<h1>GOODS LIST</h1>
			<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="userName" placeholder="상품을 입력하세요.">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form>
			
			<div class="goods">
				<ul>
					<li class="thumnail">
						<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
					</li>
					<li class="companyName">company name</li>
					<li class="goodsName">goods name</li>
					<li class="deadline">deadline after 10 days</li>
					<li id="buttonWrap">
						<a href="#none" class="button" onClick="location.href='${conPath}/adminFundingClose.do'">마감</a>
						<a href="#none" class="button" onClick="location.href='${conPath}/adminGoodsModify.do'">수정</a>
					</li>
				</ul>
			</div>
			
			
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
	</div>
</body>
</html>