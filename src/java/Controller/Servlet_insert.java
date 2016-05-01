/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Add_Data;
import Model.Simple_methods;
import Model.Super_DataBase;

import java.io.File;
import java.io.IOException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
public class Servlet_insert extends HttpServlet {

    Super_DataBase database = new Super_DataBase();
    Add_Data adddata = new Add_Data();

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String appPath = request.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + "images" + File.separator;

        // creates the save directory if it does not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        Part image = request.getPart("image");


        if (image != null) {
            String fileName = extractFileName(image);

            if (fileName.length() > 0) {
                String s = new Simple_methods().primary_name();
                s += fileName.substring(fileName.indexOf("."));
                image.write(savePath + File.separator + s);
                database.setName(s);
                database.setPath(savePath + File.separator + s);
                database.setType(request.getParameter("items_insert"));
                database.setHints(request.getParameter("textarea"));
                adddata.adddata(database);
            }
                RequestDispatcher rd = request.getRequestDispatcher("admin_page.jsp");
                rd.forward(request, response);
        }


    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
