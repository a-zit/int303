<%-- 
    Document   : TestJSP
    Created on : Jan 18, 2018, 10:57:35 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1><hr>
        x = ${param.x} <br>
        y = ${param.y} <br>
        -------------------------<br>
        Sum = ${param.x + param.y}
    </body>
</html>
