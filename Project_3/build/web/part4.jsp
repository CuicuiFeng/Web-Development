<%-- 
    Document   : part4
    Created on : 2019-2-9, 22:27:30
    Author     : fengcu
--%>
<%@ page import="java.util.*,java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEWORRK3_PART4</title>
    </head>
    
    <body style="background-color:rgba(230, 123, 185, 0.5);">
    <h1 align="center">Core Tag Examples</h1>
        <h2>Example of c(1):set</h2>
        <c:set var="salary" scope="session" value="${200*3}"/>
        <c:out value="${salary}"/>
        
        <h2>Example of c(2):remove</h2>
        <c:set var="name"  scope="session" value="$feng"/>
        <p>name:<c:out value="${name}"/></p>
        <c:remove var="name"/>
        <p>after delete:<c:out value="${name}"/></p>

        <h2>Example of c(3):if</h2>
        <c:set var="age" scope="session" value="${2*3}"/>
        <c:if test="${age>5}">
            <p>The age is:<c:out value="${age}"/></p>
        </c:if>
        
    <h1 align="center">Format Tag Examples</h1>
        <h2>Example of fmt(1):formatNUmber</h2>
        <c:set var="money" value="123.45"/>
        <fmt:formatNumber value="${money}" type="currency"/>
        <p>Money is:<c:out value="${money}"/></p>

        <h2>Example of fmt(2):parseNumber</h2>
        <fmt:parseNumber var="testNumber" integerOnly="true" type="number" value="${money}"/>
        <p>TestNUmber is:<c:out value="${testNumber}"/></p>
        
        <h2>Example of fmt(3):parseDate</h2>
        <c:set var="date" value="12-02-2019"/>
        <fmt:parseDate value="${date}" var="parseDate" pattern="dd-MM-yyyy"/>
        <p>The date is:<c:out value="${date}"/></p>
            
    <%--
    <h1>SQL Tag EXample</h1>
        <h2>Example of sql:setDataSource</h2>
        <sql:setDataSource var="dataTest" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/database?serverTimezone=UTC"
                           user="root" password="12345678"/>
        <sql:query dataSource="${dataTest}" sql="..." var="result"/>
        
        <h2>Example of sql:query</h2>
        <sql:query dataSource="${dataSource}" var="result">
            select * from database.movies;
        </sql:query>
            <table border="1" width="100%">
                <tr>
                    <th>title</th>
                    <th>actor</th>
                    <th>actress</th>
                    <th>genre</th>
                    <th>year</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.title}"/></td>
                        <td><c:out value="${row.actor}"/></td>
                        <td><c:out value="${row.actress}"/></td>
                        <td><c:out value="${row.genre}"/></td>
                        <td><c:out value="${row.year}"/></td>
                    </tr>
                </c:forEach>
            </table>
        --%>
        <h1 align="center">XML Tag Example</h1>
        <c:set var="xmltext">
        <books>
            <book>
                <name>history</name>
                <author>adam</author>
                <price>100</price>
            </book>
            <book>
                <name>fiction</name>
                <author>tom</author>
                <price>200</price>
            </book>
        </books>
        </c:set>
        <h2>Example of x(1):parse</h2>
        <x:parse xml="${xmltext}" var="output"/>
        <b>The title of the first book is:</b>
        <x:out select="$output/books/book[1]/name"/>
        <br>
        <b>The price of the second book is:</b>
        <x:out select="$output/books/book[2]/price"/>
        
        <h2>Example of x(2):set</h2>
        <x:parse xml="${xmltext}" var="output"/>
        <x:set var="fragment" select="$output//book"/>
        <b>The price of the second book is:</b>
        <c:out value="${fragment}"/>
        
        <h2>Example of x(3):choose</h2>
        <x:parse xml="${xmltext}" var="output"/>
        <x:choose>
            <x:when select="$output/book/author='adam'">
            Book is written by adam.
            </x:when>
            <x:when select="$output/book/authoe='tom'">
            Book is written by tom.
            </x:when>
            <x:otherwise>
                Unknown author.
            </x:otherwise>
        </x:choose>
        
        <h1 align="center">Function Tag Example</h1>
        <h2>Example of fn(1):contains</h2>
        <c:set var="theString" value="string"/>
        <c:if test="${fn:contains(theString,'ing')}">
        <p>Found "ing".</p>
        </c:if>
        
        <h2>Example of fn(2):endsWith</h2>
        <c:set var="girl" value="I am a girl"/>
        <c:if test="${fn:endsWith(girl,'girl')}">
        <p>End with girl.</p>
        </c:if>
        <c:if test="${fn:endsWith(girl,'boy')}">
        <p>End with boy.</p>
        </c:if>      
         
        <h2>Example of fn(3):length</h2>
        <c:set var="string1" value="I am the first string."/>
        <c:set var="string2" value="I am the second string"/>
        <p>The first string's length is:${fn:length(string1)}</p>
        <p>The second string's length is:${fn:length(string2)}</p>
              
    </body>
</html>
