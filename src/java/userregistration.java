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
 * @author SparkLab
 */
public class userregistration extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String fname=req.getParameter("fname");
        String adddress=req.getParameter("adddress");
        String mobile=req.getParameter("mobile");
        String email=req.getParameter("email");
        String symptoms=req.getParameter("symptoms");
        String treport=req.getParameter("treport");
        String username=req.getParameter("username");
        String pass=req.getParameter("pass");
        String event=req.getParameter("btn");
        
        
        
        out.println(fname);
        out.println(adddress);
        out.println(mobile);
        out.println(email);
        out.println(symptoms);
        out.println(treport);
        out.println(username);
        out.println(pass);
       
        
        database db=new database();
         String result=db.connectdb();
         out.println(result);
     
         if(event.equals("Register Now"))
         {
             String insert=db.Insert("insert into uregistration(fname,address,mob,email,uname,pass)values('"+fname.toString()+"','"+adddress.toString()+"','"+mobile.toString()+"','"+email.toString()+"','"+username.toString()+"','"+pass.toString()+"')");
             out.println(insert);
             resp.sendRedirect("user_login.jsp");
         }
        
        
        
        
    }
}
