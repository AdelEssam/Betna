/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Add_Admin;
import Model.AdminClass;
import Model.Check_Admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author adelessam
 */
public class Admin_Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             AdminClass admin=new AdminClass();
             String name=request.getParameter("username");
             admin.setUsername(name);
             admin.setPassword(request.getParameter("password"));
            /* Add_Admin add=new Add_Admin();
             add.addAdmin(admin);
            */ Check_Admin check=new Check_Admin();
             boolean user=check.check(admin);
             if(user==true){
               HttpSession session = request.getSession();
                session.setAttribute("username",name);
                response.sendRedirect("admin_page.jsp");

            } else {
                response.sendRedirect("login.jsp");
             } 
    }
}
