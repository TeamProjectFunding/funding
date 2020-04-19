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
	<div id="contentWrap" class="goodsWrap">
		<section id="fundingWrap" class="fundingListWrap">
				<h1>REWARD</h1>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_04.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_03.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_02.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_04.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_03.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_02.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
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
	<jsp:include page="../main/footer.jsp" />
</body>
</html>