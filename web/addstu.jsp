<%-- 
    Document   : addstu
    Created on : 30-Oct-2020, 4:37:21 PM
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
        <h2>Add Student Form</h2>
        <form action="addstudent.jsp" method="post">  
        <table>  
            <tr><td>Roll: </td><td><input type="text" name="roll"/></td></tr>  
            <tr><td>Name: </td><td><input type="text" name="name"/></td></tr>  
            <tr><td>Semester: </td><td><input type="text" name="semester"/></td></tr>  
            <tr><td>CGPA: </td><td><input type="text" name="cgpa"/></td></tr>  
            <tr><td><button type="submit">ADD</button></td><td><button type="reset">Reset</button></td></tr>  
        </table>  
        </form>
        <button onclick="window.location.href='index.jsp'">Cancel</button>
    </body>
</html>
