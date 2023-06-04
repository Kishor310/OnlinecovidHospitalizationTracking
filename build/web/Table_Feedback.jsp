


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Feedback</title>
        <link rel="stylesheet" href="table.css">
        
    </head>
    <body>
        
         <%@include file="UserMenu.jsp" %>
    <center><h1 class="h1_style" style="color: black">Patient Feedback</h1></center>
    
    <div class="DivTable">
        <div class="container">
   <table id="customers">
  <tr>
    <th>Patient ID</th>
    <th>Patient Name</th>
    <th>Mobile_No</th>
    <th>Email</th>
    <th>Patient Message</th>
    
    
    

   
  </tr>
 <%
Connection cn=null;
Statement st=null;
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from feedback";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
               String id=rs.getString("id");
               String pname=rs.getString("pname");
               String mobno=rs.getString("mobno");
               String email=rs.getString("email");
               String message=rs.getString("message");
              


               
              
             
              
 %>          
   <tr>
    
    <td><%=id%></td>
    <td><%=pname%></td>
    <td><%=mobno%></td>
    <td><%=email%></td>
    <td><%=message%></td>
    
    
    
    
    
   
    
  </tr>       
 <%          
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       } 

       

%>
        </div>
</table>
    </div>
    </body>
</html>
