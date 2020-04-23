<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<body>
<c:forEach var="commentReply" items="${commentReplyList }">
<ul>
	<li>
		<ol>
			<li class="userInfo"><img src="${conPath}/images/profile/${commentReply.userProfileImage}" alt="userProfile">${commentReply.userName}</li>
			<li class="debateDate"><fmt:formatDate value="${commentReply.fgCommentsReplyDate}" pattern="yyyy-MM-dd"/></li>
		</ol>
	</li>
	<li>
		<ol>
			<li class="debateContent">${commentReply.fgCommentsReplyContent } </li>
			<li></li>
		</ol>
	</li>
</ul>
</c:forEach>
</body>
</html>