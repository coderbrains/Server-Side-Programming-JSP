package newpackage;


import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Awanish kumar singh
 */
public class MyTagLib extends TagSupport{

    @Override
    public int doStartTag() throws JspException {
        
        JspWriter out = pageContext.getOut();
        try {
            out.println("<h1>This is my custom tag</h1>");
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        
        return SKIP_BODY;
        
    }
    
    
    
}
