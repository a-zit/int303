<%-- 
    Document   : PrimeNumberView
    Created on : Aug 8, 2018, 9:48:46 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="m-5">
        <div>
        <h1>Prime Number Application ::</h1>
        <hr>
        <div class="row">
        <form  class="col-8 form-group" action="PrimeNumber" method="post">
            Please enter number
            <input type="number" class="form-control" min="2" name="number"/>
            <input type="submit" class="mt-2 btn btn-primary" value="OK">
        </form>
        </div>
        <hr>
        <div class="row">
        <h4 class="col-5">${pn.number} is ${pn.primeNumber ? "":"not"} Prime Number</h4>
        <div class="col-3"></div>
        <a class="col-3" href="index.html"><button type="button" class="mt-2 btn btn-link">Back</button></a>
        </div>
        </div>
    </body>
</html>
