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
	<div id="myAcountEnrollment">
		<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		<form action="">
		<input type="hidden" name="userId" value="${user.userId }">
		<input type="hidden" name="companyId" value="${company.companyId }">
		<table class="acountInfo">
			<tr>
				<th>BANK</th>
				<td><input type="text" name="bank" placeholder="은행명을 입력하세요." required="required"></td>
			</tr>
			<c:if test="${not empty sessionScope.company }">
			<tr>
				<th>ACCOUNT HOLDER</th>
				<td><input type="text" name="accountHolder" placeholder="예금주 이름을 입력하세요." required="required"></td>
			</tr>
			</c:if>
			<tr>
				<th>ACCOUNT NUMBER</th>
				<td><input type="text" name="accountNumber" placeholder="계좌번호를 입력하세요." required="required"></td>
			</tr>
			<tr>
				<th id="buttonWrap" colspan='2'><input type="submit" value="SUBMIT" class="button"></th>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>