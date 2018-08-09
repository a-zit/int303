<%-- 
    Document   : ShowCart.jsp
    Created on : Aug 9, 2018, 4:04:21 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    </head>
    </head>
    <body>
                <div class="container">
            <table class="table table-dark">
                <tr>
                    <td><h1>Product Cart :: </h1></td>
                </tr>
            </table>
        <table id="example" class="table table-dark">
            <thead>
            <th>Model</th>
            <th>Quantity</th>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Product Line</th>
            <th>Scale</th>
            <th>Price</th>
            <th>Remove item</th>
            </thead>
            <c:forEach items="${cart.lineItems}" var="lineItem" varStatus="vs" >
                <tr>
                    <td><img src="model-images/model-images/${lineItem.product.productCode}.jpg" width="120"></td>
                    <td>${lineItem.quantity}</td>
                    <td>${lineItem.product.productCode}</td>
                    <td>${lineItem.product.productName}</td>
                    <td>${lineItem.product.productLine}</td>
                    <td>${lineItem.product.productScale}</td>
                    <td>${lineItem.product.msrp}</td>
                    <td>
                        <form action="RemoveItemToCart" method="post">
                            <input type="hidden" value="${lineItem.product.productCode}" name="productCode"/>
                            <input type="submit" class="btn-danger" value="Remove item"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.html"><button type="button" class="mt-2 btn btn-link">Back</button></a>
        </div>
        <script>
            $(document).ready(function() {
            $('#example').DataTable();
            } );
        </script>
    </body>
</html>
