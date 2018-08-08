<%-- 
    Document   : ViewParameter
    Created on : Aug 8, 2018, 1:57:26 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        <div class="m-5">
        <h1>Favorite Subject</h1>
        <hr>
        <div>
            <form action="TestRequestParam" method="post">
                <input class="form-control" type="text" placeholder="Your Student Id" name="id">
                <input class="form-control mt-2" type="text" placeholder="Your Name" name="name">
                <input name="subjects" type="checkbox" value="Web Programming"> Web Programming<br>
                <input name="subjects" type="checkbox" value="Computer Network"> Computer Network<br>
                <input name="subjects" type="checkbox" value="Network Programming"> Network Programming<br>
                <input name="subjects" type="checkbox" value="Database Administrator"> Database Administrator<br>
                <input name="subjects" type="checkbox" value="Computer Security"> Computer Security<br>
                <input name="subjects" type="checkbox" value="Soft Ware Process"> Soft Ware Process<br>
                <div class="row">
                <input class="ml-3 col-3 mt-2 btn btn-primary" type="submit"/>
                <div class="col-5"></div>
                <a class="col-3" href="index.html"><button type="button" class="mt-2 btn btn-link">Back</button></a> 
                </div>
            </form>
        </div>
        <hr>
        <table class="table table-dark">
            <tr>
                <td>Student Id:</td>
                <td>${param.id}</td>
            </tr>
            <tr>
                <td> Student Name:</td>
                <td>${param.name}</td>
            </tr>
            <tr>
                <td>Your Favorite Subjects:</td>
                <td>
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br>
                    </c:forEach>
                </td>
            </tr>
        </table>
        </div>
    </body>
</html>
