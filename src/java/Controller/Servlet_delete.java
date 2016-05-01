/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Operations;
import Model.Super_DataBase;
import com.sun.corba.se.spi.orb.Operation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author adelessam
 */
@WebServlet(name = "Servlet_delete", urlPatterns = {"/Servlet_delete"})
public class Servlet_delete extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Super_DataBase data=new Super_DataBase();
        data.setId(Integer.parseInt(request.getParameter("id")));
            System.out.println(request.getParameter("id"));
            Operations op=new Operations();
            op.Delete(data);
    }
}
