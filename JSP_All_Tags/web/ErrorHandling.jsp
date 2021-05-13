<%-- 
    Document   : ErrorHandling
    Created on : May 13, 2021, 3:27:20 PM
    Author     : Awanish kumar singh
--%>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="Error_Page.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is error handling page</h1>

        <%!
            int a = 10;
            int b = 0;
        %>

        <% 
            int c = a / 0;
            out.println("<h1>The value of c is : " + c + "</h1>");


        %>
    </body>
</html>
