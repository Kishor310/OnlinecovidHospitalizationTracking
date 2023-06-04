<%-- 
    Document   : addstaff
    Created on : Jul 9, 2021, 2:11:37 PM
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
         <form action="addstaff" method="post">
        <div class="jumbotron">
            <h3>Add Staff</h3>
            <br><br>
            <label>Staff Id</label>
            <br>
            <input type="text" name="sid" class="form-control">
            <br><br>
            <label>Staff Name</label>
            <br>
            <input type="text" name="sname" class="form-control">
            <br><br>
            <label>Designation</label>
            <br>
            <input type="text" name="designation" class="form-control">
            <br><br>
            <label>Salary</label>
            <br>
            <input type="text" name="salary" class="form-control">
            <br><br>
            <label>Joining date</label>
            <br>
            <input type="date" name="jdate" class="form-control">
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
