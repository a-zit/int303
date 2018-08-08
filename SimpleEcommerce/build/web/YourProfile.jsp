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
    </head>
    <body>
        <div class="container-fluid">

            <jsp:include page="/WEB-INF/local-jsp/Header.jsp?title=Your Profile" flush="true"/>
            <br>
            <br>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10"><hr></div>
            </div>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-3 col-lg-3">
                    <p><strong>Company:</strong><br>
                        ${user.customername} ( ${user.customernumber}) 
                        <br><br>
                        <b>Credit</b>: <fmt:formatNumber value="${user.creditlimit}" type="currency"/> 
                    </p>
                </div>        

                <div class="col-sm-4 col-lg-4">
                    <strong>Shipping address: </strong><br>
                    <p>
                        ${user.addressline1} <br>
                        ${user.addressline2} ${user.addressline2==null ? '' : '<br>'}
                        ${user.city} ${user.state==null ? '' : '<br>'}
                        ${user.state}  ${user.postalcode}<br>
                        ${user.country}  <br>
                    </p>
                </div>        
                <div class="col-sm-4 col-lg-4">
                    <p>
                        <strong>Contact: </strong> <br>
                        Name: ${user.contactfirstname}  ${user.contactlastname} <br>
                        Phone: ${user.phone}
                    </p>
                </div>        
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10"><hr></div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-3 col-lg-3">
                    <p><input type="button" value="<< Go back" onclick="history.go(-1)"/></p>
                </div>        

                <div class="col-sm-4 col-lg-4">
                </div>        

                <div class="col-sm-3 col-lg-3">
                    <p><a href="GetOrderHistory"><input type="button" value="Order History"/></a></p>
                </div>        
            </div>
        </div>
    </body>
</html>
