<%-- 
    Document   : Login
    Created on : Oct 17, 2019, 9:07:15 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="CheckUser">
            <input type="text" placeholder="email" name ="email"/>
            <input type="password" placeholder="Password" name="password"/>
            <input type="submit" value="Log in"/>
        </form>
    </body>
</html>
