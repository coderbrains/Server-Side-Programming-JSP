<%-- 
    Document   : Third
    Created on : May 13, 2021, 9:01:20 AM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="background: red">Hello World!</h1>
        <hr>
        <p:set var="name" value="Coder Brains"></p:set>
        <h1><p:out value="${name}" ></p:out></h1>
        <h1><p:set var="index" value="20"></p:set></h1>
        <p:if test="${ index> 20 }" >
            
            <h1>This comes under the greater or smaller</h1>
        </p:if>
    </body>
</html>
