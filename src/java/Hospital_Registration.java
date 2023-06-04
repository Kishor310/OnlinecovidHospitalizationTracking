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

/**
 *
 * @author HP
 */
public class Hospital_Registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();
        
        String hid=req.getParameter("txt_id");
        String hname=req.getParameter("hname");
        String address=req.getParameter("address");
        String pin=req.getParameter("txt_pin");
        String contact=req.getParameter("txt_contact");
        String taluka=req.getParameter("taluka");
        String location=req.getParameter("txt_location");
        String bed=req.getParameter("txt_bed_capacity");
        String patient=req.getParameter("pcapacity");
        String userid=req.getParameter("txt_userid");
        
        String pass=req.getParameter("txt_pass");
        
         database db=new database();
         String result=db.connectdb();
         out.println(result);
         
          String insert=db.Insert("insert into hospital_registration(host_name,address,pic,contact,taluka,location,bed,patient,userid,pass)values('"+hname+"','"+address+"','"+pin+"','"+contact+"','"+taluka+"','"+location+"','"+bed+"','"+patient+"','"+userid+"','"+pass+"')");
          out.println(insert);
          
          
          
          resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Hospital Registred Successfully...');");
            out.println("location='admin_login.jsp';");
            out.println("</script>");
           
        
    }


}