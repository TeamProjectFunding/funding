<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
		var naver_id_login = new naver_id_login("LsBPexGeKhecQjzWoxFD", "http://localhost:8181/funding/WEB-INF/views/main/main.jsp"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
		// 접근 토큰 값  naver_id_login.oauthParams.access_token
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			var email = naver_id_login.getProfileData('email'); 
			var id = naver_id_login.getProfileData('id');
			var nickname = naver_id_login.getProfileData('nickname');
			var name = naver_id_login.getProfileData('name');
			var gender = naver_id_login.getProfileData('gender');
			var age = naver_id_login.getProfileData('age');
			var birthday = naver_id_login.getProfileData('birthday');
			var profile_image = naver_id_login.getProfileData('profile_image');
			function goNaverLogin(id){
				opener.location.href='${conPath}/naverLogin.do?naverId='+email;
			}
			goNaverLogin(id);
			window.close();
		}
	</script>
</body>
</html>