<%-- 
    Document   : ErrorInformation
    Created on : Mar 15, 2018, 10:29:06 AM
    Author     : INT303
--%>

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

            <jsp:include page="Header.jsp?title=Error Information" flush="true"/>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <h1>OOP !!! <span style="color: red">${pageContext.errorData.statusCode}</span></h1> <hr>
                    <p style="font-size: x-large">Something went wrong. We're sorry.</p>
                    <br><br><br>
                    If you want to start over, go to the <a href="index.jsp">homepage.</a>
                    If you're stuck, let us <a href="https://www.overstack.com">help</a> you.
                    <br>
                    <br>
                    <hr>
                    <span style="color: red">${message}</span></h1> <hr>
                </div>
            </div>
        </div>
    </body>
</html>
