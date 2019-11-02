<%--
    Document   : notification
    Created on : Oct 25, 2019, 2:37:46 PM
    Author     : Raja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String ch=(String)session.getAttribute("checked");
    if(ch!="yes"){
        response.sendRedirect("cust_login.jsp");
    }
    String email=(String)session.getAttribute("email");
    String utype=(String)session.getAttribute("utype");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         Connection con=MyCon.getConnection();
            PreparedStatement ps;
         if(utype.equals("customer")){
         ps=con.prepareStatement("Select * from notification where email=?");}
         else{
              ps=con.prepareStatement("Select * from notification where email=? or email=?");
            ps.setString(1,email);
                         ps.setString(2,"trans_email");
        }
            ResultSet rs=ps.executeQuery();
            rs.afterLast();
            while(rs.previous())
            {
                String oid=rs.getString(2);
           
        %>
        <p>Order id: <%=rs.getString(2)%> </p>
        <p>Message: <%=rs.getString(3)%> </p>
       
     
        <a href="cust_accept.jsp?oid=<%=oid%>" ><p>...know more </p></a>
        <%
            }
         %>
    </body>
</html>
