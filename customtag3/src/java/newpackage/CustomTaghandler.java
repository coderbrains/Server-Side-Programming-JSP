/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Awanish kumar singh
 */
public class CustomTaghandler extends TagSupport{
    
    public int number;
    public String color;

    public void setColor(String color) {
        this.color = color;
    }

    public void setNumber(int number) {
        this.number = number;
    }
    

    @Override
    public int doStartTag() throws JspException {
        
        
        JspWriter out = pageContext.getOut();
        
        try {
            out.println("<div style = 'color : "+ color + "';");
            for(int i = 1; i < 11; i++){
                
                    out.print("<p>" + number * i +  "<p>");
            
            }
            
            out.println("</div>");
            
            
        } catch (Exception e) {
            
            e.printStackTrace();
        
        }
        
        return SKIP_BODY;
    }
    
    
}
