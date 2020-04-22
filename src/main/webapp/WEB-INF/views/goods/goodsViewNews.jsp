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
</head>
<body>
			<h3>새소식</h3>
			<div class="newsListWrap">
				
				<ul class="newsList">
					<li class="newsTitle"><a href="goodsNewsView.do">newsTitle</a></li>
					<li>fundingTitle <span>2020.04.10</span></li>
				</ul>
				<ul class="newsList">
					<li class="newsTitle"><a href="">newsTitle</a></li>
					<li>fundingTitle <span>2020.04.10</span></li>
				</ul>
				<ul class="newsList">
					<li class="newsTitle"><a href="">newsTitle</a></li>
					<li>fundingTitle <span>2020.04.10</span></li>
				</ul>
				<ul class="newsList">
					<li class="newsTitle"><a href="">newsTitle</a></li>
					<li>fundingTitle <span>2020.04.10</span></li>
				</ul>
				<ul class="newsList">
					<li class="newsTitle"><a href="">newsTitle</a></li>
					<li>fundingTitle <span>2020.04.10</span></li>
				</ul>
				<ul class="newsList">
					<li class="newsTitle"><a href="">newsTitle</a></li>
					<li>fundingTitle <span>2020.04.10</span></li>
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
</body>
</html>