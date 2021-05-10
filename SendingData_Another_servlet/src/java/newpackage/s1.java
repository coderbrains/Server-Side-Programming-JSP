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
public class s1 extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        
        String num1 = req.getParameter("first");
        String num2 = req.getParameter("second");
        
        int n1 = Integer.parseInt(num1);
        int n2 = Integer.parseInt(num2);
        
        int sum = n1 + n2;
        
        req.setAttribute("sum", sum);
        RequestDispatcher rq = req.getRequestDispatcher("s2");
        rq.forward(req, resp);
        
        
        
    }
    
    
    
}
