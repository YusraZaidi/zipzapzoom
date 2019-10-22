<%-- 
    Document   : bidingongoing.jsp
    Created on : Oct 20, 2019, 2:35:33 AM
    Author     : SOM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zipzapzoom","root","");
    PreparedStatement ps = con.prepareStatement("select * from bidinglog");
    ResultSet rs=ps.executeQuery();
   String oid="";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biding ongoing</title>
    </head>
    <body>
        <h1>Active Biding</h1>
        <%
        while(rs.next()){
             oid=rs.getString(1);
        
        %>
        <a href="bidingoid.jsp?oid=<%=oid%>"> <%=oid%> Click here</a><br>
        <%}%>
    </body>
</html>
