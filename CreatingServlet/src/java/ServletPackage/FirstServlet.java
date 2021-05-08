/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPackage;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author Awanish kumar singh
 */
public class FirstServlet implements Servlet{
    
    ServletConfig servletConfig;

    @Override
    public void init(ServletConfig config) throws ServletException {
        servletConfig =config;
        System.out.println("Hello here the init method is running");
       
    }

    @Override
    public ServletConfig getServletConfig() {
        
        return servletConfig;
    
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
    
        System.out.println("Servicing.....");
    
    }

    @Override
    
    public String getServletInfo() {
    
        return "";
    
    }

    @Override
    public void destroy() {
    
    }
    
}
