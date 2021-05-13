<%-- 
    Document   : DescriptiveTags_Page
    Created on : May 13, 2021, 2:38:47 PM
    Author     : Awanish kumar singh
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is Descriptive tags :</h1>
        
        <%
            Random r = new Random(1); //This is Random object and its import is written in Page tag
            out.println(r.nextInt());
            for(int i = 0 ;i  <20; i++){
                int k = r.nextInt();
                out.println("<h1>The random value: " +  k + "</h1>");
            }
            %>
    </body>
</html>
