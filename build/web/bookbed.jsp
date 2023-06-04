<%-- 
    Document   : bookbed
    Created on : Jul 9, 2021, 2:08:34 PM
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
         <form action="bookbed" method="post">
        <div class="jumbotron">
            <h3>Book Bed </h3>
            <br><br>
            <label>Patient Id</label>
            <br>
            <input type="text" name="pid" class="form-control">
            <br><br>
            <label>Patient Name</label>
            <br>
            <input type="text" name="pname" class="form-control">
            <br><br>
            <label>Room Number</label>
            <br>
            <input type="text" name="rno" class="form-control">
            <br><br>
            <label>Bed Number</label>
            <br>
            <input type="text" name="bno" class="form-control">
            <br><br>
            <label>Booking Date</label>
            <br>
            <input type="date" name="bdate" class="form-control">
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
