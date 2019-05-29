<%-- 
    Document   : viewCart
    Created on : 2019-2-5, 19:23:43
    Author     : fengcu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART5_viewCart</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
        <h1 align="center">View Cart</h1>
        
        <c:set var="cart" value="${sessionScope.cart}"/>
        <form action="/HW3/part5" method="get">
            <table border=1 align="center">
                <tr>
                    <th>Object</th>
                    <th>Amount</th>
                        <c:if test="${cart!= null}">
                            <c:forEach var="item" items="${cart.cart}">
                    <tr>
                        <td>${item.itemName}</td>
                        <td><input type="text" name="${item.itemName}" value="${item.itemCount}"/></td>
                    </tr>
                            </c:forEach>                      
                        </c:if>       
                </tr>               
            </table>
            <br>
            <div>
                <input type="submit" name="Submit" value="Submit">
            </div>
        </form>    
        
        <p><a href="part5_books.html">Go to Books Page</a></p>
        <p><a href="part5_music.html">Go to Music Page</a></p>
        <p><a href="part5_computers.html">Go to Computers Page</a></p>
    </body>
</html>
