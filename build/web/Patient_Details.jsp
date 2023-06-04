<%-- 
    Document   : Patient_Details
    Created on : 23 Jul, 2021, 9:20:44 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="ad" action="Patient_Details" method="POST">
            <script src="validation.js"></script>
        
        <%@include file="AdminMaster.jsp" %>
        <div class="jumbotron">
            <center><h2>Patient Details</h2></center>
            <hr>
            <br><br>
            <label>Patient Name</label><br/>
            <input type="text"onkeypress="javascript:return isString(event)" name="txt_name" class="form-control">
            <br/>
            <label>Contact</label><br/>
            <input type="text" onkeypress="javascript:return isContactno(event)" maxlength="10" min="10" name="txt_contact" class="form-control">
            <br/>
            <label>Patient Address</label><br/>
            <input type="text" name="txt_address" class="form-control">
            <br/>
            <label>Admit Date</label><br/>
            <input type="date" name="adate" class="form-control">
            <br/>
            <label>Discharge Date</label><br/>
            <input type="date" name="ddate" class="form-control">
            <br/>
            <label>Test</label><br/>
            <select name="test" class="form-control">
                <option>RTPCR</option>
                <option>Antigen</option>
                <option>Rapid</option>
            </select>
            <br/>
            <label>Status/Discription</label><br/>
            <textarea onkeypress="javascript:return isString(event)" name="disc" class="form-control"></textarea>
            
            <br/>
            <input type="submit" name="btn" value="Submit" class="btn btn-primary">
        </div> 
        </form>
    </body>
</html>
