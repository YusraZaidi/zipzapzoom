package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("\t\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form class=\"form-horizontal\" action=\"cust_detail\" enctype=\"multipart/form-data\" >\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"email\">Email </label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"email\" placeholder=\"email\" name=\"email\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"pwd\">name</label>\n");
      out.write("      <div class=\"col-sm-10\">          \n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"pwd\" placeholder=\"name\" name=\"name\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"pwd\">Phone number</label>\n");
      out.write("      <div class=\"col-sm-10\">          \n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"pwd\" placeholder=\"Phone number\" name=\"ph_num\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"pwd\">id proof</label>\n");
      out.write("      <div class=\"col-sm-10\">          \n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"pwd\" placeholder=\"get your id proof\" name=\"id_proof\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"pwd\">id proof</label>\n");
      out.write("      <div class=\"col-sm-10\">          \n");
      out.write("        <input type=\"password\" class=\"form-control\" id=\"pwd\" placeholder=\"password\" name=\"password\">\n");
      out.write("      </div>\n");
      out.write("    </div>      \n");
      out.write("      \n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">        \n");
      out.write("      <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("        <button type=\"submit\" class=\"btn btn-success btn-lg\">Add</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </form>\n");
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
