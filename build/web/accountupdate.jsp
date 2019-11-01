<%--
    Document   : accountupdate.jsp
    Created on : Oct 18, 2019, 1:52:59 PM
    Author     : SOM
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
        <title>Manage Your Profile</title>
    </head>
    <body>
        <%
            String ch=(String)session.getAttribute("checked");
             if(ch!="yes"){
                response.sendRedirect("cust_login.jsp");
                 }
               String email=(String)session.getAttribute("email");
               Connection con=MyCon.getConnection();
               PreparedStatement ps=con.prepareStatement("select company_name, address, password from transportertemp where emailaddress=? ");
               ps.setString(1,email);
               ResultSet rs=ps.executeQuery();
               String company_name="",address="", password="";
               if(rs.next()){
                   company_name=rs.getString("company_name");
                   address=rs.getString("address");
                   password=rs.getString("password");
               }
        %>
        <form action="acc_up">
            <p>company name<input type="text" name="company_name" value="<%=company_name%>" /></p>
            <p>address<input type="text" name="address" value="<%=address%>" /></p>
            <p>password<input type="text" name="password" value="<%=password%>" /></p>
            <input type="submit" value="submit"/>
        </form>
            <div id="x"></div>
    </body>
</html>
