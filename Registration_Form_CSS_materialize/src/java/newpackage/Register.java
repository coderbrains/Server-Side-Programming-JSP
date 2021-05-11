/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Awanish kumar singh
 */

@MultipartConfig
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Register</title>");            
//            out.println("</head>");
//            out.println("<body>");
           
            String name = request.getParameter("user_name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            Part part = request.getPart("image");
            String fileName = part.getSubmittedFileName();
            
            
            String url = "jdbc:mysql://localhost:3306/awanish";
            String user = "root";
            String pass = "Awanish@7765";
            
            try {
                
                Thread.sleep(3000);
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection c = DriverManager.getConnection(url, user,pass);
                
                String query = "insert into netbeans_form_20(name, password, email,imageName)"
                        + "values(?,?,?,?)";
                
                PreparedStatement st = c.prepareStatement(query);
                st.setString(1, name);
                st.setString(2, password);
                st.setString(3, email);
                st.setString(4, fileName);
                
                st.executeUpdate();
                
                //Uploading the file
                
                InputStream io = part.getInputStream();
                byte[] data = new byte[io.available()];
                
                io.read(data);
                String file = request.getRealPath("/") + "img"+ File.separator + fileName;
                FileOutputStream fos = new FileOutputStream(file);
                fos.write(data);
                fos.close();
                
                out.println("done");
            } catch (Exception ex) {
                out.println(ex.getMessage());
                out.println("error");
               
            
            
            }

            
//            out.println("</body>");
//            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
