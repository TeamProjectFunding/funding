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
		<section id="companyViewWrap">
			<h1>COMPANY INFOMATION</h1>
			<table>
				<tr>
					<th><img src="" alt="companyProfie"></th>
					<td><span>??????grade있던자리</span> ${company.companyName }</td>
				</tr>
				<tr>
					<th>ID :</th>
					<td>${company.companyId}</td>
				</tr>
				<tr>
					<th>BUSINESS NUMBER</th>
					<td>${company.companyBusinessNumber}</td>
				</tr>
				<tr>
					<th>PHONE :</th>
					<td>${company.companyPhone}</td>
				</tr>
				<tr>
					<th>ADDRESS :</th>
					<td>${company.companyAddressBasic}&nbsp;${company.companyAddressDetail }</td>
				</tr>
				<tr>
					<th>BANK :</th>
					<td>${company.companyBankName}</td>
				</tr>
				<tr>
					<th>ACCOUNT NUMBER :</th>
					<td>${company.companyAccountNumber }</td>
				</tr>
				<tr>
					<th colspan="2" id="buttomWrap">
						<input type="button" value="DELETE" class="button" onclick="location.href='adminCompanyOutSite.do?companyId=${company.companyId}'">
					</th>
				</tr>
			</table>
		</section>
	</div>
</body>
</html>