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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${conPath}/css/common.css" rel="stylesheet">
</head>
<body>
	<div id="myFundingDetail">
		<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		<div class="thumnail">
			<img src="${conPath }/images/fundingProduct_01.jpeg" alt="thumnail">
			
		</div>
		<table class="goodsInfo">
			<tr>
				<th>TYPE</th>
				<td>FUND</td>
			</tr>
			<tr>
				<th>TITLE</th>
				<td>FUND TITHE</td>
			</tr>
			<tr>
				<th>INTEREST RATE</th>
				<td>15%</td>
			</tr>
			<tr>
				<th>PERIOD</th>
				<td>2020-04-22 ~ 2020-07-22</td>
			</tr>
			<tr>
				<th>INVESTMENT AMOUNT</th>
				<td>100,000 원</td>
			</tr>
		</table>
		<div class="interestWrap">
			<table>
				<tr>
					<th>이자지급 회차</th>
					<th>지급일</th>
					<th>금액</th>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
				<tr>
					<td>1회차</td>
					<td>2020-05-22</td>
					<td>1,000 원</td>
				</tr>
			</table>
			<table>
				<tr>
					<th>리워드</th>
					<th>리워드 옵션명</th>
					<th>지급 예정일</th>
				</tr>
				<tr>
					<td><img src="" alt=""></td>
					<td>Reward Product</td>
					<td>2020-07-23</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>