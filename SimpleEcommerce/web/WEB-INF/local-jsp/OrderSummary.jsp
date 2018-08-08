<%-- 
    Document   : OrderSummary
    Created on : Apr 26, 2018, 9:58:15 AM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="/WEB-INF/tlds/MyFunction.tld" prefix="mf" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <title>Simple Ecommerce</title>
        <style>
            .roundborder {
                background-color: ghostwhite;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">

            <jsp:include page="Header.jsp?title=Order Summary" flush="true"/>
            <br>
            <br>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-3 col-lg-3">
                    Order number: ${order.ordernumber} 
                </div>        

                <div class="col-sm-4 col-lg-4">
                    Order Date: ${order.orderdate}<br>
                    Ship Date: <span style="color: darkblue; font-weight: bolder">${order.shippeddate}</p>
                </div>        

                <div class="col-sm-3 col-lg-3">
                    Order Status: <span style="color: darkblue; font-weight: bolder">${order.status}</span>
                    <hr>
                    <p><input type="button" value="<< Go back" onclick="history.go(-1)"/></p>
                </div>        
            </div>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10"><hr></div>
            </div>

            <c:set var="c" value="${order.customernumber}"/>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-3 col-lg-3">
                    <p><strong>Company:</strong><br>
                        ${c.customername} ( ${c.customernumber}) </p>
                </div>        

                <div class="col-sm-4 col-lg-4">
                    <strong>Shipping address: </strong><br>
                    <p>
                        ${c.addressline1} <br>
                        ${c.addressline2} ${c.addressline2==null ? '' : '<br>'}
                        ${c.city} ${c.state==null ? '' : '<br>'}
                        ${c.state}  ${c.postalcode}<br>
                        ${c.country}  <br>
                    </p>
                </div>        
                <div class="col-sm-4 col-lg-4">
                    <p>
                        <strong>Contact: </strong> <br>
                        Name: ${c.contactfirstname}  ${c.contactlastname} <br>
                        Phone: ${c.phone}
                    </p>
                </div>        
                <div class="row">
                    <div class="col-sm-1 col-lg-1"></div>
                    <div class="col-sm-10 col-lg-10"><hr></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1 ml-4">&nbsp;</div>
                <div class="col-sm-1 col-lg-1 roundborder">
                    &nbsp; &nbsp; &nbsp;Image
                </div>
                <div class="col-sm-4 col-lg-4 roundborder">
                    Product Description
                </div>
                <div class="col-sm-1 col-lg-1 roundborder">
                    Unit Price
                </div>
                <div class="col-sm-1 col-lg-1 roundborder">
                    Quantity
                </div>
                <div class="col-sm-1 col-lg-1 roundborder">
                    &nbsp; &nbsp; &nbsp; Total
                </div>
            </div>
            <br>
            <c:set var="sum" value="${0.0}" />
            <c:forEach items="${order.orderDetailList}" var="od">
                <div class="row">
                    <div class="col-sm-1 col-lg-1 m-4">&nbsp;</div>
                    <div class="col-sm-1 col-lg-1">
                        <img src="${mf:getImageFileName(od.product.productline.productline, od.product.productcode)}" width="60"/>
                    </div>
                    <div class="col-sm-4 col-lg-4">
                        ${od.product.productname}
                    </div>
                    <div class="col-sm-1 col-lg-1">
                        ${od.priceeach}
                    </div>
                    <div class="col-sm-1 col-lg-1">
                        ${od.quantityordered}
                    </div>
                    <div class="col-sm-1 col-lg-1 right">
                        ${od.quantityordered * od.priceeach}
                    </div>
                </div>
                <c:set var="sum" value="${sum + od.quantityordered * od.priceeach}" />
            </c:forEach>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-9"><hr></div>
            </div>
            <div class="row">
                <div class="col-lg-6 ml-4 mr-4"></div>
                <div class="col-lg-2 right">Total Price:</div>
                <div class="col-lg-1 right"><fmt:formatNumber value="${sum}" pattern="$#,###.##" />  </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-9"><hr></div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-3 col-lg-3">
                </div>        

                <div class="col-sm-4 col-lg-4">
                </div>        

                <div class="col-sm-3 col-lg-3">
                    <p><input type="button" value="<< Go back" onclick="history.go(-1)"/></p>
                </div>        
            </div>
        </div>
    </body>
</html>
