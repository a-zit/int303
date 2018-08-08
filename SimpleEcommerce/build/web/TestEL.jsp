<%-- 
    Document   : TestEL
    Created on : Feb 15, 2018, 10:47:53 AM
    Author     : INT303
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="sit.int303.demo.model.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Product> products = new ArrayList() ;
            products.add(new Product("X-01")) ;
            products.add(new Product("X-02")) ;
            products.add(new Product("X-03")) ;
            products.add(new Product("X-04")) ;
            products.add(new Product("X-05")) ;
            products.add(new Product("X-06")) ;
            products.add(new Product("X-07")) ;
            products.add(new Product("X-08")) ;
            pageContext.setAttribute("productList", products);
        %>
        ${pageScope.productList[0].productcode} <br>
        ${pageScope.productList[5].productcode} <br>
        <table>
            <tr><td>Header Name</td><td>Value(s)</td></tr>
            <tr><td>Accept</td><td>${header.Accept}</td></tr>
            <tr><td>Accept-Language</td><td>${header["Accept-Language"]}</td></tr>
        </table>
        <table>
            <tr>
                <td colspan="2">Param Values</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>Value(s)</td>
            </tr>
            <c:forEach items="${paramValues.m}" var="m">
                <tr>
                    <td></td>
                    <td>${m}</td>
                </tr>
            </c:forEach>
        </table>
        <table>
            <tr>
                <td>Param</td>
                <td>Value</td>
            </tr>
            <tr>
                <td>x</td>
                <td>${param.x}</td>
            </tr>
            <tr>
                <td>y</td>
                <td>${param.y}</td>
            </tr>
            <tr>
                <td>x * y</td>
                <td>${param.x * param.y}</td>
            </tr>
        </table>

    </body>
</html>
