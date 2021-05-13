<%-- 
    Document   : ExpressionTags
    Created on : May 13, 2021, 2:26:56 PM
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
        <h1>It is used to print some variable in html tags</h1>
        <hr>
        <%!
            int a = 20;
            int b = 10;
            String name = "Awanish";
            %>
            
            <h1>Hello everyone this is : <%= name %> </h1>
    </body>
</html>
