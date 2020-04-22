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
					<form action="">
						<table>
							<tr>
								<th><img src="" alt="userProfile"> userName</th>
								<td></td>
							</tr>
							<tr>
								<th>
									<textarea></textarea>
								</th>
								<td id="buttonWrap" rowspan="2">
									<input type="submit" value="SUBMIT" class="button">
								</td>
							</tr>
						</table>
					</form>
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
					<form action="">
						<table>
							<tr>
								<th><img src="" alt="userProfile"> userName</th>
								<td></td>
							</tr>
							<tr>
								<th>
									<textarea></textarea>
								</th>
								<td id="buttonWrap" rowspan="2">
									<input type="submit" value="SUBMIT" class="button">
								</td>
							</tr>
						</table>
					</form>
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
			
		</div>
</body>
</html>