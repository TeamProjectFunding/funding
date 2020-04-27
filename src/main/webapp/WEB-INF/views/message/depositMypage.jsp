<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
<fmt:formatNumber value="${dNWAmount }" currencySymbol="true"/>원 입급되었습니다.
</body>
</html>