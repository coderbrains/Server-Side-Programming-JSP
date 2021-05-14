<%-- 
    Document   : Page2
    Created on : May 14, 2021, 12:05:00 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello This is a page 2</h1>
        
        <%
            out.println("wait...........");
            Thread.sleep(1000);
            out.println("Hello");
            response.sendRedirect("Page3.jsp");
            %>
    </body>
</html>
