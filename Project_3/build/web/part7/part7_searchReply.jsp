<%-- 
    Document   : part7_searchReply
    Created on : 2019-2-12, 20:00:20
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART7_searchReply</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <h1>You searched for "${requestScope.keyword}"</h1>
        <h2>Here are the search results</h2>
        <br/>
        
        <table border=1>
            <tr>
                <th>Movie Title</th>
                <th>Lead Actor</th>
                <th>Lead Actress</th>
                <th>Genre</th>
                <th>Year</th>
            </tr>
            
            
            <c:forEach var="movie" items="${requestScope.result}">
                <tr>
                <th>${movie.title}</th>
                <th>${movie.actor}</th>
                <th>${movie.actress}</th>
                <th>${movie.genre}</th>
                <th>${movie.year}</th>
                </tr>
            </c:forEach>
        </table>
        
        <a href="part7/part7_movieStore.html">Back to the main page</a>
    </body>
</html>
