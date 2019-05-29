<%-- 
    Document   : part7_browseMovies
    Created on : 2019-2-5, 19:45:24
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK2_PART7_searchMovies</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <form action="part7" method="post">
        <table width="800" boder="0">
        
        <tr>
        <td colspan="2" style="background-color:rgba(230, 123, 185, 0.5);;text-align:center;">
        <h1>Searching Movies</h1>
        </td>
        </tr>
        
        <div>   
                <tr>
                <td style="background-color:#eeeeee;height:500px;width:800px;vertical-align:top;">
                    <label >KEYWORDDS:</label>
                    <input type="text" name="keyword"><br/>
                    <br>
                    <input type="radio" name="search" value="title" style="background-color:#FFD700;">Search By Title<br/>
                    <br>
                    <input type="radio" name="search" value="actor" style="background-color:#FFD700;">Search By Actor<br/>
                    <br>
                   <input type="radio" name="search" value="actress" style="background-color:#FFD700;">Search By Actress<br/>
                    <br>
                    <input type="submit" name="submit" value="Search Movies" > 
                </td>
                </tr>       
        </div>
        
        <tr>
        <td colspan="2" style="background-color:rgba(230, 123, 185, 0.5);;text-align:center;">HOMEWORRK2_PART7_searchMovies</td>
        </tr>
        </table>
        </form>  
    </body>
</html>
