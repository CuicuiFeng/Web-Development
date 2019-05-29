<%-- 
    Document   : display
    Created on : 2019-2-19, 20:32:26
    Author     : fengcu
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/csvOperator" prefix="csvoperator" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK4_PART4_displayCSV</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
    <csvoperator:readCSV filename="${param.filename}"/>
    </body>
</html>
