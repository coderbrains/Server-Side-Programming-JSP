<%-- 
    Document   : Index
    Created on : May 15, 2021, 5:31:26 AM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is Jstl  Example</h1>
        
        <!--1.Out tag- Used to print data as we do in expression tag.-->
        <!--2.Set tag is used to set value to a variable-->
        
        <c:set var="a" value="12" scope="application"></c:set>
        
            <h1><c:out value="${a}" ></c:out>   </h1>
        
        
    </body>
</html>
