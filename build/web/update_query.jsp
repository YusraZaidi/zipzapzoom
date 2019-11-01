<%-- 
    Document   : update_query
    Created on : Oct 23, 2019, 12:07:37 AM
    Author     : Raja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
                    String oid=request.getParameter("oid");
                    String email=request.getParameter("email");
        %>
                    <form action="up_q" method="post">
                    <input type="hidden" name="oid" value="<%=oid%>" />
                    <input type="hidden" name="email" value="<%=email%>" />
                    <input type="text" name="price" value="price"/>
                    <input type="text" name="expected_date" value="expected_Date"/>
                    <input type="submit" value="update"/>
                    </form>
    </body>
</html>
