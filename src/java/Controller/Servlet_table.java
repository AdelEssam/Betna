/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Operations;
import Model.Super_DataBase;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adelessam
 */
@WebServlet(name = "Servlet_table")
public class Servlet_table extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{      
        String table=request.getParameter("selected");
        Operations op=new Operations();
        List <Super_DataBase>database= op.filling_table(table);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
       JsonObject jsonObject = new JsonObject();
         JsonArray jsonArray  = new JsonArray();
          for (Super_DataBase item : database){
            JsonArray temp = new JsonArray();
             temp.add(item.getId());
             temp.add(item.getName());
             temp.add(item.getType());
             temp.add(item.getHints());
         String imgTag = new StringBuffer("<img src=")
        .append('"')
        .append("Get_image?id")
        .append('=')
        .append(item.getId())
        .append('"')
        .append(" height=\'100\'")
        .append(" width=\'100\'")
        .append(" />")
        .toString();
        temp.add(imgTag);
        temp.add(item.getPath());
         jsonArray.add(temp);
    }
    
    jsonObject.add("data", jsonArray);
     response.getWriter().write(jsonObject.toString());
         }catch(RuntimeException w){
          w.printStackTrace();
        }   
    }

}
