<%-- 
    Document   : ProductList
    Created on : Feb 15, 2018, 9:05:28 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="tf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <style>
            .img-thumbnail {
                width: auto;
                height: 120px;
            }
        </style>
        <title>Product Listing</title>
    </head>
    <body>
        <div class="container-fluid">

            <jsp:include page="WEB-INF/local-jsp/Header.jsp?title=Product Listing" flush="true"/>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <form action="ProductList" method="post">
                        <table class="table-info">
                            <tr>
                                <td>Enter product name: </td>
                                <td style="padding-right: 20px">
                                    <input type="text" required name="productName" value="${param.productName}"/>
                                </td>
                                <td><input type="submit"/></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="color: red;font-size: larger">${message}</td>
                            </tr>
                        </table>
                    </form>
                    <hr>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                        <div class="row">
                            <c:forEach items="${products}" var="p" varStatus="vs" >
                                <tf:ProductCard product="${p}"/>
                            </c:forEach>
                        </div>
                </div>
            </div>
        </div>
    </body>
</html>
