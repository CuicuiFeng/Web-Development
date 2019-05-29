<%-- 
    Document   : browseResult
    Created on : 2019-3-15, 21:35:04
    Author     : fengcu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Browse Result</title>
</head>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<p>You searched for "${keyword}"</p>
<u>Here are the search results</u><br/>
<table border="1">
    <tr/><th/>Movie Title<th/>Lead Actor<th/>Lead Actress<th/>Genre<th/>Year
    <c:forEach var="movie" items="${result}">
        <tr/><th/>${movie.title}<th/>${movie.actor}<th/>${movie.actress}<th/>${movie.genre}<th/>${movie.year}
    </c:forEach>
</table>

<c:set var="request" value="${pageContext.request}"/>
<c:set var="basePath" value="${request.scheme}://${request.serverName}:${request.serverPort}${request.contextPath}/"/>
<a href="${basePath}index.jsp">Go Back to Main Page</a>
</body>
</html>