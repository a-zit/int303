<%-- 
    Document   : Form2
    Created on : Mar 22, 2018, 12:08:25 PM
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
        <form action="Form2Servlet">
            Name: <input type="text" name="name" value="${param.name}"/> 
            <span style="color:red"> ${emptyFields.name != null && param.name != null ? " *** " : ""} </span>
            <br>
            Text 1: <input type="text" name="t1" value="${param.t1}"/> <br>
            Text 2: <input type="text" name="t2" value="${param.t2}"/> <br>
            Text 3: <input type="text" name="t3" value="${param.t3}"/> 
            <span style="color:red"> ${emptyFields.t3 != null && param.t3 != null ? " *** " : ""} </span>
            <br>
            <input type="submit"/>
        </form>
    </body>
</html>
