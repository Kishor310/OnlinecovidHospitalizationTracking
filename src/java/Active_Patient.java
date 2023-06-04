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
 * @author HP
 */
public class Active_Patient extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String hid=req.getParameter("hid");
        String hname=req.getParameter("hname");
        String date=req.getParameter("date");
        String active=req.getParameter("active_patient");
        
        String event=req.getParameter("btn");
        
                
       HttpSession session=req.getSession();
        out.println(session.getAttribute("hpass"));
        database db=new database();
         String result=db.connectdb();
         out.println(result);
         
         if(event.equals("Add"))
         {
             String insert=db.Insert("insert into active_patient(hid,hname,hdate,active,hpass)values('"+session.getAttribute("hid").toString()+"','"+hname.toString()+"','"+date.toString()+"','"+active.toString()+"','"+session.getAttribute("hpass").toString()+"')");
             out.println(insert);
             
             resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Patient Added Successfully...');");
            out.println("location='Active_Patient.jsp';");
            out.println("</script>");
         }
         
          if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from active_patient where hid='"+hid.toString()+"' and hdate='"+date+"'");
             out.println(delete);
              resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Patient Deleted Successfully...');");
            out.println("location='Active_Patient.jsp';");
            out.println("</script>");
             
         }
         
         if(event.equals("Update"))
         {
             String update=db.Update("update active_patient set active='"+session.getAttribute("hid").toString()+"'  hid='"+hid.toString()+"' and hdate='"+date+"'");
             out.println(update);
              resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Patient Records Updated Successfully...');");
            out.println("location='Active_Patient.jsp';");
            out.println("</script>");
         }
    }



}