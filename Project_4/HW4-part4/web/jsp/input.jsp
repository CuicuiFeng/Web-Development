<%-- 
    Document   : input
    Created on : 2019-2-19, 20:25:31
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART4_inputCSV</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
                <form action="/HW4_part4/jsp/display.jsp" method="post">
                    <label>Input Your CSV File.</label>
                    <input type="text" name="filename"/>
                    <input type="submit" name="submit" value="Submit"/>
                </form> 
    </body>
</html>
