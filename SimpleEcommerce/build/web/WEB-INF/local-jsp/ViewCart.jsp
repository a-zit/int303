<%-- 
    Document   : ViewCart
    Created on : Feb 22, 2018, 12:02:28 PM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="/WEB-INF/tlds/MyFunction.tld" prefix="mf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script>
        function buttonReady(){
            document.getElementById("btnSubmit").removeAttribute("disabled");
        }
    </script>
    </head>
    <body onload="document.getElementById('btnSubmit').setAttribute('disabled', false)">
        <div class="container-fluid">

            <jsp:include page="Header.jsp?title=Your Shopping Cart" flush="true"/>
            <p>&nbsp;</p>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <c:if test="${shoppingCart.size<=0}">
                        <h1 style="color: red"> Warning: Empty Cart !!!</h1>
                    </c:if>
                    <c:if test="${shoppingCart.size>0}">
                        <form action="UpdateCart" method="post">
                            <table class="table" >
                                <thead>
                                <th>No</th>
                                <th>Photo</th>
                                <th>Product Name</th>
                                <th>Product Line</th>
                                <th>Unit price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th>Delete</th>
                                </thead>
                                <c:forEach items="${shoppingCart.orders}" var="odt" varStatus="vs">
                                    <c:set var="p" value="${odt.product}"/>
                                    <tr>
                                        <td>${vs.count}</td>
                                        <td><img src="${mf:getImageFileName(p.productline.productline, p.productcode)}" width="100"/></td>
                                        <td>${p.productname}</td>
                                        <td>${p.productline.productline}</td>
                                        <td>${odt.priceeach}</td>
                                        <td>
                                            <input type="number" name="${p.productcode}" max="20" min="0"
                                            value="${odt.quantityordered}" style="width: 60px;text-align: center" onchange="buttonReady()" />
                                        </td>
                                        <td>${odt.quantityordered *odt.product.msrp}</td>
                                        <td><input type="checkbox" name="deleteItems" value="${p.productcode}" onchange="buttonReady()"/></td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td colspan="6" style="text-align: right"> Total Price : </td>
                                    <td>
                                        <fmt:formatNumber pattern="#,###.##" value="${shoppingCart.totalPrice}"/>
                                    </td>
                                    <td> &nbsp; </td>
                                </tr>
                                <tr>
                                    <td colspan="5"><a href="ProcessOrder"><input type="button" value="Process Order"/></a></td>
                                    <td colspan="3"><input id='btnSubmit' type="submit" value="Update cart"/></td>
                                </tr>
                            </table>
                        </form>
                    </c:if>
                </div>
                <div class="col-sm-1 col-lg-1"></div>
            </div>
        </div>
    </body>
</html>
