<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:22:22 PM
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
    <body>
        <div class="container">
        <jsp:include page="include/Header.jsp?title=Product Listing::"/>
        <table id="example" class="table table-dark">
            <thead>
            <th>Model</th>
            <th>No</th>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Product Line</th>
            <th>Scale</th>
            <th>Price</th>
            <th>Add To Cart</th>
            </thead>
            <c:forEach items="${products}" var="p" varStatus="vs" >
                <tr>
                    <td><img src="model-images/model-images/${p.productCode}.jpg" width="120"></td>
                    <td>${vs.count}</td>
                    <td>${p.productCode}</td>
                    <td>${p.productName}</td>
                    <td>${p.productLine}</td>
                    <td>${p.productScale}</td>
                    <td>${p.msrp}</td>
                    <td>
                        <form action="AddItemToCart" method="post">
                            <input type="hidden" value="${p.productCode}" name="productCode"/>
                            <input type="submit" class="btn-success" value="Add To Cart"/>
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
