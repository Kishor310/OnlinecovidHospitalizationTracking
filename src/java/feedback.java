

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class feedback extends HttpServlet {
 
    
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String pname=req.getParameter("pname");
        String mob=req.getParameter("mob");
        String email=req.getParameter("email");
        String message=req.getParameter("message");
       String event=req.getParameter("btn");
        
        
        
        out.println(pname);
        out.println(mob);
        out.println(email);
        out.println(message);
       
        
        database db=new database();
         String result=db.connectdb();
         out.println(result);
     
        
         if(event.equals("Send Now"))
         {
             String insert=db.Insert("insert into feedback(pname,mobno,email,message)values('"+pname.toString()+"','"+mob.toString()+"','"+email.toString()+"','"+message.toString()+"')");
             out.println(insert);
            /* resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Feedback send Succesfully');");
            out.println("location='index.jsp';");
            out.println("</script>");*/
         }
        
        
        
    }
}
