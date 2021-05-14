/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Awanish kumar singh
 */
public class NewClass extends TagSupport{

    @Override
    public int doStartTag() throws JspException {
        try{
            
            JspWriter out = pageContext.getOut();
            out.println("<Helo everyone this is custom tag 2");
            out.println("<p> Today date : " + new Date().toString());
            
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return SKIP_BODY;
    }
    
    
    
    
}
