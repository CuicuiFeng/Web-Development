<%-- 
    Document   : viewCart
    Created on : 2019-2-5, 19:23:43
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK1_PART1_viewCart</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        	<%@ page import="java.util.*"%>
	        <%
		    session = request.getSession();
		    Map<String, Integer> cart = (Map<String, Integer>)session.getAttribute("cart");
		    if (cart == null) {
			cart = new HashMap<String, Integer>();
		}
	        %>
	<h2 align="center">View Your Cart</h2>
	<form action="part1" method="get">
		<table border=1 align="center">
			<tr><th>Object<th>Amount
			<%for (Map.Entry<String, Integer> object : cart.entrySet()) {%>
				<tr><td><%=object.getKey()%>
				<td><input type="text" name="<%=object.getKey()%>" value="<%=object.getValue()%>">
			<%}%>
		</table>
		<br/>
		<div align="center">
			<input type="submit" name="Submit" value="Submit">
		</div>
	</form>
    </body>
</html>
