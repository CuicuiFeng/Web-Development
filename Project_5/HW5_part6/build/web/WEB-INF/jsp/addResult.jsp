<%-- 
    Document   : addResult
    Created on : 2019-3-15, 21:25:25
    Author     : fengcu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Result</title>
</head>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<c:choose>
    <c:when test="${result > 0}">
        <h1>1 Movie Added Successfully</h1>
    </c:when>
    <c:otherwise>
        <h1>Movie Added Failed</h1>
    </c:otherwise>
</c:choose>
        
<c:set var="request" value="${pageContext.request}"/>
<c:set var="basePath" value="${request.scheme}://${request.serverName}:${request.serverPort}${request.contextPath}/"/>
<a href="${basePath}index.jsp">Go Back to Main Page</a>
</body>
</html>