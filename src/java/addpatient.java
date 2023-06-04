/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SparkLab
 */
public class addpatient extends HttpServlet {

  
    
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        
        String fname=req.getParameter("fname");
        String symptoms=req.getParameter("symptoms");
        String treport=req.getParameter("treport");
       String date=req.getParameter("date");
        String status=req.getParameter("status");
        String event=req.getParameter("btn");
        
        
        
      
        out.println(fname);
        out.println(symptoms);
        out.println(treport);

        out.println(status);
        HttpSession session=req.getSession();
     database db=new database();
         String result=db.connectdb();
         out.println(result);
        
        String results=db.Insert("insert into patient(pname,symptoms,report,pdate,pstatus,hname,hid,hpass)values('"+fname+"','"+symptoms+"','"+treport+"','"+date+"','"+status+"','"+session.getAttribute("hname") +"','"+session.getAttribute("hid").toString()+"','"+session.getAttribute("pass").toString()+"')");
        out.println(results);
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Hospital Registred Successfully...');");
            out.println("location='user_login.jsp';");
            out.println("</script>");
        
    }
}
