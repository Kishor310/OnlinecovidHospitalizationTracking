<%-- 
    Document   : addbeds
    Created on : Jul 9, 2021, 2:19:45 PM
    Author     : SparkLab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <script src="validation.js"></script>
          <%@include file="AdminMaster.jsp" %>
          <form action="addbed" method="post">
        <div class="jumbotron">
            <center><h3>Bed Available</h3></center>
            <hr>
            <br><br>
            <label>Hospital ID</label>
            <br>
            <input type="text"onkeypress="javascript:return isNumber(event)" name="hid" value="<%=session.getAttribute("hid")%>" class="form-control">
            <br><br>
            <label>Hospital Name</label>
            <br>
            <input type="text" name="hname" value="<%=session.getAttribute("hname")%>" class="form-control">
            <br><br>
            <label>Date</label>
            <br>
            <input type="date" name="date" class="form-control">
            
             <br><br>
            <label>Normal Ward Availablity</label>
            <br>
            <input type="text"onkeypress="javascript:return isNumber(event)" name="normal" class="form-control">
            
            <br><br>
            <label>Critical Ward Availablity</label>
            <br>
            <input type="text"onkeypress="javascript:return isNumber(event)" name="critical" class="form-control">
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
