

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-image: url(img/back5.png);background-size: cover;">
       <script src="validation.js"></script>
          <%@include file="UserMenu.jsp" %>
         <form action="userregistration" method="post">
        <div class="jumbotron">
            <h3>User Registration</h3>
            <br><br>
            <label>Full name</label>
            <br>
            <input type="text"onkeypress="javascript:return isString(event)" name="fname" class="form-control">
            <br><br>
             <label>Address</label>
            <br>
            <input type="text" name="adddress" class="form-control">
            <br><br>
             <label>Mobile Number</label>
            <br>
            <input type="text" onkeypress="javascript:return isContactno(event)"maxlength="10" min="10" name="mobile" class="form-control">
            <br><br>
             <label>Email</label>
            <br>
            <input type="email" name="email" class="form-control">
            <br><br>
             
           
             <label>Username</label>
            <br>
            <input type="text" name="username" class="form-control">
            <br><br>
            <label>Password</label>
            <br>
            <input type="password" name="pass" class="form-control">
            <br><br>    
            <input type="submit" class="btn btn-primary" value="Register Now" name="btn"><a href="#" style="float: right" >Login Now</a>
            <br>
            
        </div>
         </form>
    </body>
</html>
