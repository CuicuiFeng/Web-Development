<%-- 
    Document   : quiz
    Created on : 2019-3-16, 1:09:01
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HOMEWORRK5_PART4_QUIZ</title>
</head>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<c:choose>
    <c:when test="${page.equals('question')}">
        <h1>Question ${questionIndex}: ${question.question}</h1>
        <c:choose>
            <c:when test="${questionIndex < 3}">
                <c:set var="redirectValue" value="${questionIndex+1}"/>
            </c:when>
            <c:otherwise>
                <c:set var="redirectValue" value="result"/>
            </c:otherwise>
        </c:choose>
        
        <form action="${redirectValue}.htm" method="post">
            A. <input type="radio" name="option" value="A"/>${question.optionA}<br/>
            B. <input type="radio" name="option" value="B"/>${question.optionB}<br/>
            C. <input type="radio" name="option" value="C"/>${question.optionC}<br/>
            D. <input type="radio" name="option" value="D"/>${question.optionD}<br/>
            <input type="submit" name="Submit" value="Next"/>
        </form>
            
    </c:when>
    <c:otherwise>
        <h1>Result</h1>
        <c:forEach var="question" items="${questionList}">
            <p>Question ${questionList.indexOf(question)+1}: ${question.question}</p>
            <p>Your Answer: ${userAnswer.get(question)}</p>
            <p>Correct Answer: ${question.correctOption}</p>
            <br/>
        </c:forEach>
    </c:otherwise>
</c:choose>
</body>
</html>
