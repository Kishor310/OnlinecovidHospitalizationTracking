
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="AdminMaster.jsp" %>
        <script src="validation.js"></script>
          <form action="Active_Patient" method="post">
        <div class="jumbotron">
           <center><h3>Active Patient</h3></center>
            <hr>
            <br><br>
            <label>Hospital ID</label>
            <br>
            <input type="text" name="hid" onkeypress="javascript:return isNumber(event)" value="<%=session.getAttribute("hid")%>"  class="form-control">
            <br><br>
            <label>Hospital Name</label>
            <br>
            <input type="text" name="hname" value="<%=session.getAttribute("hname")%>" class="form-control">
            <br><br>
            <label>Date</label>
            <br>
            <input type="date" name="date" class="form-control">
            
             <br><br>
            <label>Active Patient</label>
            <br>
            <input type="text" onkeypress="javascript:return isNumber(event)" name="active_patient" class="form-control">
            
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
