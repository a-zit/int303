<%-- 
    Document   : TestTagFile
    Created on : Apr 5, 2018, 10:32:51 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="tf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1> <hr>
        <tf:Transform mode="upper" color="darkgreen" >
            <b>Developing Applications with NetBeans IDE User's Guide</b><br>
            For additional help documentation about using the IDE, click any of the following chapter titles to open the chapter of the Developing Applications with NetBeans IDE User's Guide in your web browser.
        </tf:Transform>
    </body>
</html>
