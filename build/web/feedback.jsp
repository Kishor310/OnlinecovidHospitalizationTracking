

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
         <form action="feedback" method="post">
        <div class="jumbotron">
            <h3>Send feedback</h3>
            <br><br>
            <label>Patient Name</label>
            <br>
            <input type="text"onkeypress="javascript:return isString(event)" name="pname" class="form-control">
            <br><br>
            <label>Mobile Number</label>
            <br>
            <input type="text"onkeypress="javascript:return isContactno(event)" maxlength="10" min="10" name="mob" class="form-control">
            <br><br>
            <label>Email</label>
            <br>
            <input type="text" name="email" class="form-control">
            <br><br>
            <label>Patient Message</label>
            <br>
            <input type="text" name="message" class="form-control">
            <br><br>
            <input type="submit" class="btn btn-primary" value="Send Now" name="btn">
            <br>
            
        </div>
         </form>
    </body>
</html>
