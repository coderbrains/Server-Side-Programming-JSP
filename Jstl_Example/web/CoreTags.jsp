<%-- 
    Document   : CoreTags
    Created on : May 15, 2021, 5:45:14 AM
    Author     : Awanish kumar singh
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>This is Jstl  Example</h1>

        <!--1.Out tag- Used to print data as we do in expression tag.-->
        <!--2.Set tag is used to set value to a variable-->

        <c:set var="a" value="12" scope="application"></c:set>

        <h1> The value of the local variable is :<c:out value="${a}" ></c:out>   </h1>
        
        <!--Remove tags is used to remove a variablewhich has been declared previously-->
        
        <c:remove var="a"></c:remove>
        
        <c:out value="${a}">Defaukt value is printed because the data has been removed</c:out>
        
        <hr>
        
        <!--if tags is used to test the conditions which has been predefined--> 
        <c:set var="i" value="25"></c:set>
        <c:if test="${i>30}">
            <h1>Yes the value of i is  greater than 30</h1>
        </c:if>
        
        <!--Choose,when and otherwise tag which is same as java switch-->
        
        <c:set var="b" value="10"></c:set>
        
        <c:choose>
            <c:when test="${b>0}">
                <h1>This is my first case.</h1>
                <h2>The number is positive.</h2>
            </c:when>
            
            <c:when test="${b<0}">
                <h1>This is my second  case.</h1>
                <h1>The number is negative.</h1>
            </c:when>
                
                <c:otherwise >
                    <h1>This is my default case and the number is 0</h1>
                </c:otherwise>
            
        </c:choose>

                    
              <!--ForEach tag :It is used to repeat and loop a statement-->
              
        <c:forEach var="j" begin="0" end="10" >
            
            <h1> <c:out value="${10 * j}"></c:out></h1>
            
        </c:forEach>
            
            
            
        <!--Redirect Tag is used to redirect the page from A  > B -->    
        
        <%--<c:redirect url="https://www.google.com"></c:redirect>--%>
    
        <!--Instead of writting the whole url  at once we can make our own url-->
        
        <c:url var="myurl" value="https://www.google.com">
            
            <c:param name="q"   value="Learn code with Awanish"></c:param>
        </c:url>
        
        <c:out value="${myurl}"></c:out>
        
        <c:redirect url="${myurl}"></c:redirect>
        
        
        
        
    </body>
</html>
