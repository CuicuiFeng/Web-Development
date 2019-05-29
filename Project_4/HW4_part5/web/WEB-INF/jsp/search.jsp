<%-- 
    Document   : search
    Created on : 2019-2-20, 11:14:32
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART5_search</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <table width="800" border="0.5">
        <tr>
        <td colspan="2" style="background-color:rgba(230, 123, 185, 0.5);;text-align:center;">
        <h1 align="center">Searching Movies</h1>
        </td>
        </tr>
        
        <div>
            <form action="result.htm" method="post">
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
                    <input type="hidden" name="page" value="search"/>
                </td>
                </tr>
            </form>
        </div>
        
        <tr>
        <td colspan="2" style="background-color:rgba(230, 123, 185, 0.5);;text-align:center;">HOMEWORRK4_PART5_searchMovies</td>
        </tr>
        </table>
    </body>
</html>
