<%-- 
    Document   : ResultPage
    Created on : 2019-3-17, 22:49:31
    Author     : fengcu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HOMEWORRK5_PART4_ResultPage</title>
</head>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<h1>Result</h1>
<c:forEach var="question" items="${questionList.questionList}">
    <p>Question ${questionList.questionList.indexOf(question)+1}: ${question.question}</p>
    <p>Your Answer: ${question.userOption}</p>
    <p>Correct Answer: ${question.correctOption}</p>
    <br/>
</c:forEach>
</body>
</html>
