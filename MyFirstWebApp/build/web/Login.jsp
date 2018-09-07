<%-- 
    Document   : Login
    Created on : Sep 7, 2018, 11:40:24 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    </head>
    <body>
        <div class="container m-5">
                <h1>Login</h1>   
                <hr>
                <div>
                    <form action="Login" method="post">
                        <input class="form-control" type="text" placeholder="username" name="userName" required>
                        <input class="form-control mt-2" type="password" placeholder="password" name="password" required>
                        <input class=" col-3 mt-2 btn btn-primary" type="submit" value="login"/>
                    </form>
                    <p style="color: red">${message}</p>
                </div>
        </div>
    </body>
</html>
