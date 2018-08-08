<%-- 
    Document   : OrderHistory
    Created on : Apr 30, 2018, 4:27:01 PM
    Author     : Khaitong
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <title>Simple Ecommerce</title>
        <style>
            .thumbnail {
                border: solid lightgray 1px;
                border-radius: 18px;
                background-color: ghostwhite;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="Header.jsp?title=Order History" flush="true"/>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-6 col-lg-10">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-6 col-lg-10">
                    <div class="row">
                        <c:forEach items="${historyOrders}" var="order">
                            <div class="col-lg-3 p-2">
                                <a href="GetOrder?orderNumber=${order.ordernumber}">
                                    <div class="thumbnail p-2">
                                        <p>#${order.ordernumber} -  
                                            <fmt:formatDate value="${order.orderdate}" type="date" timeZone="GMT" /> <br>
                                            status: <b>${order.status}</b> - <fmt:formatDate value="${order.shippeddate}" pattern="EEE dd MMM yyyy" />
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-6 col-lg-10">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-6 col-lg-8"></div>
                <div class="col-sm-6 col-lg-2">
                    <p><input type="button" value="<< Go back" onclick="history.go(-1)"/></p>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>
