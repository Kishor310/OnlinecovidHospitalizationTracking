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
public class addstaff extends HttpServlet {

  
    
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String sid=req.getParameter("sid");
        String sname=req.getParameter("sname");
        String designation=req.getParameter("designation");
        String salary=req.getParameter("salary");
        String jdate=req.getParameter("jdate");
        String event=req.getParameter("btn");
        
        
        
        out.println(sid);
        out.println(sname);
        out.println(designation);
        out.println(salary);
        out.println(jdate);
        
     
        database db=new database();
         String result=db.connectdb();
         out.println(result);
         
         
         if(event.equals("Add"))
         {
             String insert=db.Insert("insert into addstaff(staffname,designation,salary,joining)values('"+sname.toString()+"','"+designation.toString()+"','"+salary.toString()+"','"+jdate.toString()+"')");
             out.println(insert);
         }
         
          if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from addstaff where staffid='"+sid.toString()+"'");
             out.println(delete);
         }
         
         if(event.equals("Update"))
         {
             String update=db.Update("update addstaff set staffname='"+sname.toString()+"',designation='"+designation.toString()+"',salary='"+salary.toString()+"',joining='"+jdate+"' where staffid='"+sid.toString()+"'");
             out.println(update);
         }
     
        
        
        
        
    }
}
