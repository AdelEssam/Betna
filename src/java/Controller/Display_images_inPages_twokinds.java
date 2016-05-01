/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Operations;
import Model.Super_DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adelessam
 */
@WebServlet(name = "Display_images_inPages_twokinds", urlPatterns = {"/Display_images_inPages_twokinds"})
public class Display_images_inPages_twokinds extends HttpServlet {
  Operations op1 = new Operations();
  Operations op2= new Operations();
    List<Super_DataBase> img_info1;
    List<Super_DataBase> img_info2;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type1 = request.getParameter("type1");
        String type2 = request.getParameter("type2");
        String page=request.getParameter("page");
        img_info1= op1.Get_paths(type1);
        img_info2= op2.Get_paths(type2);
        request.setAttribute("images1", img_info1);
        request.setAttribute("images2", img_info2);
        request.getRequestDispatcher(page).forward(request, response);
    }
}