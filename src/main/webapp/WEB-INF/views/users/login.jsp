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
<script>
function getUserId(){
	var id = document.getElementsByName("id")[0].value;
	location.href="${conPath}/findPw.do?userId="+id+"&companyId="+id;
}
</script>

</head>
<body>
<c:if test="${not empty findPwMsg}">
	<script>
		alert('${findPwMsg}');
	</script>
</c:if>


	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
		<section class="loginWrap">
			<h1>LOG-IN</h1>
			<form action="${conPath}/login.do" method="post">
				<table>
					<tr>
						<td><input type="text" name="id" placeholder="아이디를 입력하세요" required="required" value="${userId}${companyId}"></td>
					</tr>
					<tr>
						<td><input type="password" name="pw" placeholder="비밀번호를 입력하세요"></td>
					</tr>
					<tr>
						<th id="buttonWrap">
							<input type="submit" value="LOGIN" class="button">
							<input type="button" value="JOIN" class="button" onClick="location.href='${conPath}/join.do'">
							<input type="button" value="FIND ID/PW" class="button" onclick="getUserId();">
							<input type="button" value="NAVER" class="button naverButton">
							<div id="naver_id_login" style="display: none"></div>
							<input type="button" value="KAKAO" class="button" id="kakaoLoginButton" style="background-color: #FFE500">
						</th>
					</tr>
					
				</table>
			</form>
		</section>
	</div>
	                
<script src="${conPath }/js/kakao.js"></script>
<script>
	$(function(){
		Kakao.init('955fa574fcf92290ccab03a97378fe35');
		/* Kakao.Auth.authorize({
				redirectUri: '${conPath}/WEB-INF/views/loginApi/kakaoLogin.jsp'
		}); */
		Kakao.Auth.createLoginButton({ 
			container: '#kakaoLoginButton', 
			success: function(authObj) {
			      Kakao.API.request({
			        url: '/v2/user/me',
			        success: function(res) {
			        	var email = res.kakao_account['email'];
						location.href="${conPath}/loginApi.do?loginApiId="+email;
					},
			        fail: function(error) {
			          alert(
			            'login success, but failed to request user information: ' +
			              JSON.stringify(error)
			          )
			        },
			      })
			    },
			    fail: function(err) {
			      alert('failed to login: ' + JSON.stringify(err))
			    },
			});
	});
</script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script>
	$('.naverButton').click(function(){
		$('#naver_id_login_anchor').click();
	});
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