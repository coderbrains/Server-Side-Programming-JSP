/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet_Package;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Awanish kumar singh
 */
public class MyNew_Servlet extends JFrame implements Servlet{
    
    ServletConfig config;

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.config = config;
        JOptionPane.showMessageDialog(this, "InitMethod is running");
    
    }

    @Override
    public ServletConfig getServletConfig() {
    
        return config;
    
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        
        JOptionPane.showMessageDialog(this, "Response Servicing is done...........");
    
    }

    @Override
    public String getServletInfo() {
        
    
        return "";
    }

    @Override
    public void destroy() {
        
    }
    
}
