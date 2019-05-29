<%-- 
    Document   : add
    Created on : 2019-2-20, 11:24:37
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART6_add</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        
        <table width="800" border="0.5">
            <tr>
            <td colspan="2" style="background-color:rgba(230, 123, 185, 0.5);">
            <h1>Please enter the details below:</h1>
            </td>
            </tr>
            
        <div>
            <form action="movieController_result.htm" method="post">
                <tr>
                    <td style="background-color:#eeeeee;height:500px;width:800px;vertical-align:top;"> 
                    
                <label >Movie Title: </label>
                <input type="text" name="Movie Title">
                <br/><br>
                
                <label >Lead Actor: </label>
                <input type="text" name="Lead Actor">
                <br/><br>
                
                <label >Lead Actress: </label>
                <input type="text" name="Lead Actress">
                <br/><br>
                
                <label >Genre: </label>
                <input type="text" name="Genre">
                <br/><br>
                
                <label >Year: </label>
                <input type="text" name="Year">
                <br/><br>
                
                <input type="submit" name="submit" value="Add Movie" >
                <input type="hidden" name="page" value="add"/>
                </td>
                </tr>
            </form>
        </div>
            
            <tr>
            <td colspan="2" style="background-color:rgba(230, 123, 185, 0.5);text-align:center;">HOMEWORRK4_PART5_add</td>
            </tr>
    </body>
</html>
