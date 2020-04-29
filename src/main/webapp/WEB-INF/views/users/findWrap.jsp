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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${conPath}/css/common.css" rel="stylesheet">
<script>	
function getUserId(){
	var id = document.getElementsByName('findId')[0].value;	
	var idPattern = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	if(idPattern.test(id) == false){		
  		alert('이메일 형식 지켜, 입력해 주세요!!!!!!!!');
  	}else{    	
		location.href="${conPath}/findPw.do?userId="+id+"&companyId="+id;		
    }
}
</script>
</head>
<body>
	<div id="findWrap">
		<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		
		<table class="sendMail">
			<tr>
				<th><input type='email' name="findId" placeholder="아이디(이메일)을 입력하세요."></th>
			</tr>
			<tr>
				<th class="buttonWrap">
					<a href="#none" class="button" onclick="getUserId();">SEND</a>
				</th>
			</tr>
			
		</table>
	</div>
</body>
</html>