<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <link href="${conPath}/css/common.css" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
   family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>

<header>
   <c:if test="${not empty result || not empty param.result}">
   <p id="messageWrap">반갑습니다.</p>
   <script>
      $(function(){
         $('#messageWrap').delay(1000).slideUp();
      });
   </script>
   </c:if>
   <div id="headerWrap">
      <a href="main.do" class='headerLogo'>CROWD<br>FUND</a>
      <div class='menuWrap'>
         <ul class="util">
            
            <c:if test="${empty admin}">   
               <li><a href="adminLogin.do">ADMIN LOG-IN</a></li>
            </c:if>
            
            <%-- <c:if test="${not empty admin}">
               <li><a href="adminMain.do">ADMIN</a></li>
            </c:if> --%>
            
            <c:if test="${empty sessionScope.user && empty sessionScope.company && empty admin }">
               <li><a href="loginView.do">LOG-IN</a></li>
               <li><a href="join.do">JOIN</a></li>
            </c:if>   
            
            <c:if test="${not empty sessionScope.user || not empty sessionScope.company}">
               <li>
                  <a href="#none" class="mypageButton">
                     
                     <c:if test="${not empty sessionScope.user.userProfileImage || not empty sessionScope.company.companyProfileImage}">
                        <img src="${conPath}/images/profile/${user.userProfileImage}${company.companyProfileImage}" alt="profile" >
                     </c:if>                     
                     
                     <c:if test="${sessionScope.user.userProfileImage eq null && sessionScope.company.companyProfileImage eq null}">
                        <i class="material-icons">account_circle</i>
                     </c:if>         

                  </a>
               </li>
               <li><a href="${conPath}/logout.do">LOG_OUT</a></li>
            </c:if>
            
            <c:if test="${not empty admin}">
               <li>
                  <a href="adminMain.do" class="mypageButton">
                     
                     <c:if test="${not empty admin.adminProfileImage}">
                        <img src="${conPath}/images/profile/${admin.adminProfileImage}" alt="profile">
                     </c:if>                     
                     
                     <c:if test="${admin.adminProfileImage eq null}">
                        <i class="material-icons">account_circle</i>
                     </c:if>                  

                  </a>
               </li>
               <li><a href="${conPath}/logout.do">LOG_OUT</a></li>
            </c:if>                           
            
            <c:if test="${not empty sessionScope.user && empty sessionScope.company}">
               <li><a href="#none" class="alarmButton"><!-- img src="" alt="alarm" -->alarm<c:if test="${user.notificationCount >= 1}"><span class="alarm"></span></c:if></a></li>
            </c:if>
            <c:if test="${not empty sessionScope.company && empty sessionScope.user}">
               <li><a href="#none" class="alarmButton"><!-- img src="" alt="alarm" -->alarm<c:if test="${company.notificationCount >= 1 }"><span class="alarm"></span></c:if></a></li>
            </c:if>
            <li><a href="#none" class="searchButton"><!-- img src="" alt="search" -->search</a></li>
         </ul>
         <script>
            $(function(){
               $('.searchButton').click(function(){
                  $('#searchWrap').slideDown();
               });
               $('.mypageButton').click(function(){

                  $('#mypageWrap').slideToggle();

               });
               $('.alarmButton').click(function(){
                  $('#alarmWrap').slideDown();
               });
               
               $(window).scroll(function(){ 
                   var height = $(document).scrollTop(); //실시간으로 스크롤의 높이를 측정
                   if(height > 200){ 
                     $('header').addClass('scroll'); 
                   }else if(height == 0){ 
                     $('header').removeClass('scroll'); 
                   } 
                 });
            });
         </script>
         <ul class="gnb">
            <li><a href="fundList.do?category=fund">FUND</a></li>
            <li><a href="fundList.do?category=reward">REWARD</a></li>
            <li><a href="eventList.do">EVENT</a></li>
            <li><a href="qnaList.do">Q&A</a></li>
            <li><a href="noticeList.do">NOTICE</a></li>
         </ul>
      </div>
   </div>
   <jsp:include page="alarm.jsp"/>
   <jsp:include page="mypageMenu.jsp"/>   
</header>
<jsp:include page="searchForm.jsp"/>