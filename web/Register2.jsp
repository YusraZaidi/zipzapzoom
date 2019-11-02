<%-- 
    Document   : Register2
    Created on : Oct 18, 2019, 1:56:26 PM
    Author     : SOM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    SimpleDateFormat fm=new SimpleDateFormat("E MMM dd HH:mm:ss yyyy"); 
    Class.forName("com.mysql.jdbc.Driver");
    String email=(String)session.getAttribute("email");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zipzapzoom","root","");
    PreparedStatement ps = con.prepareStatement("select * from transporterMain where emailaddress=?");
    ps.setString(1,email);
    ResultSet rs = ps.executeQuery();
    String pancardno="";
    String joiningdate="$";
    int approval=0;
    int flag=0;
    if(rs.next()){
        String s1=rs.getString(5);
        int duration=rs.getInt(4);
        String s2=s1.substring(0,20)+s1.substring(24,28);
        Date d1=fm.parse(s2);
        
        Date d2=new Date();
        float difference=d2.getTime()-d1.getTime();
	    float days_difference=difference/(1000*60*60*24);
	    
	    //float time_difference=difference/(1000*60*60)%24;
            int datediff=(int)days_difference;
        
        if(time!=null&&datediff<=duration)
        joiningdate=rs.getString(5);
        flag=1;
    }
    PreparedStatement ps1 = con.prepareStatement("select approval from transportertemp where emailaddress=?");
    ps1.setString(1,email);
    ResultSet rs1=ps1.executeQuery();
    if(rs1.next()){
        approval=rs1.getInt(1);
    }
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%if(flag==0){%>
        <h1>Complete your profile</h1>
       <form action="registertransporter">
            <input type="text" name="pancardno" placeholder="PanCard No."/><br/>
            <input type="text" name="ipn" placeholder="Insurance Policy No."/><br/>
            <input type="text" name="ban" placeholder="Bank Account no."/><br/>
            <input type="Submit" value="Submit"/>
        </form>
        <%} else if(approval==0&&flag==1){%>
        <h1>Your profile is under verification</h1>
        <%} else if(approval==-1&&flag==1){%>
        <h1>Update your details </h1>
        <a href="accountupdate.jsp">Manage Account</a><br/>
        <%}else if(joiningdate.equals("$")){%>
        <h1>Complete the payment to get Orders</h1>
        <form action="TxnTest.jsp">
            User Type : <select name="type">
            <option>1 month Rs.20000</option>
            <option>3 month Rs.50000</option>
            <option>1 year Rs.100000</option>
            </select>
            
            <input type="Submit" value="Pay"/>
        </form>
        <%}
else{

response.sendRedirect("HomeTransporter.jsp");
        }%>
    </body>
</html>
