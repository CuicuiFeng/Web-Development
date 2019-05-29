<%-- 
    Document   : part5_addSucces
    Created on : 2019-2-11, 16:14:55
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART5_addReply</title>
    </head>
    <body style="background-color:rgba(255,255,0,0.5);">
        <c:set var="items" value="${sessionScope.items}"/>
        <c:choose>
            <c:when test="${items != null}">
                <h2 align="center">The item has been added to your shopping cart.</h2>
                <c:forEach var="name" items="${items}">
                    <p>${name}</p>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <h2 align="center">Please choose some item add to your cart.</h2> 
            </c:otherwise> 
        </c:choose>
                
        <p><a href="part5/part5_viewCart.jsp">View cart</a></p>
        <p><a href="part5/part5_books.html">Go to Books Page</a></p>
        <p><a href="part5/part5_music.html">Go to Music Page</a></p>
        <p><a href="part5/part5_computers.html">Go to Computers Page</a></p>
    </body>
</html>
