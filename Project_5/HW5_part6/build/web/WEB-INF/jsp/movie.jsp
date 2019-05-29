<%-- 
    Document   : movie
    Created on : 2019-3-15, 21:42:50
    Author     : fengcu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie Store</title>
</head>

<script language="javascript" type="text/javascript">
    function redirect() {
        var selected = document.getElementById("operation");
        if (selected.value === "browse") {
            window.location.href = "browse.htm";
        } else if (selected.value === "add") {
            window.location.href = "add.htm";
        }
    }
</script>

<body style="background-color:rgba(230, 123, 185, 0.5);">
<h1>Welcome to our Movie Store</h1>
<p>Please make your selection below</p>
<select id="operation">
    <option value="browse">Browse Movies</option>
    <option value="add">Add New Movie to Database</option>
</select>
<button type="button" onclick="redirect()">Send</button>
</body>
</html>
