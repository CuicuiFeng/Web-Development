<%-- 
    Document   : part7_movies
    Created on : 2019-2-5, 19:49:36
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK2_PART7_movieStore</title>
    </head>
        
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <h1>Welcome to our Movie Store</h1>
        <p>Please make your selection below.</p>
        
        <select id="operation">
            <option value="browseMovies">Browse Movies</option>
            <option value="addMovie">Add New Movie to Database</option>
        </select>
        
        <button type="button" onclick="send()" style="background-color:#FFD700;">Send</button>
    </body>
    
    <script language="javascript" type="text/javascript">
        function send() {
            var selected = document.getElementById("operation");
            if (selected.value == "browseMovies") {
                window.location.href = "part7_browseMovies.jsp";
            } else if (selected.value == "addMovie") {
                window.location.href = "part7_addMovie.jsp";
            }          
        }
    </script>
</html>
