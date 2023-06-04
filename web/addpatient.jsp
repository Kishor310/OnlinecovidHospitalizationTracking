<%-- 
    Document   : addpatient
    Created on : Jul 9, 2021, 2:14:47 PM
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
        <script src="validation.js"></script>
         <%@include file="header.html" %>
         <form action="addpatient" method="post">
        <div class="jumbotron">
            <h3>Patient Details</h3>
            <br><br>
             
            <br><br>
            <label>Full name</label>
            <br>
            <input type="text"onkeypress="javascript:return isString(event)" name="fname" class="form-control">
            <br><br>
            
             <label>Symptoms</label>
            <br>
            <input type="text" onkeypress="javascript:return isString(event)" name="symptoms" class="form-control">
            <br><br>
             <label>Test Report</label>
            <br>
            <input type="file" name="treport" class="form-control">
            <br><br>
             <label>Date</label>
            <br>
            <input type="text" name="date" class="form-control">
            <br><br>
            <label>Status</label>
            <br>
            <input type="text" onkeypress="javascript:return isString(event)" name="status" class="form-control">
            <br><br>    
            <input type="submit" class="btn btn-primary" value="Add Now" name="btn">
            <br>
            
        </div>
         </form>
    </body>
</html>