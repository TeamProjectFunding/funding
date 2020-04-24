<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<body>
<form action="#none">
	<table>
		<tr>
			<th><img src="${conPath}/images/profile/${user.userProfileImage}" alt="userProfile">${user.userName}</th>
			<td></td>
		</tr>
		<tr>
			<th>
				<textarea name="fgCommentsReplyContent" class="textarea${fgCommentsNumber }"></textarea>
			</th>
			<td id="buttonWrap" rowspan="2">
				<input type="button" value="SUBMIT" class="button" onclick="fgCommentsReplyWrite('${fgCommentsNumber }')">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
