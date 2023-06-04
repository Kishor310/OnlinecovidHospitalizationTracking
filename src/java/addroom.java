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
public class addroom extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String rid=req.getParameter("rid");
        String rnumber=req.getParameter("rno");
        String bcapacity=req.getParameter("bedcap");
        String event=req.getParameter("btn");
        
        
        
        out.println(rid);
        out.println(rnumber);
        out.println(bcapacity);
        database db=new database();
         String result=db.connectdb();
         out.println(result);
     
        
        
         if(event.equals("Add"))
         {
             String insert=db.Insert("insert into addroom(roomnum,bedcap)values('"+rnumber.toString()+"','"+bcapacity.toString()+"')");
             out.println(insert);
         }
         
          if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from addroom where roomid='"+rid.toString()+"'");
             out.println(delete);
         }
         
         if(event.equals("Update"))
         {
             String update=db.Update("update addroom set roomnum='"+rnumber.toString()+"',bedcap='"+bcapacity.toString()+"' where roomid='"+rid.toString()+"'");
             out.println(update);
         }
     
        
        
    }

}
