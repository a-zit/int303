<%-- 
    Document   : Form1
    Created on : Mar 22, 2018, 12:08:10 PM
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
                <form action="Form1Servlet">
            Id: <input type="text" name="id" value="${param.id}"/> 
            <span style="color:red"> ${emptyFields.id != null && param.id != null ? " *** " : ""} </span>
            <br>
            Field 1: <input type="text" name="f1" value="${param.f1}"/>
            <span style="color:red"> ${emptyFields.f1 != null && param.f1 != null ? " *** " : ""} </span><br>
            Field 2: <input type="text" name="f2" value="${param.f2}"/> <br>
            Field 3: <input type="text" name="f3" value="${param.f3}"/> <br>
            <input type="submit"/>
        </form>
    </body>
</html>
