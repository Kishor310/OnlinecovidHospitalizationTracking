

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
    <body>
        <%@include  file="PatientMaster.jsp" %>
        <form name="adf" action="addpatient.jsp" method="POST">
        <div class="container">
            <div class="jumbotron">
                <center><h2>Covid Tracking Details</h2></center>
                <hr/>
                  <%
Connection cn=null;
Statement st=null;
String hname="";
               String address="";
               String contact="";
               String taluka="";
              String location="";
               String bed="";
               String patient="";
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from hospital_registration where host_name='"+request.getParameter("hname") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
                hname=rs.getString("host_name");
                address=rs.getString("address");
                contact=rs.getString("contact");
                taluka=rs.getString("taluka");
               location=rs.getString("location");
                bed=rs.getString("bed");
                patient=rs.getString("patient");
                session.setAttribute("hname", hname);
                session.setAttribute("hid", rs.getString("userid"));
                session.setAttribute("pass", rs.getString("pass"));
                    }
}catch(Exception ex)
{
out.println(ex);
}                         
 %> 
 <div class="well" style="background-color: white">
                    <center><h2><%=hname%></h2></center>
                    <hr/>
                    <br>
                <div class="row">
                    <div class="col-sm-4">
                        <h4>Address</h4>
                        <h3><%=address%></h3>
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
                
                <div class="row">
                    <div class="col-sm-4">
                        <h4>Location</h4>
                        <h3><%=location%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Bed Capacity</h4>
                        <h3><%=bed%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Patient Capacity</h4>
                        <h3><%=patient%></h3>
                    </div>
                </div-->
                    <br/>
                    
                </div>
                
            </div>
               <%
String bdate="";
String normal="";
String critical="";
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from addbed where hname='"+request.getParameter("hname") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
                bdate=rs.getString("hdate");
                normal=rs.getString("normal");
                critical=rs.getString("critical");
                
                    }
}catch(Exception ex)
{
out.println(ex);
}                         
 %>   
                <div class="well" style="background-color: white">
                    <center><h2>Bed Availablity</h2></center>
                      <hr/>
                    <br>
                <div class="row">
                    <div class="col-sm-4">
                        <h4>Date</h4>
                        <h3><%=bdate%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Normal Patient Bed</h4>
                        <h3><%=normal%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Critical Patient Bed</h4>
                        <h3><%=critical%></h3>
                    </div>
                </div>
                
                
                
            </div>
                     <%

String adate="";
String active="";
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from active_patient where hname='"+request.getParameter("hname") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
                adate=rs.getString("hdate");
                active=rs.getString("active");
                
                
                    }
}catch(Exception ex)
{
out.println(ex);
}                         
 %>
                <div class="well" style="background-color: white">
                    <center><h2>Active Patient</h2></center>
                      <hr/>
                    <br>
                <div class="row">
                    <div class="col-sm-4">
                        <h4>Hospital Name</h4>
                        <h3><%=hname%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Date</h4>
                        <h3><%=adate%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Active Patient</h4>
                        <h3><%=active%></h3>
                    </div>
                </div>
                
                
                
            </div>
               <%


try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from discharge_patient where hname='"+request.getParameter("hname") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
                adate=rs.getString("hdate");
                active=rs.getString("active");
                
                
                    }
}catch(Exception ex)
{
out.println(ex);
}                         
 %> 
                <div class="well" style="background-color: white">
                    <center><h2>Discharge Patient</h2></center>
                      <hr/>
                    <br>
                <div class="row">
                    <div class="col-sm-4">
                        <h4>Hospital Name</h4>
                        <h3><%=hname%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Date</h4>
                        <h3><%=adate%></h3>
                    </div>
                    <div class="col-sm-4">
                        <h4>Active Patient</h4>
                        <h3><%=active%></h3>
                    </div>
                </div>
                
                
                
            </div>
                    <input type="submit" name="btn" value="Add New Patient" class="btn btn-primary">
        </div>
    
    </form>
    </body>
</html>
