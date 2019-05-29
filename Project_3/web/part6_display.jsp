<%-- 
    Document   : part6_display
    Created on : 2019-2-12, 18:41:49
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART6_display</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <c:set var="filename" value="${sessionScope.filename}"/>
        <h1>${filename}.csv</h1>
        
        <c:set var="titles" value="${sessionScope.titles}"/>
        <c:set var="results" value="${sessionScope.results}"/>
        
        <table>
            <tr>
            <c:forEach var="columnName" items="${titles}">
                <th>${columnName}</th>
            </c:forEach>
                
            <c:forEach var="row" items="${results}">
                <tr>
                <c:forEach var="cell" items="${row}">
                    <td>${cell}</td>
                </c:forEach>
                </tr>
            </c:forEach>
            </tr>         
        </table>
    </body>
</html>
