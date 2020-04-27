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
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(document).ready(function(){		
		
		/* 아이디 중복 체크 ajax+ 정규표현식 */
		$('.confirmKeyUp').keyup(function(){
		      var idPattern = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		      if(idPattern.test($(this).val()) == false){
		    	  $('.idConfirm').html("<span class='danger'>이메일 형식에 맞게 입력하세요.</span>");
		      }else{
				$.ajax({
					url : '${conPath}/idConfirm.do',
					datatype : 'html',
					data : "userId="+$(this).val()+"&companyId="+$(this).val(),
					success : function(data, status){
						$('.idConfirm').html(data);
					}
				});
		      }
		});
		
		/* 비밀번호 체크 정규표현식 */
		$('.pwchk').keyup(function(){
			var pwDegreeSafety = 0;
			var pwPatternNumber = /[0-9]/;
    		var pwPatternEnglish = /[a-zA-Z]/;
			var pwPatternSymbol = /[!@#$%^*+=-]/;
			/* 안전도 */
			
			
			var pw = $('.pw').val();
			var pwchk = $('.pwchk').val();
			if(pw != pwchk){
				$('.passwordConfirm').html('<span class="danger">불일치</span>');	
				$('.passWordSafety').html('');
			}else{
				if(pwPatternNumber.test($(this).val())){
					pwDegreeSafety++;
				}
				if(pwPatternEnglish.test($(this).val())){
					pwDegreeSafety++;
				}
				if(pwPatternSymbol.test($(this).val())){
					pwDegreeSafety++;
				}
				if(pwDegreeSafety < 2){
					$('.passWordSafety').html('<span class="danger"> ■□□ 위험 </span>');					
				}else if(pwDegreeSafety == 2){
					$('.passWordSafety').html('<span class="normal"> ■■□ 중간 </span>');					
				}else if(pwDegreeSafety > 2){
					$('.passWordSafety').html('<span class="safety"> ■■■ 안전 </span>');					
				}
				
				$('.passwordConfirm').html('<span class="safety">일치</span>');
			}			
		});
		
		
	});
</script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
		<section class="joinFormWrap">
			<form action="${conPath}/joinResult.do" method="post" enctype="multipart/form-data">
				
				<c:if test="${method eq 'user'}">
				
					<!-- user join form -->
					<table class="user">
						<tr>
							<th><h2>회원 기본 정보</h2></th>
						</tr>
						<tr>
							<td><input type="email" name="userId" placeholder="아이디(이메일)를 입력하세요" required="required" class="confirmKeyUp"></td>
						</tr>
						<tr>
							<td>
								<p class="idConfirm">
								</p>
							</td>
						</tr>
						<tr>
							<td><input type="password" name="userPassword" placeholder="비밀번호을 입력하세요." required="required" class="pw"></td>
						</tr>
						<tr>
							<td>
								<p class="passWordSafety">
								</p>
							</td>
						</tr>
						<tr>
						
							<td><input type="password" name="userPasswordCheck" placeholder="다시한번 비밀번호를 입력하세요" required="required" class="pwchk"></td>
						</tr>
						<tr>
							<td>
								<p class="passwordConfirm">									
									
								</p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userName" placeholder="이름을 입력하세요." required="required"></td>
						</tr>
						<tr>
							<td><input type="text" name="userPhone" placeholder="연락처를 입력하세요" required="required"></td>
						</tr>
						<tr>
							<th><h2>추가정보</h2></th>
						</tr>
						<tr>
							<td><input type="file" name="file"></td>
						</tr>
						<tr>
							<td>
								<input type="date" name="userBirthDay">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="sample4_postcode" name="userPost" class="postBox"  placeholder="우편번호">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="button postButton">
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
							<td><input type="text" name="userAddressDetail" placeholder="상세주소를 입력하세요"></td>
						</tr>
						<tr>
							<td class="checkBoxWrap">
								휴대폰 광고 수신동의 <input type="checkbox" name="userAdPhone" value="1">
								이메일 광고 수신동의 <input type="checkbox" name="userAdEmail" value="1">
							</td>
						</tr>
						<tr>
							<th id="buttonWrap">
								<input type="submit" value="JOIN" class="button">
								<input type="reset" value="RESET" class="button">
								<input type="button" value="BACK" class="button">
							</th>
						</tr>
					</table>
				
				</c:if>
				
				
				<c:if test="${method eq 'company'}">
				
				<!-- company join form -->
					<table class="company">
						<tr>
							<th><h2>기업 기본 정보</h2></th>
						</tr>
						<tr>
							<td><input type="email" name="companyId" placeholder="아이디(이메일)를 입력하세요" required="required" class="confirmKeyUp"></td>
						</tr>
						<tr>
							<td>
								<p class="idConfirm">									
								</p>
							</td>
						</tr>
						<tr>
							<td><input type="password" name="companyPassword" placeholder="비밀번호을 입력하세요." required="required" class="pw"></td>
						</tr>
						<tr>
							<td>
								<p class="passWordSafety">
								</p>
							</td>
						</tr>
						<tr>
						
							<td><input type="password" name="companyPasswordCheck" placeholder="다시한번 비밀번호를 입력하세요" required="required" class="pwchk"></td>
						</tr>
						<tr>
							<td>
								<p class="passwordConfirm">
								</p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="companyBusinessNumber" placeholder="사업자 번호를 입력하세요" required="required"></td>
						</tr>
						<tr>
							<td><input type="text" name="companyName" placeholder="이름을 입력하세요." required="required"></td>
						</tr>
						<tr>
							<td><input type="text" name="companyPhone" placeholder="연락처를 입력하세요" required="required"></td>
						</tr>
						<tr>
							<th><h2>추가정보</h2></th>
						</tr>
						<tr>
							<td><input type="file" name="file"></td>
						</tr>
						<tr>
							<td>
								<input type="text" id="sample4_postcode" name="companyPost" class="postBox"  placeholder="우편번호">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="button postButton">
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
							<td><input type="text" name="companyAddressDetail" placeholder="상세주소를 입력하세요"></td>
						</tr>						
						<tr>
							<th id="buttonWrap">
								<input type="submit" value="JOIN" class="button">
								<input type="reset" value="RESET" class="button">
								<input type="button" value="BACK" class="button">
							</th>
						</tr>
					</table>
				</c:if>
			</form>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>