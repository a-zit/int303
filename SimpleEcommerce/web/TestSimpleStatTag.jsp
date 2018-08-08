<%-- 
    Document   : TestSimpleStatTag
    Created on : Apr 5, 2018, 11:42:58 AM
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
        <h1>Hello World!</h1><hr>
        <% 
            int x[] = {9, 7,  8, 5, 3, 12,  90, 14, 7,1} ;
            pageContext.setAttribute("x", x);
        %>
        
        <tf:SimplyStat items="${x}">
            Min: ${min} <br>
            Max: ${max} <br>
            Average: ${avg} <br>
        </tf:SimplyStat>
            <hr>
            Min: ${min} <br>
            Max: ${max} <br>
            Average: ${avg} <br>

    </body>
</html>
