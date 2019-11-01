<%-- 
    Document   : transporter_verify
    Created on : Oct 23, 2019, 9:26:28 AM
    Author     : Raja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            Connection con=MyCon.getConnection();
            PreparedStatement ps=con.prepareStatement("Select emailaddress,company_name,address from transportertemp where approval=? and type=\"Transporter\"");
            ps.setInt(1,0);
         //   ps.setString(2,"Transporter");
            
            ResultSet rs=ps.executeQuery();
          String email="";
          String name="";
          String address="";

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%while(rs.next()){
            email=rs.getString(1);
            name=rs.getString(2);
            address=rs.getString(3);
            
       %>
       <p><%=email%><a href="viewtrans.jsp?email=<%=email%>&name=<%=name%>&address=<%=address%>">ClickHere</a><p>
            <%}%>
    </body>
</html>
