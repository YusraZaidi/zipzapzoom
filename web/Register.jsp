<%-- 
    Document   : login.jsp
    Created on : Oct 17, 2019, 5:57:59 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
    </head>
    <body>
        <h1>Register</h1>
        <form action="resgisterUser">
            <input type="email" name="email" placeholder="email"/>
            <input type="text" name="name" placeholder="Company Name"/>
            <input type="text" name="address" placeholder="Address"/>
            <input type="number" name="phoneno" placeholder="Phone Number"/>
            <input type="password" name="password" placeholder="Password"/>
            User Type : <select name="type">
            <option>Transporter</option>
            <option>Customer</option>
            </select>
            <input type="Submit" value="Sign Up"/>
        </form>
    </body>
</html>
