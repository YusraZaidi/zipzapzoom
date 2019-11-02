<%-- 
    Document   : bidingoid.jsp
    Created on : Oct 24, 2019, 2:07:53 PM
    Author     : SOM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            String utype=(String)session.getAttribute("utype");
            Connection con=MyCon.getConnection();
            String oid=(String)request.getParameter("oid");
            PreparedStatement ps=con.prepareStatement("Select l_place,l_date,d_place,d_date,description,weight,price,expected_date from query_table where oid=?");
            ps.setString(1,oid);
         //   ps.setString(2,"Transporter");
            
            ResultSet rs=ps.executeQuery();
          String l_place="";
          String l_date="";
          String d_place="";
          String d_date="";
          String description="";
          String weight="";
          String price="";
          String expecteddate="";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
        var req;
        function checkID(){
        req=new XMLHttpRequest();
        req.onreadystatechange=getResult;
        var v=document.getElementById("price").value;
        var oid=document.getElementById("oid").value;
        req.open("get", "updatebid?price="+v+"&oid="+oid, true);
        req.send();            
        }
        function getResult(){
            if(req.readyState==4 && req.status==200){
                res=req.responseText;
                document.getElementById("updateprice1").innerHTML=res;
            }
            else{
               // alert("Invalid bid");
                document.getElementById("updateprice1").innerHTML="Error...."
                
            }
        }
        </script>
    </head>
    <body>
        
<%while(rs.next()){
             l_place=rs.getString(1);
           l_date=rs.getString(2);
           d_place=rs.getString(3);
           d_date=rs.getString(4);
           description=rs.getString(5);
           weight=rs.getString(6);
           price=rs.getString(7);
           expecteddate=rs.getString(8);
            
       %>
            <p><%=l_place%></p>
           <p><%=l_date%></p>
            <p><%=d_place%></p>
                   <p><%=d_date%></p>
                   <p><%=description%></p>
                   <p><%=weight%></p>
                   Base Biding Price<p id="updateprice"><%=price%></p>
                   <p><%=expecteddate%></p>
            <%}%>
            <p>current bid</p>
            <% if(utype.equals("Transporter")){%>
                <input type="text" id="price">
               
                <input type="hidden" value="<%=oid%>" id="oid">
                <button onclick="checkID()">submit your Bid</button>
                    <%}%>
                <div id="updateprice1">
                 <%
                     int f=0;
                     String bidemail="";
                     int bidprice=0;
                 PreparedStatement ps1=con.prepareStatement("Select emailaddress,price from bidinglog where oid=?");
            ps1.setString(1,oid);
         //   ps.setString(2,"Transporter");
            
            ResultSet rs1=ps1.executeQuery();
            while(rs1.next()){
                f=1;bidemail=rs1.getString(1);
                bidprice=Integer.parseInt(rs1.getString(2));
            }
                 %>
                 <%=bidprice%>  <%=bidemail%>
                </div>
    </body>
</html>
