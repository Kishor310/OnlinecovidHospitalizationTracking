

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap.css">
    </head>
   <body>
       
        <%@include file="UserMenu.jsp" %>
        <script src="validation.js"></script>
        <form action="Hospital_Registration" method="POST">
        <div class="container" >
            <div class="jumbotron" style="width: 100%;">
                <center><h1>Hospital Registration</h1></center>
                <hr>
                <br/>
                <br/>
                 <div class="row">
                    <div class="col-sm-4">
                        <label>Hospital ID</label><br/>
                        <input type="text" onkeypress="javascript:return isNumber(event)" name="txt_id" placeholder="Enter ID" class="form-control" onkeypress="javascript:return isNumber(event)">
                    </div>
                    <div class="col-sm-6">
                         <label>Hospital Name</label><br/>
                         <input type="text"onkeypress="javascript:return isAlfa(event)" name="hname" placeholder="Enter Hospital Name" class="form-control" onkeypress="javascript:return isAlfa(event)">
                    </div>
                </div>
                
                <br/><br/>
                <div class="row">
                    <div class="col-sm-4">
                        <label>Address</label><br/>
                        <textarea name="address"onkeypress="javascript:return isAlfa(event)" rows="4" cols="10" class="form-control"></textarea>
                    </div>
                   
                </div>
                
                <br/><br/>
                
                <div class="row">
                    <div class="col-sm-4">
                        <label>PinCode</label><br/>
                        <input type="text" onkeypress="javascript:return isNumber(event)" name="txt_pin" placeholder="Enter PinCode" class="form-control" maxlength="6" onkeypress="javascript:return isNumber(event)">
                    </div>
                    <div class="col-sm-6">
                         <label>Hospital Contact No</label><br/>
                         <input type="text"onkeypress="javascript:return isContactno(event);maxLength(10)" name="txt_contact" placeholder="Enter Contact No" class="form-control" maxlength="10" onkeypress="javascript:return isContactno(event)">
                    </div>
                </div>
                
                <br/><br/>
                
                <div class="row">
                    <div class="col-sm-4">
                        <label>Taluka</label><br/>
                        <select name="taluka" class="form-control">
                            <option select>Select Taluka</option>
                            <option>Gadhinglaj</option>
                            <option>Ajara</option>
                            <option>Chandgad</option>
                        </select>
                    </div>
                    <div class="col-sm-6">
                         <label>Location</label><br/>
                         <input type="text" name="txt_location" placeholder="Enter Location" class="form-control" onkeypress="javascript:return isAlfa(event)">
                    </div>
                </div>
                
                <br/><br/>
                 <div class="row">
                    <div class="col-sm-4">
                        <label>Bed Capacity</label><br/>
                      <input type="text" name="txt_bed_capacity" placeholder="Enter Bed Capacity" class="form-control" onkeypress="javascript:return isNumber(event)">
                    </div>
                    <div class="col-sm-6">
                         <label>Patient Capacity</label><br/>
                         <input type="text" name="pcapacity" placeholder="Enter Patient Capacity" class="form-control" onkeypress="javascript:return isNumber(event)">
                    </div>
                </div>
                
                <br/><br/>
                 <div class="row">
                    <div class="col-sm-4">
                        <label>Hospital User ID</label><br/>
                      <input type="text" name="txt_userid" placeholder="Enter User ID" class="form-control" >
                    </div>
                    <div class="col-sm-6">
                         <label>Password</label><br/>
                         <input type="password" name="txt_pass" placeholder="Enter Password" class="form-control" >
                    </div>
                </div>
                <br/><br/>
                <input type="submit" name="btn" value="Register" class="btn btn-success" style="width: 250px">
                
            </div>
        </div>
            </form>
    </body>
</html>
