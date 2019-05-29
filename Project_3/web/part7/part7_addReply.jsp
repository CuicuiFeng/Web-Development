<%-- 
    Document   : part7_addReply
    Created on : 2019-2-12, 19:59:59
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART7_addreply</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <fmt:parseNumber var="flag" integerOnly="true" type="number" value="${requestScope.result}" />
        <c:choose>
            <c:when test="${flag > 0}">
                <h1>1 Movie Added Successfully</h1>
            </c:when>
            <c:otherwise>
                <h1>Movie Added Failed</h1>
            </c:otherwise>
        </c:choose>
                
        <a href="part7/part7_movieStore.html">Back to the main page</a>
    </body>
</html>
