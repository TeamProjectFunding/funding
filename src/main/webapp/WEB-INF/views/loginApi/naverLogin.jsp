<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			$('#result').html(
					'email : '+email+' , '+
					'id : '+id+' , '+
					'nickname : '+nickname+' , '+
					'email : '+email+' , '+
					'name : '+name+' , '+
					'gender : '+gender+' , '+
					'age : '+age+' , '+
					'birthday : '+birthday+' , '+
					'profile_image : '+profile_image
					
			);
		}
	</script>
	<h1>네이버 로그인 성공 아이디 : </h1>
	<p id="result"></p>
</body>
</html>