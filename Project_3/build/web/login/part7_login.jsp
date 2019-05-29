<%-- 
    Document   : part7_login
    Created on : 2019-2-13, 15:49:48
    Author     : fengcu
--%>
<%--
<%
    response.setHeader("Cache-Control", "no-store,no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", -1);
    if (request.getRemoteUser() != null) {
        response.sendRedirect("/login/part7_login.jsp");
    }
%>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART7_login</title>
    </head>
    
    <body  style="background-color:rgba(230, 123, 185, 0.5);">
        <h1 aligh="center">Login</h1>
        
        <form action="j_security_check" method="post">
            User Name: <input type="text" name="j_username"/><br/>
            Password: <input type="password" name="j_password"/><br/>
            <input type="submit" value="Log in"/>
        </form>
    </body>
</html>
