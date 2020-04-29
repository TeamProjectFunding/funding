<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<c:if test="${not empty writeResult}">
	<script>
	swal("${writeResult}", {buttons: false,});
	</script>
</c:if>
<c:if test="${not empty qnaReplyresult}">
	<script>
	swal("${qnaReplyresult}", {buttons: false,});
	</script>
</c:if>



	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="boardWrap">
		<section class="boardListWrap">
			<h1>Q&A</h1>
			<form action="${conPath}/qnaList.do">
				<table>
					<tr>
						<th>
							<input type ="text" name="searchWord" placeholder="작성자를 입력하세요.">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form>
			<table>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
					
					<c:if test="${not empty user || not empty company}">
						<th>REPLY</th>
					</c:if>
					
				</tr>
				<c:forEach var="qna" items="${qnaList}">
					<tr class="boardInfo">
					
						<c:if test="${qna.qnARef eq 0}">
							<td>${qna.qnANumber}</td>
						</c:if>						
						<c:if test="${qna.qnARef != 0}">
							<td>${qna.qnAGroup} - ${qna.qnARef}</td>
						</c:if>
						
						<c:if test="${qna.qnARef eq 0}">
						
							<td><a href="${conPath }/qnaView.do?qnANumber=${qna.qnANumber}&pageNum=${paging.currentPage}">${qna.qnATitle}</a></td>
														
						</c:if>
						
						<c:if test="${qna.qnARef != 0}">
						
							<td><a href="${conPath }/qnaView.do?qnANumber=${qna.qnANumber}&pageNum=${paging.currentPage}">
							
							<c:forEach var="i" begin="0" end="${qna.qnAIndent}">
								<c:if test="${i == qna.qnAIndent}">
									<img src="${conPath}/images/re.jpg" alt="re" width="30px">  
								</c:if>
								<c:if test="${i != qna.qnAIndent }">
									&nbsp; &nbsp; &nbsp; &nbsp;
								</c:if>							
							</c:forEach>							
							${qna.qnATitle}</a></td>
							
						</c:if>						
						
						<td>${qna.writer}</td>
						<td>${qna.qnADate}</td>
						<td>${qna.qnAHit}</td>
						
						<c:if test="${qna.qnAOriginalWriter==2 && (not empty user || not empty company)}">
							<td><a href="qnaReplyForm.do?qnANumber=${qna.qnANumber}&pageNum=${paging.currentPage}" class="button">REPLY</a></td>
						</c:if>
						<c:if test="${(qna.qnAOriginalWriter==0 || qna.qnAOriginalWriter==1) && not empty admin }">
							<td onclick="location.href='qnaReplyForm.do?qnANumber=${qna.qnANumber}&pageNum=${paging.currentPage}'"><a href="#none" class="button">REPLY</a></td>
						</c:if> 						
						
					</tr>		
				</c:forEach>
				
				<c:if test="${not empty user || not empty company }">		
					<tr>
						<th id="buttonWrap" colspan="6">
							<a href="qnaWriteForm.do" class="button">WRITE</a>
						</th>
					</tr>
				</c:if>	
				
			</table>
			
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize}">
					<a href="${conPath }/qnaList.do?pageNum=${paging.startPage-1}&searchWord=${param.searchWord}" class="PREV">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage}">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i}</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						 <a href="${conPath}/qnaList.do?pageNum=${i}&searchWord=${param.searchWord}">${i}</a> 
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
					<a href="${conPath }/qnaList.do?pageNum=${paging.endPage+1}&searchWord=${param.searchWord}" class="NEXT">NEXT</a>
				</c:if>
			</div>
			
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>