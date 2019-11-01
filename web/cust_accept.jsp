<%--
    Document   : cust_accept
    Created on : Oct 25, 2019, 5:33:52 PM
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
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            String oid=request.getParameter("oid");
            Connection con=MyCon.getConnection();
            PreparedStatement ps=con.prepareStatement("Select * from query_table where oid=?");
            ps.setString(1,oid);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                String l_place=rs.getString(2);
                String l_date=rs.getString(3);
                String d_place=rs.getString(4);
                String desc_item=rs.getString(6);
                String weight=rs.getString(7);
                String expected_date=rs.getString(9);
                String price=rs.getString(8);
                %>
                <div id="b">
                    <input type="button" value="accept" onclick="getVal(this.value)"/>
                    <input type="button" value="reject" onclick="getVal(this.value)"/>
                </div>
            <%
                }
            String s="<script>document.writeln(v)</script>";
            out.println(s);
            ps=con.prepareStatement("update query_table set status=? where oid=?");
            ps.setString(2,oid);
            if(s.equals("accept"))
                    ps.setString(1,"c");
            else
                    ps.setString(1,"d");
        %>
   
        <script>
            var v="";
            function getVal(value)
              {
                  v=value;
            var d=document.getElementById("b");
                   if(value=="accept")
                    {
                        d.innerHTML="Thank you for accepting our offer. We will soon notify you about the final bidding price";
                    }
                    else{
                        d.innerHTML="We will try to reach upto your expectation next time";
                       
                    }
                   
              }
        </script>
    </body>
</html>
