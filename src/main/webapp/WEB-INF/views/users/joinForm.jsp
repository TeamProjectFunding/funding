<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOINFORM</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${conPath }/js/address.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
		<section id="userWrap" class="joinWrap">
			<form action="">
			
				<!-- user join form -->
				<table class="user">
					<tr>
						<th>회원 기본 정보</th>
					</tr>
					<tr>
						<td><input type="email" name="userId" value="아이디(이메일)를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td>
							<p class="idConfirm ">
								<span class="danger">중복 된 아이디입니다.</span>
								<span class="safety">사용가능한 아이디입니다.</span>
							</p>
						</td>
					</tr>
					<tr>
						<td><input type="password" name="userPassword" placeholder="비밀번호을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<td>
							<p class="passWordSafety">
								<span class="danger"> ■□□ 위험 </span>
								<span class="normal"> ■■□ 중간 </span>
								<span class="safety"> ■■■ 안전 </span>
							</p>
						</td>
					</tr>
					<tr>
					
						<td><input type="password" name="userPasswordCheck" placeholder="다시한번 비밀번호를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td>
							<p class="passwordConfirm">
								<span class="danger">불일치</span>
								<span class="safety">일치</span>
							</p>
						</td>
					</tr>
					<tr>
						<td><input type="text" name="userName" value="이름을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<td><input type="text" name="userPhone" value="연락처를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<th>추가정보</th>
					</tr>
					<tr>
						<td><input type="file" name="userProfileImage"></td>
					</tr>
					<tr>
						<td>
							<input type="date" name="userBirthDay">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="sample4_postcode" name="userPost" class="text_box"  placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn postBtn">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="sample4_roadAddress" name="userAddressBasic"  placeholder="도로명주소">
							<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
							<span id="guide"></span>
						</td>
					</tr>
					<tr>
						<td><input type="text" name="userAdderssDetail" value="상세주소를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td class="checkBoxWrap">
							휴대폰 광고 수신동의 <input type="checkbox" name="userAdPhone" value="ok">
							이메일 광고 수신동의 <input type="checkbox" name="userAdEmail" value="ok">
						</td>
					</tr>
					<tr>
						<td class="btnWrap">
							<input type="submit" value="JOIN" class="btn">
							<input type="reset" value="RESET" class="btn">
							<input type="button" value="BACK" class="btn">
						</td>
					</tr>
				</table>
				
				<!-- company join form -->
				<table class="company">
					<tr>
						<th>기업 기본 정보</th>
					</tr>
					<tr>
						<td><input type="email" name="companyId" value="아이디(이메일)를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td>
							<p class="idConfirm ">
								<span class="danger">중복 된 아이디입니다.</span>
								<span class="safety">사용가능한 아이디입니다.</span>
							</p>
						</td>
					</tr>
					<tr>
						<td><input type="password" name="companyPassword" placeholder="비밀번호을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<td>
							<p class="passWordSafety">
								<span class="danger"> ■□□ 위험 </span>
								<span class="normal"> ■■□ 중간 </span>
								<span class="safety"> ■■■ 안전 </span>
							</p>
						</td>
					</tr>
					<tr>
					
						<td><input type="password" name="companyPasswordCheck" placeholder="다시한번 비밀번호를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td>
							<p class="passwordConfirm">
								<span class="danger">불일치</span>
								<span class="safety">일치</span>
							</p>
						</td>
					</tr>
					<tr>
						<td><input type="text" name="companyNumber" value="사업자 번호를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td><input type="text" name="companyName" value="이름을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<td><input type="text" name="companyPhone" value="연락처를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<th>추가정보</th>
					</tr>
					<tr>
						<td><input type="file" name="companyProfileImage"></td>
					</tr>
					<tr>
						<td>
							<input type="text" id="sample4_postcode" name="companyPost" class="text_box"  placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn postBtn">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="sample4_roadAddress" name="companyAddressBasic"  placeholder="도로명주소">
							<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
							<span id="guide"></span>
						</td>
					</tr>
					<tr>
						<td><input type="text" name="companyAdderssDetail" value="상세주소를 입력하세요" required="required"></td>
					</tr>
					<tr>
						<td class="checkBoxWrap">
							휴대폰 광고 수신동의 <input type="checkbox" name="userAdPhone" value="ok">
							이메일 광고 수신동의 <input type="checkbox" name="userAdEmail" value="ok">
						</td>
					</tr>
					<tr>
						<td class="btnWrap">
							<input type="submit" value="JOIN" class="btn">
							<input type="reset" value="RESET" class="btn">
							<input type="button" value="BACK" class="btn">
						</td>
					</tr>
				</table>
			</form>
		</section>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>