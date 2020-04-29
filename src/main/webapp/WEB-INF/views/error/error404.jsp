<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CROWDFUND : 404</title>
<link href="${conPath}/css/common.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
	<section id="error">
		<h1>
			공사중
		</h1>
		<p>
				요청하신 페이지를 찾을 수 없거나 예기치 못한 오류가 발생하였습니다.<br/>
				지속적으로 동일한 문제가 발생하거나 관련하여 문의내용이 있으시면, 언제든지 문의하기를 이용해 주십시오.<br/><br/><br/>
				<a href="main.do">HOME</a>	
		</p>
			
	</section>
</body>
</html>