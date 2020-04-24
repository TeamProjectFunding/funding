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
					<th>14 의 토론글이 있습니다. </th>
				</tr>
				<tr>
					<th id="buttonWrap">
						<a href="#none" class="button commentButton">COMMENT</a>
					</th>
				</tr>
				<tr class="commentContentArea">
					<th>
						<textarea ></textarea>
					</th>
				</tr>
				<tr class="commentContentArea">
					<th id="buttonWrap"><a href="#none" class="button commnetWriteButton">WRITE</a></th>
				</tr>
			</table>
			
			<table class="commentContentWrap">
				<tr class="userArea">
					<th><img src="" alt=""><span>userName</span></th>
					<td>2020-04-24</td>
				</tr>
				<tr>
					<td colspan="2">comment content</td>
				</tr>
				<tr>
					<th colspan="2" id="buttonWrap">
						<a href="#none" class="button replyButton">REPLY 1</a>
					</th>
				</tr>
			</table>
			
			<table class="replyWrap">
				<tr class="userArea">
					<th><img src="" alt=""><span>userName</span></th>
					<td>
						<textarea ></textarea>
					</td>
					<th id="buttonWrap">
						<a href="#none" class="button replyWriteButton">REPLY WRITE</a>
					</th>
				</tr>
				<tr>
					<th colspan="3" id="buttonWrap">
						<a href="#none" class="button replyWriteButton">REPLY WRITE</a>
					</th>
				</tr>
				<tr class="userArea">
					<th><img src="" alt=""><span>userName</span></th>
					<td colspan="2">2020-04-24</td>
				</tr>
				<tr>
					<td colspan="3">coment Reply content</td>
				</tr>
			</table>
			<script>
				$(function(){
					$('.commentButton').click(function(){
						$('.commentContentArea').slideToggle('1000','swing');		
					});
					$('.replyButton').click(function(){
						$('.replyWrap').slideToggle('1000','swing');		
					});
				});
			</script>
		</div>
		
	
			
			<%-- <c:if test="${empty sessionScope.user }">
					<a href="#none" class="button" onclick="noUser()">comment</a>
			</c:if>
			<c:if test="${not empty sessionScope.user }">
					<a href="#none" class="button" onclick="commentWriteView()">comment</a>
			</c:if>
			</h3>
			<div class="debateReplyArea" id="debateArea"></div>
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
				<div class="debateReplyArea ReplyWrite${comment.fgCommentsNumber }"></div>
				<div class="debateReplyList ReplyList${comment.fgCommentsNumber }"></div>
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
			</div> --%>
</body>
</html>