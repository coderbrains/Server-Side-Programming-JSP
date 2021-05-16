<%-- 
    Document   : FunTag
    Created on : May 15, 2021, 8:49:24 AM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
        <c:set value="CoderBrains" var="name"></c:set>
    
            <h1>This is the : <c:out value="${name}"  ></c:out>   </h1>
        
            <h1>The length of the name is : <c:out value="${fn:length(name)}" ></c:out></h1>
    
            <h1>The lower form of the name is : <c:out value= "${fn:toLowerCase(name)}" ></c:out></h1>
            <h1>The lower form of the name is : <c:out value= "${fn:toUpperCase(name)}" ></c:out></h1>
    </body>
</html>
