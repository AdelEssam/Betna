/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Operations;
import Model.Super_DataBase;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author adelessam
 */
@WebServlet(name = "Get_image", urlPatterns = {"/Get_image"})
public class Get_image extends HttpServlet {
       Super_DataBase data=null;
       Operations opreation= new Operations();
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
            try {
                        int id=Integer.parseInt(request.getParameter("id"));
			data=opreation.Get_path(id);
			File file =new File(data.getPath());
			MimetypesFileTypeMap mimeTypesMap = new MimetypesFileTypeMap();
			String contentType = mimeTypesMap.getContentType(file);
			response.setContentType(contentType);
			response.setContentLength((int) file.length());
			response.setHeader("Content-Disposition", "attachment; filename=" + file.getName());
			IOUtils.copy(new FileInputStream(file),response.getOutputStream());
		} catch (IOException ignored) {
                    ignored.printStackTrace();
		} 
    }
}
