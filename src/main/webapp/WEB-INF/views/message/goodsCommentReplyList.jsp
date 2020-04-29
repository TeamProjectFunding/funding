<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<body>
		<c:if test="${not empty noUser }">
		<tr class="userArea">
			<th colspan="3"><a href="${conPath }/login.do">글작성은 로그인 이후 가능합니다</a></th>
		</tr>
		</c:if>
		<c:if test="${empty noUser }">
		<tr class="userArea">
			<th><img src="${conPath}/images/profile/${user.userProfileImage}" alt="userProfile"><span>${user.userName }</span></th>
			<td><textarea name="fgCommentsReplyContent" class="fgCommentsReplyContent${fgCommentsNumber }"></textarea></td>
			<th id="buttonWrap"><a href="#none" class="button replyWriteButton" onclick="fgCommentsReplyWrite('${fgCommentsNumber }');">REPLY WRITE</a></th>
		</tr>
		</c:if>

		<c:forEach var="commentReply" items="${commentReplyList }">
			<tr class="userArea">
				<th><img src="${conPath}/images/profile/${commentReply.userProfileImage}" alt="userProfile"><span>${commentReply.userName}</span></th>
				<td>${commentReply.fgCommentsReplyContent }</td>
				<td><fmt:formatDate value="${commentReply.fgCommentsReplyDate}" pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
</body>
</html>