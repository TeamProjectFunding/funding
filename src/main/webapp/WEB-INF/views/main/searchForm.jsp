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
	<div id="searchWrap" class="popupWrap">
		<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		<script>
			$(function(){
				$('.closeButton').click(function(){
					$('.popupWrap').slideUp();
				});
			});
		</script>
		<div id="contentWrap">
			<form action=''>
				<table>
					<tr>
						<th>
							<input type="text" placeholder="상품 검색어를 입력 하세요">
						</th>
						<td id="buttonWrap">
							<input type="submit" value="SEARCH" class="button">
						</td>
					</tr>
				</table>
			</form>
			<section class="goodsWrap">
				<div class="goodsListWrap searchResualt" >
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
							</li>
							<li class="companyName">company name</li>
							<li class="goodsName">goods name</li>
							<li class="deadline">deadline after 10 days</li>
						</ul>
					</div>
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_02.jpeg "><span>FUND</span></a>
							</li>
							<li class="companyName">company name</li>
							<li class="goodsName">goods name</li>
							<li class="deadline">deadline after 10 days</li>
						</ul>
					</div>
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_03.jpeg "><span>FUND</span></a>
							</li>
							<li class="companyName">company name</li>
							<li class="goodsName">goods name</li>
							<li class="deadline">deadline after 10 days</li>
						</ul>
					</div>
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
							</li>
							<li class="companyName">company name</li>
							<li class="goodsName">goods name</li>
							<li class="deadline">deadline after 10 days</li>
						</ul>
					</div>
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_02.jpeg "><span>FUND</span></a>
							</li>
							<li class="companyName">company name</li>
							<li class="goodsName">goods name</li>
							<li class="deadline">deadline after 10 days</li>
						</ul>
					</div>
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_03.jpeg "><span>FUND</span></a>
							</li>
							<li class="companyName">company name</li>
							<li class="goodsName">goods name</li>
							<li class="deadline">deadline after 10 days</li>
						</ul>
					</div>
					
				</div>
			</section>
		</div>
	</div>
</body>
