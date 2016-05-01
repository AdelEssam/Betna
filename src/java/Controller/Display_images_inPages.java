/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Operations;
import Model.Super_DataBase;
import com.google.gson.Gson;
import com.sun.corba.se.spi.orb.Operation;
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
@WebServlet(name = "Display_images_inPages", urlPatterns = {"/Display_images_inPages"})
public class Display_images_inPages extends HttpServlet {

    Operations op = new Operations();
    List<Super_DataBase> images;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        String page=request.getParameter("page");
        images =op.Get_paths(type);
        request.setAttribute("images", images);

        request.getRequestDispatcher(page).forward(request, response);
    }
}
