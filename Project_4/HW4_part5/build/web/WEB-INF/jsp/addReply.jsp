<%-- 
    Document   : addReply
    Created on : 2019-2-20, 11:29:19
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART5_addReply</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <c:choose>
            <c:when test="${result > 0}">
                <h1 align="center">Movie Added Successfully</h1>
            </c:when>
            <c:otherwise>
                <h1>Movie Added Failed</h1>
            </c:otherwise>
            </c:choose>
                
        <form action="home.htm" method="post">
            <input type="submit" name="submit" value="Go Back to Main Page"/>
            <input type="hidden" name="page" value="result"/>
        </form>
    </body>
</html>
