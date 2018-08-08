<%-- 
    Document   : ProductDetail
    Created on : Feb 8, 2018, 11:50:34 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/MyFunction.tld" prefix="mf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">

            <jsp:include page="WEB-INF/local-jsp/Header.jsp?title=Product Detail" flush="true"/>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-4">
                    <img src="${mf:getImageFileName(product.productline.productline, product.productcode)}" width="480" style="border: beige 1px solid"/>
                    <br><br>
                    <input type="button" value=" << Back" onclick="history.go(-1)" />
                </div>

                <div class="col-sm-10 col-lg-6">
                    <table>
                        <tr>
                            <td>Product Code: </td>
                            <td><input type="text" disabled value="${product.productcode}" size="10" /></td>
                        </tr>
                        <tr >
                            <td style="padding-bottom: 30px">Product Name: </td>
                            <td><input type="text" readonly value="${product.productname}" size="40" /></td>
                        </tr>
                        <tr>
                            <td>Product Description: </td>
                            <td><textarea rows="3" cols="60">${product.productdescription}</textarea></td>
                        </tr>
                        <tr>
                            <td style="padding-bottom: 30px">Product Line: </td>
                            <td><input type="text" readonly value="${product.productline.productline}" /></td>
                        </tr>
                        <tr>
                            <td>Scale: </td>
                            <td><input type="text" readonly value="${product.productscale}" size="8" /></td>
                        </tr>
                        <tr>
                            <td style="padding-bottom: 30px">Price: </td>
                            <td>
                                <input type="text" readonly value="${product.msrp}" size="8"/>
                                <a href="AddItemToCart?item=${product.productcode}" style="padding-left: 50px">
                                    <img src="cart.png" height="24" title="Add to cart"/>
                                </a>
                            </td>
                            
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <hr>
                </div>
            </div>
        </div>
    </body>
</html>
