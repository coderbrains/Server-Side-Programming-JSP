/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generic;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author Awanish kumar singh
 */
public class Servlet_Using_Interface
        implements  Servlet{

    @Override
    public void init(ServletConfig config) throws ServletException {
        
    
    }

    @Override
    public ServletConfig getServletConfig() {
       return null;
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
    
        
        res.setContentType("text/html");
        
        PrintWriter out = res.getWriter();
        
        out.print("Hello");
    }

    @Override
    public String getServletInfo() {
    
        return "";
    }

    @Override
    public void destroy() {
        
    }
    
}
