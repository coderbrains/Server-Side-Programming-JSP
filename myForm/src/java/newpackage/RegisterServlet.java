/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Awanish kumar singh
 */
public class RegisterServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("Here is your result");
        String name = req.getParameter("username");
        String pass = req.getParameter("pass");
        String email = req.getParameter("email");
        String gender = req.getParameter("gender");
        String course = req.getParameter("course");
        String terms = req.getParameter("conditions");
        
        
        if(terms!=null){
            
            if(terms.equals("Checked")){
            
                out.println("<h1>Name :" + name + "</h1>");
                out.println("<h1>Password :" + pass + "</h1>");
                out.println("<h1>E-mail :" + email + "</h1>");
                out.println("<h1>Gender :" + gender + "</h1>");
                out.println("<h1>Course :" + course + "</h1>");
            }           
    }else{
            out.println("<h1>Terms and condition is not checked</h1>");
        }
  
        
    }

   
        
        
  
    
    
    
}
