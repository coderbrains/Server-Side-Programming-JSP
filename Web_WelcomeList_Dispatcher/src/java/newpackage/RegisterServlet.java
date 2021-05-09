/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Awanish kumar singh
 */
public class RegisterServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        
        
        String name = req.getParameter("user");
        String  email = req.getParameter("email");
        String terms = req.getParameter("terms");
        
        if(terms != null){
            
        out.println(name);
        out.println(email);
        out.println(terms);
        
        //Forwarding the request
        
        RequestDispatcher rq = req.getRequestDispatcher("success");
        rq.forward(req, resp);
        
        
        }else{
            out.println("<h1>You have not clicked to the Terms and conditions</h1>");
            
            //Including the request
            
            RequestDispatcher rq = req.getRequestDispatcher("index.html");
            rq.include(req, resp);
        }
    }
    
    
    
}
