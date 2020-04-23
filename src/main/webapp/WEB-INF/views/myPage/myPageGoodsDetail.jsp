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
	<div id="myGoodsDetail">
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
				<td>REWARD</td>
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
			<tr><!-- REWARD -->
				<th>DELIVERY DATE</th>
				<td>2020-07-22</td>
			</tr>
			<tr>
				<th> AMOUNT</th>
				<td>1,000,000 원</td>
			</tr>
			<tr>
				<th>PARTICIPANTS</th>
				<td>100 명</td>
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
			<table><!-- REWARD -->
				<tr>
					<th>리워드 옵션명</th>
					<th>투자금액</th>
					<th>참여인원</th>
				</tr>
				<tr>
					<td>Reward Title</td>
					<td>600,000</td>
					<td>50</td>
				</tr>
				<tr>
					<td>Reward Title</td>
					<td>300,000</td>
					<td>30</td>
				</tr>
				<tr>
					<td>Reward Title</td>
					<td>100,000</td>
					<td>20</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>