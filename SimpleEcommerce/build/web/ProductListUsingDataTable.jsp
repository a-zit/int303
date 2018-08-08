<%-- 
    Document   : ProductList
    Created on : Feb 15, 2018, 9:05:28 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

        <title>Product Listing</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-1 col-lg-2"></div>
                <div class="col-sm-10 col-lg-8">
                    <h3>Product Listing ::</h3> <hr>
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
                <div class="col-sm-1 col-lg-2"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-1 col-lg-2"></div>
                <div class="col-sm-10 col-lg-8">
                    <table id="example" class="table-striped table-bordered">
                        <thead>
                        <th>No</th>
                        <th>Product Name</th>
                        <th>Product Scale</th>
                        <th>Product Line</th>
                        <th>Price</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.products}" var="p" varStatus="vs">
                                <tr>
                                    <td>${vs.count}</td>
                                    <td><a href="GetDataFromProduct?productCode=${p.productcode}"> ${p.productname}</a></td>
                                    <td style="text-align: center">${p.productscale}</td>
                                    <td>${p.productline.productline}</td>
                                    <td style="text-align: right">${p.msrp}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-1 col-lg-2"></div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
</html>
