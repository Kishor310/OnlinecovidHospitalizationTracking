/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SparkLab
 */
public class admin_login extends HttpServlet {
   
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection cn=null;
        Statement st=null;
        PrintWriter out=resp.getWriter();
        
        String username=req.getParameter("username");
        String pass=req.getParameter("pass");
        
        String event=req.getParameter("btn");
        
        
        
        out.println(username);
        out.println(pass);
       
       
        
        database db=new database();
         String result=db.connectdb();
         out.println(result);
      HttpSession session=req.getSession();
        try
       {
       Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","root");
        st=cn.createStatement();
        
        String sql="select * from hospital_registration where userid='"+username+"' and pass='"+pass+"'";
        ResultSet rs=st.executeQuery(sql);
        if(rs.next())
        {
            session.setAttribute("hid", username);
            session.setAttribute("hpass", pass);
            session.setAttribute("hname", rs.getString("host_name"));
            resp.sendRedirect("addbeds.jsp");
        }
        else
        {
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Login Faild...');");
            out.println("location='admin_login.jsp';");
            out.println("</script>");
        }
       }catch(Exception ex)
       {
       out.println(ex);
       }
        
        
        
    }
}
