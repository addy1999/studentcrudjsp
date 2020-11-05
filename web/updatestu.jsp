<%-- 
    Document   : updatestu
    Created on : 30-Oct-2020, 5:06:43 PM
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
        <%@page import="com.studentcrud.service.StudentCrud,com.studentcrud.bean.Student"%>  
  
        <%  
        String rol=request.getParameter("roll");  
        Student u=StudentCrud.getRecordById(rol);  
        %>  

        <h2>Update Student Form</h2>  
        <form action="updatestudent.jsp" method="post">   
            <table>  
                <tr><td>Roll: </td><td><input type="text" name="roll" value="<%= u.getRoll()%>"/></td></tr>  
                <tr><td>Name: </td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
                <tr><td>Semester:</td><td><input type="text" name="semester" value="<%= u.getSemester()%>"/></td></tr>  
                <tr><td>CGPA: </td><td><input type="text" name="cgpa" value="<%= u.getCgpa()%>"/></td></tr>   
                <tr><td><button type="submit">Update</button></td></tr>
            </table>  
        </form>
                <button onclick="window.location.href='updatestuview.jsp'">Cancel</button>
    </body>
</html>
