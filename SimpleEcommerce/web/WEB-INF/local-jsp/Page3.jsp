<%-- 
    Document   : Page1
    Created on : Apr 19, 2018, 9:05:18 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="Header.jsp?title=Page 3" flush="true"/>

            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 col-lg-1"></div>
                <div class="col-sm-10 col-lg-10">
                    <iframe width="100%" height="540" 
                            src="https://www.ntu.edu.sg/home/ehchua/programming/java/J3b_OOPInheritancePolymorphism.html" 
                            frameborder="0">
                    </iframe>
                </div>
            </div>
        </div>
    </body>
</html>
