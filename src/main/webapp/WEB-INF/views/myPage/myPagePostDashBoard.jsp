<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPagePostWrap">
		<h1>MY POST</h1>
		<div class="dachBoardWrap">
			<h2>Q&A</h2>
			<div>
				<table>
					<tr>
						<th>NO</th>
						<th>TITLE</th>
						<th>DATE</th>
						<th>REPLY</th>
						<th>HIT</th>
					</tr>
					
					<c:forEach var="myQnaList" items="${myQnaList}">
						<tr>
							<td>${myQnaList.qnANumber}</td>
							<td>${myQnaList.qnATitle}</td>
							<td>${myQnaList.qnADate}</td>
							
							<c:if test="${myQnaList.qnAReplyExist==1}">
								<td><a href="${conPath}/myQnaAnswerView.do?qnAGroup=${myQnaList.qnAGroup}&qnARef=${myQnaList.qnARef}" class="button">답글보기</a></td>
							</c:if>
							<c:if test="${myQnaList.qnAReplyExist==0}">
								<td><!-- <a href="#none" class="button"></a> --></td>
							</c:if>						
							
							<td>${myQnaList.qnAHit}</td>
						</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>	
		<div class="dachBoardWrap">
			<h2>GOODS Q&A</h2>
			<div>
				<table>
					<tr>
						<th>NO</th>
						<th>TITLE</th>
						<th>DATE</th>
						<th>REPLY</th>
						<!-- <th>HIT</th> -->
					</tr>
					
					<c:forEach var="myFundingGoodsQnaList" items="${myFundingGoodsQnaList}">				
						<tr>
							<td>${myFundingGoodsQnaList.fundingQuestionNumber}</td>
							<td>${myFundingGoodsQnaList.fundingQuestionTitle}</td>
							<td>${myFundingGoodsQnaList.fundingQuestionDate}</td>
							
							<c:if test="${myFundingGoodsQnaList.fundingQuestionExistReply==1}">
								<td><a href="${conPath}/myFGQnaAnswerView.do?fundingQuestionNumber=${myFundingGoodsQnaList.fundingQuestionNumber}" class="button">답글보기</a></td>
							</c:if>
							<c:if test="${myFundingGoodsQnaList.fundingQuestionExistReply==0}">
								<td><!-- <a href="#none" class="button"></a> --></td>
							</c:if>	
							<%-- <td>${myFundingGoodsQnaList. }</td> --%>
						</tr>
					</c:forEach>	
				</table>
			</div>
		</div>
		<div class="dachBoardWrap">
			<h2>DEBATE</h2>
			<div>
				<table>
					<tr>
						<th>NO</th>
						<th>TITLE</th>
						<th>DATE</th>
						<th>REPLY</th>
						<th>HIT</th>
					</tr>
					<tr>
						<td>NO</td>
						<td>Q&A TITLE</td>
						<td>2020-04-22</td>
						<td><a href="" class="button">답글</a></td>
						<td>10</td>
					</tr>
				</table>
			</div>
		</div>			
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>