<%-- 
    Document   : addroom
    Created on : Jul 9, 2021, 2:17:55 PM
    Author     : SparkLab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header.html" %>
         <form action="addroom" method="post">
        <div class="jumbotron">
            <h3>Add Room</h3>
            <br><br>
            <label>Room Id</label>
            <br>
            <input type="text" name="rid" class="form-control">
            <br><br>
            <label>Room Number</label>
            <br>
            <input type="text" name="rno" class="form-control">
            <br><br>
            <label>Bed Capacity</label>
            <br>
            <input type="text" name="bedcap" class="form-control">
            <br><br>
           
            <input type="submit" class="btn btn-primary" value="Add" name="btn">
            <input type="submit" class="btn btn-primary" value="Update" name="btn">
            <input type="submit" class="btn btn-primary" value="Delete" name="btn">
            <input type="submit" class="btn btn-primary" value="Search" name="btn">
            <br>
            
        </div>
         </form>
    </body>
</html>
