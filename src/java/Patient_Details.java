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
public class Patient_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String pname=req.getParameter("txt_name");
        String address=req.getParameter("txt_address");
        String contact=req.getParameter("txt_contact");
        String adate=req.getParameter("adate");
        String ddate=req.getParameter("ddate");
        String desc=req.getParameter("disc");
        String test=req.getParameter("test");
        String event=req.getParameter("btn");
        
                
       HttpSession session=req.getSession();
        out.println(session.getAttribute("hpass"));
        database db=new database();
         String result=db.connectdb();
         out.println(result);
         
          if(event.equals("Submit"))
         {
             String insert=db.Insert("insert into Patient_Details(pname,contact,address,adate,ddate,description,testtype,hid,hpass)values('"+pname.toString()+"','"+contact.toString()+"','"+address.toString()+"','"+adate.toString()+"','"+ddate.toString()+"','"+desc.toString()+"','"+test.toString()+"','"+session.getAttribute("hid").toString()+"','"+session.getAttribute("hpass").toString()+"')");
             out.println(insert);
             
              resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Patient Details Added...');");
            out.println("location='Patient_Details.jsp';");
            out.println("</script>");
         }
         
    }


}