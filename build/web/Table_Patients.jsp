<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patients</title>
        <link rel="stylesheet" href="table.css">
        
    </head>
    <body>
        <%@include file="AdminMaster.jsp" %>
    <center><h1 class="h1_style" style="color: black">Patients</h1></center>
    
    <div class="DivTable">
        <div class="container">
   <table id="customers">
  <tr>
    <th>ID</th>
    <th>P_name</th>
    <th>Symptoms</th>
    <th>Report</th>
    <th>P_Date</th>
    <th>P_Status</th>
    <th>H_Name</th>

    
    
    
    

   
  </tr>
 <%
Connection cn=null;
Statement st=null;
try
       {
           Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
           st=cn.createStatement();
           String sql="select * from patient where hid='"+session.getAttribute("hid") +"' and hpass='"+session.getAttribute("hpass") +"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
               String id=rs.getString("id");
               String pname=rs.getString("pname");
               String symptoms=rs.getString("symptoms");
               String report=rs.getString("report");
               String pdate=rs.getString("pdate");
               String pstatus=rs.getString("pstatus");
               String hname=rs.getString("hname");
               
               
              
             
              
 %>          
   <tr>
    
    <td><%=id%></td>
    <td><%=pname%></td>
    <td><%=symptoms%></td>
    <td><%=report%></td>
    <td><%=pdate%></td>
    <td><%=pstatus%></td>
    <td><%=hname%></td>

    
    
    
    
   
    
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