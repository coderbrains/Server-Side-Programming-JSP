<%-- 
    Document   : ScriptingTags
    Created on : May 13, 2021, 2:30:04 PM
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
        <h1>Hello World!</h1>
        <hr>
        <h1>This tag is used to write some java code</h1>


        <!--This is decleration tags-->
        <%!
            int a = 20;
            String name = "Awanish";

            int sum(int n) {
                return a + n;
            }
        %>


        <!--This is Scripting tags-->

        <%
            int n = sum(10);
            String nam = "Manish";
            for (int i = 0; i < 10; i++) {
                    out.println(" <h1>The value of i is: " +   i + " </h1> ");
    }
    %>


    <h1>The name of the boy is : <%=  nam%></h1>





</body>
</html>
