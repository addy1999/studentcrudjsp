<%-- 
    Document   : deletestu
    Created on : 30-Oct-2020, 5:20:58 PM
    Author     : adhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="com.studentcrud.service.StudentCrud,com.studentcrud.bean.*,java.util.*"%>  
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

        <h1>Student List</h1>  

        <%  
        List<Student> list=StudentCrud.getAllRecords();  
        request.setAttribute("list",list);
        %>  

        <table border="1" width="90%">  
        <tr><th>Roll</th><th>Name</th><th>Semester</th><th>CGPA</th><th>Edit</th></tr>  
        <c:forEach items="${list}" var="s">  
        <tr><td>${s.getRoll()}</td><td>${s.getName()}</td><td>${s.getSemester()}</td><td>${s.getCgpa()}</td><td><a href="deletestudent.jsp?roll=${s.getRoll()}">Delete</a></td></tr>  
        </c:forEach>  
        </table>
        <button onclick="window.location.href='index.jsp'">Home</button>
    </body>
</html>
