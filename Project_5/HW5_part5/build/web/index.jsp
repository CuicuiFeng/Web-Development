<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
  <title>Start Page</title>
</head>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<a href="quiz.htm">Start Quiz</a>
</body>
</html>
