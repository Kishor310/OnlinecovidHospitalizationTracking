


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Details</title>
        <link rel="stylesheet" href="table.css">
        
    </head>
    <body>
        <%@include file="AdminMaster.jsp" %>
    <center><h1 class="h1_style" style="color: black">Bed Details</h1></center>
    
    <div class="DivTable">
        <div class="container">
   <table id="customers">
  <tr>
    <th>Hospital Name</th>
    <th>Date</th>
    <th>Normal</th>
    <th>Critical</th>
    
    

   
  </tr>
 <%
Connection cn=null;
Statement st=null;
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from addbed where hid='"+session.getAttribute("hid") +"' and hpass='"+session.getAttribute("hpass") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
               String hname=rs.getString("hname");
               String date=rs.getString("hdate");
               String normal=rs.getString("normal");
               String critical=rs.getString("critical");
              
             
              
 %>          
   <tr>
    
    <td><%=hname%></td>
    <td><%=date%></td>
    <td><%=normal%></td>
    <td><%=critical%></td>
    
    
   
    
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
