<%-- 
    Document   : part8_inputBookNumber
    Created on : 2019-2-5, 20:09:08
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK2_PART8_inputBookNumber</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        
        <h1 >How many books do you want to add?</h1>
        
        <form action="part8_addBookDetails.jsp">
            <input type="text" name="bookNumber" >
            <input type="submit" name="submit" value="Submit" style="background-color:#FFD700;">
        </form>
    </body>
</html>
