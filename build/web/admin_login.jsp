<%-- 
    Document   : admin_login
    Created on : Jul 9, 2021, 1:43:48 PM
    Author     : SparkLab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body style="background-image: url(img/back5.png);background-size: cover;">
        <%@include file="UserMenu.jsp" %>
        <form action="admin_login" method="post">
        <div class="jumbotron">
            <h3>Admin Login</h3>
            <br><br>
            <label>Username</label>
            <br>
            <input type="text" name="username" class="form-control">
            <br><br>
            <label>Password</label>
            <br>
            <input type="password" name="pass" class="form-control">
            <br><br>    
            <input type="submit" class="btn btn-primary" value="Login Now"><a href="Hospital_Registration.jsp" style="float: right" >Register New Hospital</a>
            <br>
            
        </div>
        </form>
    </body>
</html>
