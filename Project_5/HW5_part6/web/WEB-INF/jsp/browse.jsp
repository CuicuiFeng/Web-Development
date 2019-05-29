<%-- 
    Document   : browse
    Created on : 2019-3-15, 21:29:52
    Author     : fengcu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Searching Movies</title>
</head>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<h1>Searching Movies</h1>
<div>
    <form:form commandName="search" method="post">
        <label>Keyword: </label>
        <form:input path="keyword"/><br/>
        <form:radiobutton path="type" value="title" label="Search By Title"/><br/>
        <form:radiobutton path="type" value="actor" label="Search By Actor"/><br/>
        <form:radiobutton path="type" value="actress" label="Search By Actress"/><br/>
        <input type="submit" name="submit" value="Search Movies"/>
    </form:form>
</div>
</body>
</html>