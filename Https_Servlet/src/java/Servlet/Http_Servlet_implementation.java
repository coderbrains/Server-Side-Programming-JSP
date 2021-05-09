/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Awanish kumar singh
 */
public class Http_Servlet_implementation extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        System.out.println("Hello Everyone theis is doPost method");
        resp.setContentType("text/html");
        PrintWriter out= resp.getWriter();
        out.println("<This is a Https_Servlet</h1>");
        out.println("<h1>This is Today's date : " +new Date().toString()+"</h1>");
        
    
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
//    }
//    
    
    
    
}
