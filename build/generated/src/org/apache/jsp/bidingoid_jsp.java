package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import connection.MyCon;
import java.sql.Connection;

public final class bidingoid_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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

      out.write('\n');
while(rs.next()){
             l_place=rs.getString(1);
           l_date=rs.getString(2);
           d_place=rs.getString(3);
           d_date=rs.getString(4);
           description=rs.getString(5);
           weight=rs.getString(6);
           price=rs.getString(7);
           expecteddate=rs.getString(8);
            
       
      out.write("\n");
      out.write("            <p>");
      out.print(l_place);
      out.write("</p>\n");
      out.write("           <p>");
      out.print(l_date);
      out.write("</p>\n");
      out.write("            <p>");
      out.print(d_place);
      out.write("</p>\n");
      out.write("                   <p>");
      out.print(d_date);
      out.write("</p>\n");
      out.write("                   <p>");
      out.print(description);
      out.write("</p>\n");
      out.write("                   <p>");
      out.print(weight);
      out.write("</p>\n");
      out.write("                   <p>");
      out.print(price);
      out.write("</p>\n");
      out.write("                   <p>");
      out.print(expecteddate);
      out.write("</p>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("            <p>current bid</p>\n");
      out.write("            <form>\n");
      out.write("                <input type=\"text\">\n");
      out.write("                <button>submit your Bid</button>\n");
      out.write("            </form>\n");
      out.write("            <p id=\"hello\"></p>\n");
      out.write("            <script src=\"biding.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("ReactDOM.render(<App />, document.getElementById('hello'));\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
