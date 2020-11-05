<%-- 
    Document   : deletestudent
    Created on : 30-Oct-2020, 5:22:33 PM
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
        <%@page import="com.studentcrud.service.StudentCrud"%>  
        <jsp:useBean id="u" class="com.studentcrud.bean.Student"></jsp:useBean>  
        <jsp:setProperty property="*" name="u"/>  

        <%  
        int i=StudentCrud.delete(u);
        if(i>0){%>
        <h2>Student details deleted successfully!</h2><br><button onclick="window.location.href='index.jsp'">Home</button>
        <%}else{%>  
        <h2>Error occurred! Please repeat the action</h2><br><button onclick="window.location.href='deletestu.jsp'">Update Student</button>  
        <%}%>
    </body>
</html>
