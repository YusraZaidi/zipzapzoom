<%--
    Document   : aa_query
    Created on : Oct 22, 2019, 11:18:37 PM
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
        All the coming queries
        <%
            Connection con=MyCon.getConnection();
            PreparedStatement ps=con.prepareStatement("Select oid,cust_email from query_table where status=?");
            ps.setString(1,"a");
            ResultSet rs=ps.executeQuery();
          //  if(rs.next()){
                while(rs.next()){
                String oid= rs.getString(1);
                String email= rs.getString(2);
               // out.println(email);
            %>
        Order ID's <%=oid%>
         <a href="update_query.jsp?oid=<%=oid%>&email=<%=email%>">Click Here</a><br/>
        <% }
           
                %>
               
       
    </body>
</html>