<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Inputted Information</title>
    </head>
    <body bgcolor="green">
        <h1 align="center" style="margin-top: 100px;">Your information are:</h1>
        <%
            String Name = request.getParameter("Name");
            String Pass = request.getParameter("Pass");
            String RePass = request.getParameter("RePass");
            String Mail = request.getParameter("Mail");
            String Gender = request.getParameter("Gender");
            String Country = request.getParameter("Country");
            String Address = request.getParameter("Address");
            String Phone = request.getParameter("Phone");
        %>
        <table align="center">
            <tr><td>Name: <%= Name%></td></tr>        
            <tr><td>Password: <%= Pass%></td></tr>   
            <tr><td>Email: <%= Mail%></td></tr>  
            <tr><td>Gender: <%= Gender%></td></tr>  
            <tr><td>Country: <%= Country%></td></tr>  
            <tr><td>Address: <%= Address%></td></tr>  
            <tr><td>Phone: <%= Phone%></td></tr>  
        </table>

    </body>
</html>
