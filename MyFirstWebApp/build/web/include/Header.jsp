<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:13:29 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    </head>
        <table class="table">
            <tr>
                <td>
                    <a href="index.html" title="Back to Home"><img src="unnamed.jpg" width="120"></a>
                </td>
                <td><h1>${param.title}</h1></td>
                <td>
                    <c:if test="${cart != null}">
                        <a href="ShowCart">Your Cart: ${cart.totalQuantity}</a>
                    </c:if>
                        &nbsp;&nbsp;&nbsp;
                    <c:choose>
                        <c:when test="${sessionScope.user != null}">
                            Hello ${sessionScope.user.name}
                        </c:when>
                        <c:otherwise>
                            Hello Guest
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
        <hr>
        Session Id: ${cookie.JSESSIONID.value}
        <hr>