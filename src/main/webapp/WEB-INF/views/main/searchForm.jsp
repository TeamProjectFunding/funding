<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$('input[name="searchWord"]').keyup(function() {
			var searchWord = $(this).val();
			$.ajax({
				type: "POST",
				url: "${conPath}/fundSearchList.do",
				data: "searchWord="+searchWord,
				dataType: "html",
				success: function(data){
					$('.searchResult').html(data);
				}
				
			})
			
		});

	});
</script>
</head>
<body>
	<!-- 현재 날짜 -->
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
		integerOnly="true" var="nowDate" />
	<div id="searchWrap" class="popupWrap">
		<div class="closeButton">
			<span></span> <span></span>
		</div>
		<script>
			$(function() {
				$('.closeButton').click(function() {
					$('.popupWrap').slideUp();
				});
			});
		</script>
		<div id="contentWrap">
			<form action="#">
				<table>
					<tr>
						<th><input type="text" placeholder="상품 검색어를 입력 하세요"
							name="searchWord"></th>
						<td id="buttonWrap"><input type="submit" value="SEARCH"
							class="button"></td>
					</tr>
				</table>
			</form>
			<section class="goodsWrap">
				<div class="goodsListWrap searchResult">
					
				</div>
			</section>
		</div>
	</div>
</body>