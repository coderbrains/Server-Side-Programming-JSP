/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author Awanish kumar singh
 */
public class Servlet_Generic extends GenericServlet{

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        
        res.setContentType("text/html");
        
        PrintWriter out = res.getWriter();
        
        out.print("This is a generic servlet");
        out.print("This is Today's date : "   + new Date().toString());
    
    }
    
}
