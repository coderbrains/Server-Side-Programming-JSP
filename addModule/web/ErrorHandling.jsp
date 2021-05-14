<%-- 
    Document   : ErrorHandling
    Created on : May 13, 2021, 5:57:41 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page errorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
   
    </head>
    <body>
        
        
        <div  class="container p-3 text-center" style="padding: 50px; margin-top: 100px;" >
            <img src="img/error.png " class="image-fluid text-center"/>
            
        </div>
        
        
        <section class="text-center">
            <div><h1 class="display-3">Sorry! Some Error occured</h1></div>
            <a  class="btn  btn-outline-primary"   href="index.html">Home Page</a>

        </section>
        
    </body>
</html>
