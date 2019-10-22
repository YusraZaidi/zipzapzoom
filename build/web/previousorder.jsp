<%--
    Document   : previousorder
    Created on : Oct 22, 2019, 11:36:25 AM
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
        Previous Orders
        <%
            String str=(String)session.getAttribute("checked");
            if(str.equals("no")){
                %>
                <p>invalid</p>
                 <a href="cust_login.jsp">login </a>
                 <%
            }
               
            String email=(String)session.getAttribute("email");
            Connection con=MyCon.getConnection();
            PreparedStatement ps=con.prepareStatement("select oid from query_table where cust_email=? and status=e");
            ps.setString(1,email);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                String s=rs.getString(1);%>
                <p>order Id</p><%=s%>
               
                <%
            }
                   
        %>
    </body>
</html>