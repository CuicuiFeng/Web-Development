<%-- 
    Document   : searchReply
    Created on : 2019-2-20, 11:21:18
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART5_searchReply</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <p>You searched for "${keyword}"</p>
        <u>Here are the search results</u><br/>
        
        <table border="1">
            <tr>
                <th>Movie Title</th>
                <th>Lead Actor</th>
                <th>Lead Actress</th>
                <th>Genre</th>
                <th>Year</th>
            </tr>
            
            <c:forEach var="movie" items="${result}">
                <tr>
                <th>${movie.title}</th>
                <th>${movie.actor}</th>
                <th>${movie.actress}</th>
                <th>${movie.genre}</th>
                <th>${movie.year}</th>
                </tr>
            </c:forEach>
        </table>
        
        <form action="home.htm" method="post">
            <input type="submit" name="submit" value="Go Back to Main Page"/>
            <input type="hidden" name="page" value="result"/>
        </form>
    </body>
</html>
