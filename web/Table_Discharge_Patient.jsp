


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discharge_Patients</title>
        <link rel="stylesheet" href="table.css">
        
    </head>
    <body>
        <%@include file="AdminMaster.jsp" %>
    <center><h1 class="h1_style" style="color: black">Discharge Patients</h1></center>
    
    <div class="DivTable">
        <div class="container">
   <table id="customers" >
  <tr>
    <th>ID</th>
    <th>H_ID</th>
    <th>Hospital_Name</th>
    <th>H_Date</th>
    <th>Discharge</th>
    <th>H_Pass</th>
    
    
    

   
  </tr>
 <%
Connection cn=null;
Statement st=null;
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from discharge_patient where hid='"+session.getAttribute("hid") +"' and hpass='"+session.getAttribute("hpass") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
               String id=rs.getString("id");
               String hid=rs.getString("hid");
               String hname=rs.getString("hname");
               String hdate=rs.getString("hdate");
               String active=rs.getString("active");
               String hpass=rs.getString("hpass");
               
               
              
             
              
 %>          
   <tr>
    
    <td><%=id%></td>
    <td><%=hid%></td>
    <td><%=hname%></td>
    <td><%=hdate%></td>
    <td><%=active%></td>
    <td><%=hpass%></td>


    
    
    
    
   
    
  </tr>       
 <%          
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       } 

       

%>
</table>
        </div>
    </div>
    </body>
</html>
