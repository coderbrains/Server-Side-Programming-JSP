<%-- 
    Document   : Taglib_Tag
    Created on : May 13, 2021, 3:16:15 PM
    Author     : Awanish kumar singh
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is taglib Descriptive directory</h1>
        
        <c:set var="name" value="AwanishKumar"></c:set>
        <c:out value="${name}"></c:out>
        
        <c:if test="${name.length() > 10}">
            
            <h1>The name has 10 or more lengths</h1>
        </c:if>
            <h1>Hello</h1>
        
        
        
    </body>
</html>
