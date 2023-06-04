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
public class bookbed extends HttpServlet {

  
    
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String pid=req.getParameter("pid");
        String pname=req.getParameter("pname");
        String rno=req.getParameter("rno");
        String bno=req.getParameter("bno");
        String bdate=req.getParameter("bdate");
       
        String event=req.getParameter("btn");
        
        
        
        out.println(pid);
        out.println(pname);
        out.println(rno);
        out.println(bno);
        out.println(bdate);
        
        database db=new database();
         String result=db.connectdb();
         out.println(result);
     
           
         if(event.equals("Add"))
         {
             String insert=db.Insert("insert into bookbed(patientid,pname,roomno,bedno,bookingdate)values('"+pid.toString()+"','"+pname.toString()+"','"+rno.toString()+"','"+bno.toString()+"','"+bdate.toString()+"')");
             out.println(insert);
         }
         
          if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from bookbed where patientid='"+pid.toString()+"'");
             out.println(delete);
         }
         
         if(event.equals("Update"))
         {
             String update=db.Update("update bookbed set pname='"+pname.toString()+"',roomno='"+rno.toString()+"',bedno='"+bno.toString()+"',bookingdate='"+bdate.toString()+"' where patientid='"+pid.toString()+"'");
             out.println(update);
         }
     
        
        
        
        
    }
}
