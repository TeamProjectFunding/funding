<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
		<div class="commentWrap">
			<h3>토론</h3>
			<table class="commentWriteWraps">
				<tr>
					<th>${good.commentCount } 개 의 토론글이 있습니다. </th>
				</tr>
				<tr>
					<th id="buttonWrap">
						<c:if test="${empty sessionScope.user }">
							<a href="#none" class="button" onclick="noUser()">COMMENT</a>
						</c:if>
						<c:if test="${not empty sessionScope.user }">
							<a href="#none" class="button" onclick="commentWriteView()">COMMENT</a>
						</c:if>
					</th>
				</tr>
				<tr class="commentContentArea">
					<th>
						<textarea name="fgCommentsContent" class="fgCommentsContent"></textarea>
					</th>
				</tr>
				<tr class="commentContentArea">
					<th id="buttonWrap"><a href="#none" class="button" onclick="fgCommentsWrite()">WRITE</a></th>
				</tr>
			</table>
			
			<c:forEach var="comment" items="${commentList }">
			<table class="commentContentWrap">
				<tr class="userArea">
					<th><img src="${conPath}/images/profile/${comment.userProfileImage}" alt="userProfile">${comment.userName}</th>
					<td><fmt:formatDate value="${comment.fgCommentsDate}" pattern="yyyy-MM-dd"/></td>
				</tr>
				<tr>
					<td colspan="2">${comment.fgCommentsContent }</td>
				</tr>
				<tr>
					<th colspan="2" id="buttonWrap">
						<a href="#none" class="button replyButton" onclick="commentReplyView('${comment.fgCommentsNumber}')">REPLY
						<c:if test="${comment.fgcommentsReplyCount ne 0 }">
							 ${comment.fgcommentsReplyCount }
						</c:if>
						 </a>
					</th>
				</tr>
			</table>
			
			<table class="replyWrap ReplyList${comment.fgCommentsNumber}"></table>
			</c:forEach>
		</div>
		
	
			
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
				<a href="#none" onclick="goodsCommentPage('${paging.startPage-1 }');" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="#none" onclick="goodsCommentPage('${i }');" > ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
				<a href="#none" onclick="goodsCommentPage('${paging.endPage+1 }');"  class="next">NEXT</a>
				</c:if>
			</div>
</body>
</html>