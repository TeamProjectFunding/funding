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
<script>
	function userPickDeleteCheck(fundingCode){
		var userAnswer = confirm( '정말 찜 삭제하시겠어요?' );
	    if(userAnswer){
	    	location.href = location.href='${conPath}/userPickDelete.do?userId=${user.userId}&fundingCode='+fundingCode;
	    }else{
	    	
	    }
	}
</script>
</head>
<body>
<!-- 현재 날짜 -->
   <jsp:useBean id="today" class="java.util.Date" />
   <fmt:parseNumber value="${today.time / (1000*60*60*24)}" integerOnly="true" var="nowDate" />

	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPagePick">
		<h1>PICK</h1>
		
		<c:forEach var="myPagePickList" items="${myPagePickList}">
			<div class="goods">
				<ul>
					<li class="thumnail">
						<a href='goodsViewCoreInfomation.do?fundingCode=${myPagePickList.fundingCode}'><img src="${conPath}/images/goods/${myPagePickList.fundingThumbnailImage}"><span>FUND</span></a>
					</li>
					<li class="companyName">${myPagePickList.fundingTargetDate}</li> 
					<li class="goodsName">${myPagePickList.fundingName}</li>
					
					<fmt:parseNumber value="${myPagePickList.fundingTargetDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate" />
					
					<c:if test="${nowDate < endDate}">
						<li class="deadline">마감일 ${endDate-nowDate}일 전</li>
					</c:if>
					
					<c:if test="${endDate < nowDate}">
						<li class="deadline">마감일 ${nowDate-endDate}일 지남</li>
						<div class="fundingClose" onclick="userPickDeleteCheck('${myPagePickList.fundingCode}')">CLOSE</div>											
					</c:if>	
				</ul>															
			</div>
		</c:forEach>		
		
		<%-- <div class="goods">
			<ul>
				<li class="thumnail">
					<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
				</li>
				<li class="companyName">company name</li>
				<li class="goodsName">goods name</li>
				<li class="deadline">deadline after 10 days</li>
			</ul>
			<div class="fundingClose">CLOSE</div>
		</div> --%>
		
		
		
		<!-- <div class="paging">
			<a href="" class="prev">PREV</a>
			<a href="" class="current">1</a>
			<a href="">2</a>
			<a href="">3</a>
			<a href="">4</a>
			<a href="">5</a>
			<a href="" class="next">NEXT</a> 
		</div> -->
				
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>