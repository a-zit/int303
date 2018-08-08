<%-- 
    Document   : PrimeFinder
    Created on : Mar 22, 2018, 10:07:11 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prime Finder ::</h1><hr>
        <form action="PrimeFinder" method="post">
            Enter number :  <input type="number" name="n" value="${param.n}"/> 
            <input type="submit" />
        </form>
        <hr>
        <c:choose>
            <c:when test="${message==null && param.n != null}">
                <h3 style="color:blue">${param.n} ${isPrime ? " is " : "  is not "} Prime Number</h3>
            </c:when>
            <c:otherwise>
                <h3 style="color:red">${message}</h3>
            </c:otherwise>
        </c:choose>
    </body>
</html>
