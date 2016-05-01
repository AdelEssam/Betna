/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Operations;
import Model.Super_DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adelessam
 */
@WebServlet(name = "Servlet_update", urlPatterns = {"/Servlet_update"})
public class Servlet_update extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             int id=Integer.parseInt(request.getParameter("id"));
             String hints=request.getParameter("edit");             
             System.out.println("hints= "+hints+" id="+id);
             Operations update=new Operations();
             update.Update(id, hints);
    
    }
}
