<%-- 
    Document   : viewtrans
    Created on : Oct 23, 2019, 10:05:46 AM
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
          String email=request.getParameter("email");
          String name=request.getParameter("name");;
          String address=request.getParameter("address");;
              Connection con=MyCon.getConnection();
            PreparedStatement ps=con.prepareStatement("Select * from transporterMain where emailaddress=?");
            ps.setString(1,email);
            ResultSet rs=ps.executeQuery();
              String pan="";
                String ipn="";
                  String an="";
            
       %>
       <%while(rs.next()){
           pan=rs.getString(2);
           ipn=rs.getString(3);
           an=rs.getString(5);
            
       %>
       <p><%=email%></p>
       <p><%=address%></p>
       <p><%=name%></p>
       <p><%=pan%></p>
       <p><%=ipn%></p>
       <p><%=an%></p>
            <%}
            %>
            <form action="aa_verify" >
                <input type="hidden" value="<%=email%>" name="email"/>
                <input type="submit" value="accept"/>
            </form>
    </body>
</html>
