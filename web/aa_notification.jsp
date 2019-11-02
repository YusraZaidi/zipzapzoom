<%--
    Document   : aa_notification
    Created on : Oct 28, 2019, 5:22:48 PM
    Author     : Raja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
            Class.forName("com.mysql.jdbc.Driver");
            String email="aa";
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zipzapzoom","root","");
            PreparedStatement ps = con.prepareStatement("select * from notification where email=?");
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                String msg=(String)rs.getString(3);
                //String oid=msg.substring(msg.lastIndexOf(" "),msg.length()-1);
                %><p><%=msg%></p><%
                if(msg.equals("A new entry of transporter has bee added")){
                    %><a href="transporter_verify.jsp"> click</a><%
                }
                else {
                      %><a href="aa_query.jsp "> click</a><%
                }
            }
            %>
    </body>
</html>
