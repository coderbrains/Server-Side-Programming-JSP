<%-- 
    Document   : form
    Created on : May 13, 2021, 5:47:38 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="ErrorHandling.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String n1 = request.getParameter("n1");
            String n2 = request.getParameter("n2");
            
            int a =  Integer.parseInt(n1);
            int b = Integer.parseInt(n2);
            a= a + b;
        %>
        
        <h1>The Result of the two number is :  <%= a %> </h1>
        
    </body>
</html>
