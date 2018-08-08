<%-- 
    Document   : TestELfunction
    Created on : Mar 29, 2018, 9:13:56 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/MyFunction.tld" prefix="mf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1><hr>
        ${mf:addMethod(param.x, param.y)}
        <hr>
        &lt;mf:transform mode="upper" color="darkred"&gt;
        <mf:transform mode="upper" color="darkred">
            <b>Developing Applications with NetBeans IDE User's Guide</b><br>
            For additional help documentation about using the IDE, click any of the following chapter titles to open the chapter of the Developing Applications with NetBeans IDE User's Guide in your web browser.
        </mf:transform>
            <hr>
        &lt;mf:transform mode="hide" &gt;
        <mf:transform mode="hide">
            <b>Developing Applications with NetBeans IDE User's Guide</b><br>
            For additional help documentation about using the IDE, click any of the following chapter titles to open the chapter of the Developing Applications with NetBeans IDE User's Guide in your web browser.
        </mf:transform>
            <hr>
        &lt;mf:transform mode="higher" color="darkred"&gt;
        <mf:transform mode="higher" color="red">
            <b>Developing Applications with NetBeans IDE User's Guide</b><br>
            For additional help documentation about using the IDE, click any of the following chapter titles to open the chapter of the Developing Applications with NetBeans IDE User's Guide in your web browser.
        </mf:transform>
            
    </body>
</html>
