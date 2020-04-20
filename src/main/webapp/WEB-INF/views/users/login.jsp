<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USER LOGIN</title>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
		<section class="loginWrap">
			<h1>LOG-IN</h1>
			<form action="" method="post">
				<table>
					<tr>
						<td><input type="text" name="id" placeholder="아이디를 입려하세요"></td>
					</tr>
					<tr>
						<td><input type="password" name="pw" placeholder="비밀번호를 입력하세요"></td>
					</tr>
					<tr>
						<th id="buttonWrap">
							<input type="submit" value="LOGIN" class="button">
							<input type="button" value="JOIN" class="button" onClick="location.href='${conPath}/join.do'">
							<input type="button" value="NAVER" class="button naverButton">
							<input type="submit" value="FIND ID/PW" class="button">
						</th>
					</tr>
					
				</table>
			</form>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>