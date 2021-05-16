<%-- 
    Document   : SqlTag
    Created on : May 15, 2021, 9:07:10 AM
    Author     : Awanish kumar singh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    
    </head>
    <body>
        <div style="background: red" class="header"><h1 class="text-center" >Student Data</h1></div>
        <hr>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/gniot_library" user="root" password="Awanish@7765" var="ds" ></sql:setDataSource>
        
        <sql:query var="rs" dataSource="${ds}">select * from student</sql:query>
        
        
        <div class="container">

            <table style="border: solid black 2px" class="table">

                <tr style="border: solid black 2px">
                    <td>Id</td>
                    <td>Name</td>
                    <td>Student Email Address</td>
                    <td>Password</td>
                    <td>Mobile</td>
                    <td>Gender</td>
                    <td>Date of Birth</td>
                    <td>Address</td>

                </tr>

            <c:forEach items="${rs.rows}" var="row">
            <tr>
                <td><c:out value="${row.id}"></c:out></td>
                <td><c:out value="${row.name}"></c:out></td>
                <td><c:out value="${row.e_mail}"></c:out></td>
                <td><c:out value="${row.pass}"></c:out></td>
                <td><c:out value="${row.mobile}"></c:out></td>
                <td><c:out value="${row.gender}"></c:out></td>
                <td><c:out value="${row.Death_of_Birth}"></c:out></td>
                <td><c:out value="${row.address}"></c:out></td>
            </tr>
            </c:forEach>
            </table>    
            
        </div>
        
        
        
    </body>
</html>
