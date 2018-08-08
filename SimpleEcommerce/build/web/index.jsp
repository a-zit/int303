<%-- 
    Document   : index
    Created on : Mar 16, 2018, 11:40:36 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <title>Simple Ecommerce</title>
    </head>
    <body>
        <div class="container-fluid">

            <jsp:include page="WEB-INF/local-jsp/Header.jsp?title=Home Page" flush="true"/>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <p> M a i n &nbsp;  M e n u : : </p>
                    <p><a href="Page1">Page #1</a></p>
                    <p><a href="Page2">Page #2</a></p>
                    <p><a href="Page3">Page #3</a></p>
                    <p><a href="Page4">Page #4</a></p>
                    --------------------------------
                    <p><a href="ProductList">Our Product</a></p>
                    <p><a href="GetOrderHistory">Order History</a></p>
                    <p><a href="YourProfile.jsp" ${user==null ? 'style="pointer-events: none;color: darkgray"': ''}>Your Profile</a></p>
                    --------------------------------
                    <p>                           
                        <a href="${user!=null ? 'Logout' : 'Login'}">
                            ${user!=null ? 'Log out' : 'Log in'}
                        </a>
                    </p>
                </div>
                <div class="col-sm-1 col-lg-1"></div>
            </div>
        </div>
    </body>
</html>
