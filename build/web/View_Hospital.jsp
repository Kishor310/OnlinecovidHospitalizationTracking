

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body style="background-image: url(img/grad2.jpg);background-size: cover">
        <%@include  file="PatientMaster.jsp" %>
        <div class="container">
            <div class="jumbotron">
                <center><h2>Hospitals List</h2></center>
                <hr/>
                <br/>
                <%
Connection cn=null;
Statement st=null;
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from hospital_registration where taluka='"+request.getParameter("btn") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
               String hname=rs.getString("host_name");
               String address=rs.getString("address");
               String contact=rs.getString("contact");
               String taluka=rs.getString("taluka");
              
              
 %> 
 <form action="View_Hospital_Details.jsp" method="GET">
 <div class="well" style="background-color:  white">
                    <center><h2> <h3><%=hname%></h3></h2></center>
                    <br>
                <div class="row">
                    <div class="col-sm-4">
                        <h4>Address</h4>
                        <h3><%=address%></h3>
                        <input type="hidden" name="hname" value="<%=hname%>">
                    </div>
                    <div class="col-sm-4">
                        <h4>Contact</h4>
                         <h3><%=contact%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Taluka</h4>
                         <h3><%=taluka%></h3>
                    </div>
                </div>
                
                <!--div class="row">
                    <div class="col-sm-4">
                        <h4>Location</h4>
                        <h3>address</h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Bed Capacity</h4>
                        <h3>address</h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Patient Capacity</h4>
                        <h3>address</h3>
                    </div>
                </div-->
                    <br/>
                    <input type="submit" name="btn" value="View More" class="btn btn-primary">
                </div>    
                    </form>
 <%          
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       } 

       

%>
                
                
            </div>
        </div>
    
    
    </body>
</html>
