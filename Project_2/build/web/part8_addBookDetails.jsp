<%-- 
    Document   : part8_addBookDetails
    Created on : 2019-2-5, 20:14:26
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK2_PART8_addBookDetails</title>
    </head>
    
    <body  style="background-color:rgba(230, 123, 185, 0.5);">
        <%
            String bookNumber = request.getParameter("bookNumber");
            int count = Integer.valueOf(bookNumber);
        %>
        
        <form action="part8" method="get">
            <table border="1" style="background-color:#FFD700;">
                <tr/><th/>ISBN<th/>Book Title<th/>Authors<th/>Price
                <%for (int i = 0; i < count; i++) {%>
                    <tr/>
                    <td/><input type="text" name="isbn<%=String.valueOf(i)%>"/>
                    <td/><input type="text" name="title<%=String.valueOf(i)%>"/>
                    <td/><input type="text" name="authors<%=String.valueOf(i)%>"/>
                    <td/><input type="text" name="price<%=String.valueOf(i)%>"/>
                <%}%> 
                <tr/><td/> 
            </table>
            <input type="submit" name="submit" value="Add Books" style="background-color:#FFD700;">
            <input type="hidden" name="bookNumber" value="<%=bookNumber%>">
        </form>
    </body>
</html>
