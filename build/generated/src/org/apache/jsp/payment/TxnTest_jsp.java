package org.apache.jsp.payment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.time.LocalTime;
import java.util.*;

public final class TxnTest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("   \n");
      out.write(" ");

      //LocalTime d=LocalTime.now();
      Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
      int amt=Integer.parseInt(request.getParameter("amount"));
      String oid=request.getParameter("oid");
    

 
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Merchant Check Out Page</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<meta name=\"GENERATOR\" content=\"Evrsoft First Page\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<h1>Merchant Check Out Page</h1>\n");
      out.write("\t<pre>\n");
      out.write("\t</pre>\n");
      out.write("\t<form method=\"post\" action=\"pgRedirect.jsp\">\n");
      out.write("            <input type=\"hidden\" name=\"oid\" value=\"");
      out.print(oid);
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"price\" value=\"");
      out.print(amt);
      out.write("\">\n");
      out.write("\t\t<table border=\"1\">\n");
      out.write("\t\t\t<tbody>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<th>S.No</th>\n");
      out.write("\t\t\t\t\t<th>Label</th>\n");
      out.write("\t\t\t\t\t<th>Value</th>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>1</td>\n");
      out.write("\t\t\t\t\t<td><label>ORDER_ID::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"ORDER_ID\" tabindex=\"1\" maxlength=\"20\" size=\"20\"\n");
      out.write("\t\t\t\t\t\tname=\"ORDER_ID\" autocomplete=\"off\"\n");
      out.write("\t\t\t\t\t\tvalue=\"ORDS_");
      out.print( randomInt );
      out.write("\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>2</td>\n");
      out.write("\t\t\t\t\t<td><label>CUSTID ::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"CUST_ID\" tabindex=\"2\" maxlength=\"30\" size=\"12\" name=\"CUST_ID\" autocomplete=\"off\" value=\"CUST001\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>3</td>\n");
      out.write("\t\t\t\t\t<td><label>INDUSTRY_TYPE_ID ::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"INDUSTRY_TYPE_ID\" tabindex=\"4\" maxlength=\"12\" size=\"12\" name=\"INDUSTRY_TYPE_ID\" autocomplete=\"off\" value=\"Retail\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>4</td>\n");
      out.write("\t\t\t\t\t<td><label>Channel ::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"CHANNEL_ID\" tabindex=\"4\" maxlength=\"12\"\n");
      out.write("\t\t\t\t\t\tsize=\"12\" name=\"CHANNEL_ID\" autocomplete=\"off\" value=\"WEB\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>5</td>\n");
      out.write("\t\t\t\t\t<td><label>txnAmount*</label></td>\n");
      out.write("\t\t\t\t\t<td><input title=\"TXN_AMOUNT\" tabindex=\"10\"\n");
      out.write("\t\t\t\t\t\ttype=\"text\" name=\"TXN_AMOUNT\"\n");
      out.write("\t\t\t\t\t\tvalue=\"");
      out.print(amt);
      out.write("\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t<td><input value=\"CheckOut\" type=\"submit\"\tonclick=\"\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</tbody>\n");
      out.write("\t\t</table>\n");
      out.write("\t\t* - Mandatory Fields\n");
      out.write("\t</form>\n");
      out.write("</body>\n");
      out.write("</html>");
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
