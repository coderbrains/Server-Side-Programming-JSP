<%-- 
    Document   : First
    Created on : May 12, 2021, 4:02:59 PM
    Author     : Awanish kumar singh
--%>

<!--Different types of tags are
    
    1.Decleration Tags->For variable decleration
    2.Scriplet Tags->for writting java code
    3.Expression Tags->For writting varaible or java code between the Html tags
    4.Directive tags:-
        1.Page directive tags -> used to apply the import statement or any particular action 
            for the whole page.

        2.Include  DIrective :- Used to include the other jsp pages to another page.
        3.Taglib directive is used when we want to use other tags
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
--><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: #e2e2e2">
        <h1 style="background: red">Welcome</h1>
        <!--
        
<!--Decleration tags-->

<%!
    int a = 20;

    int sum() {
        return a;
    }
%>


<!--Scripting tags-->
<%
    out.println(sum());
    if (a > 10) {
        out.println("<h1>A is greater than 10 </h1>");
    }
%>

<!--Expression tags-->

<h1 style="color: red">The value of a = <%= a * 20%></h1>

<%@include file="second.jsp" %> 

<h1>The Random number is :

    <%

        Random r = new Random();
        int i = r.nextInt(20);

    %>

    
</h1>



</body>
</html>
