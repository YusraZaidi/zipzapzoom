
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
        <h1>know the max fair</h1>
        <h2>make demo order</h2>
        <form action="placeorder" method="post">
           
            <label>loading date</label>
                <input name="l_date" type="text" />
            <label>loading place</label>
                <input name="l_place" type="text" />
            <label>delivery date</label>
                <input name="d_date" type="text" />
            <label>delivery place</label>
                <input name="d_place" type="text" />
            <label>add order description</label>
            <textarea rows="3" cols="20" name="desc_item" >text</textarea>
                <label>weight </label>
                <input name="weight" type="text"/>
            <input type="submit" value="send query"/>
                   
        </form>
       
    </body>
</html>
