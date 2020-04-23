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
		<div id="goodsViewContentWrap"  class="debateWrap">
		
			<h3>토론</h3>
			<c:forEach var="comment" items="${commentList }">
				<div class="debateListWrap">
					<ul>
						<li>
							<ol>
								<li class="userInfo"><img src="${conPath}/images/profile/${comment.userProfileImage}" alt="userProfile">${comment.userName}</li>
								<li class="debateDate"><fmt:formatDate value="${comment.fgCommentsDate}" pattern="yyyy-MM-dd"/></li>
							</ol>
						</li>
						<li>
							<ol>
								<li class="debateContent">${comment.fgCommentsContent }</li>
								<li id="buttonWrap">
									<c:if test="${not empty sessionScope.user }">
										<a href="#none" class="button replyButton" onclick="commentReplyWriteView(${comment.fgCommentsNumber})">REPLY</a>
									</c:if>
									<c:if test="${empty sessionScope.user }">
										<a href="#none" class="button replyButton" onclick="noUser()">REPLY</a>
									</c:if>
								
								<c:if test="${comment.fgcommentsReplyCount > 0 }">
								<a href="#none" class="button replyListButton" onclick="commentReplyView(${comment.fgCommentsNumber})">
								댓글${comment.fgcommentsReplyCount }
								</a>
								</c:if>
								</li>
							</ol>
						</li>
					</ul>
				<div class="debateReplyArea ReplyWrite${comment.fgCommentsNumber }">
				</div>
				<div class="debateReplyList ReplyList${comment.fgCommentsNumber }">
				</div>
			</div>
			</c:forEach>
			
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
			<!-- 예제 
			<div class="debateListWrap">
				<ul>
					<li>
						<ol>
							<li class="userInfo"><img src="" alt="userProfile">userId</li>
							<li class="debateDate">2020-04-17</li>
						</ol>
					</li>
					<li>
						<ol>
							<li class="debateContent">도산했냐 아오 썅 !!!!! </li>
							<li id="buttonWrap"><a href="#none" class="button replyButton">REPLY</a><a href="#none" class="button replyListButton">댓글1</a></li>
						</ol>
					</li>
				</ul>
				<div class="debateReplyArea">
					
				</div>
				<div class="debateReplyList">
					<ul>
						<li>
							<ol>
								<li class="userInfo"><img src="" alt="userProfile">userId</li>
								<li class="debateDate">2020-04-17</li>
							</ol>
						</li>
						<li>
							<ol>
								<li class="debateContent">그래임마!!!!! </li>
								<li></li>
							</ol>
						</li>
					</ul>
				</div>
			</div>
			-->
			
		</div>
</body>
</html>