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
public class addbed extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String hid=req.getParameter("hid");
        String hname=req.getParameter("hname");
        String date=req.getParameter("date");
        String normal=req.getParameter("normal");
        String critical=req.getParameter("critical");
        String event=req.getParameter("btn");
        HttpSession session=req.getSession();
        
        database db=new database();
         String result=db.connectdb();
         out.println(result);
         
         if(event.equals("Add"))
         {
             String insert=db.Insert("insert into addbed(hid,hname,hdate,normal,critical,hpass)values('"+session.getAttribute("hid") +"','"+hname.toString()+"','"+date.toString()+"','"+normal.toString()+"','"+critical.toString()+"','"+session.getAttribute("hpass") +"')");
             out.println(insert);
              resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Adding bed Details Successfully...');");
            out.println("location='addbeds.jsp';");
            out.println("</script>");
         }
         
          if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from addbed where hid='"+hid.toString()+"' and hdate='"+date+"'");
             out.println(delete);
              resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Deleted bed Details Successfully...');");
            out.println("location='addbeds.jsp';");
            out.println("</script>");
         }
         
         if(event.equals("Update"))
         {
             String update=db.Update("update addbed set normal='"+normal.toString()+"',critical='"+critical.toString()+"' where hdate='"+date.toString()+"'");
             out.println(update);
              resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Updated bed Details Successfully...');");
            out.println("location='addbeds.jsp';");
            out.println("</script>");
         }
     
        
        
        
        
    }

    
}
