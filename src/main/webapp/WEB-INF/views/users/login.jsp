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
			<form action="${conPath}/hyuck/login.do" method="post">
				<table>
					<tr>
						<td><input type="text" name="id" placeholder="아이디를 입력하세요" value="${param.userId}${param.companyId}"></td>
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
						
						<!-- 영롱 네이버로그인 -->
						  <div id="naver_id_login">
						  <a href="${url}"><img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
					</tr>
					
				</table>
			</form>
		</section>
	</div>
	                


<!-- JQuery 생략 네이버 로그인 script -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script>

     var naver_id_login = new naver_id_login("LsBPexGeKhecQjzWoxFD", "http://localhost:8181/funding/naverCallback.do");
     var state = naver_id_login.getUniqState();
     naver_id_login.setButton("white", 2,40);
     naver_id_login.setDomain("http://127.0.0.1:8181/funding/login");
     naver_id_login.setState(state);
     naver_id_login.setPopup();
     naver_id_login.init_naver_id_login();
  </script>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>