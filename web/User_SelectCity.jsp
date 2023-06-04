<%-- 
    Document   : User_SelectCity
    Created on : 23 Jul, 2021, 10:55:23 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body style="background-color: #F2F4F4">
        <%@include file="PatientMaster.jsp" %>
        <form action="View_Hospital.jsp" method="POST">
        <div class="container" style="margin-top:150px">
            <div class="jumbotron" style="background-color: white;">
                <center><h2>Select City</h2></center>
                <hr/>
                <br/><br/>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                        <input type="submit" name="btn" value="Gadhinglaj" class="btn btn-success" style="width: 150px;height: 100px">
                    </div>
                    <div class="col-sm-3">
                        <input type="submit" name="btn" value="Ajara" class="btn btn-success" style="width: 150px;height: 100px">
                    </div>
                    <div class="col-sm-3">
                        <input type="submit" name="btn" value="Chandgad" class="btn btn-success" style="width: 150px;height: 100px">
                    </div>
                </div>
                
                
                
            </div>
        </div>
        </form>
    </body>
</html>
