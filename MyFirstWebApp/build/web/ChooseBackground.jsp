<%-- 
    Document   : ChooseBackground
    Created on : Aug 24, 2018, 9:51:59 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <title>Choose Background</title>
    </head>
    <body>
        <div class="container-fluid" style="background-color: ${cookie.bgColor.value}">
            <jsp:include page="include/Header.jsp?title=Product Listing::"/>
            <form action="ChooseBackground" method="post">  
                <input type="radio" name="bgColor" value="stategray" ${cookie.bgColor != null && cookie.bgColor.value == "stategray"? "checked":""}> State gray
                <input type="text" size="3" style="background-color:stategray">
                <br>             
                <input type="radio" name="bgColor" value="Navy" ${cookie.bgColor != null && cookie.bgColor.value == "Navy"? "checked":""}> Navy 
                <input type="text" size="3" style="background-color:navy">
                <br>
                <input type="radio" name="bgColor"value="Silver" ${cookie.bgColor != null && cookie.bgColor.value == "Silver"? " checked":""}> Silver 
                <input type="text" size="3" style="background-color:silver">
                <br>
                <input type="submit">
            </form>
        </div>
    </body>
</html>
