<%-- 
    Document   : movieStore
    Created on : 2019-2-20, 11:10:20
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART5_movieStore</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <h1 align="center">Welcome to our Movie Store</h1>
        <p>Please make your selection below</p>
        
        <form action="operate.htm" method="post">
            
            <select name="operation">
                <option value="browseMovies">Browse Movies</option>
                <option value="addMovie">Add New Movie to Database</option>
            </select>
            
            <input type="submit" name="submit" value="Send"/>
            <input type="hidden" name="page" value="home"/>
        </form>
    </body>
</html>
