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
      out.write("        <title>MVC Login</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            div#adminlogin{\n");
      out.write("                width:30%;\n");
      out.write("                height:50%;\n");
      out.write("                background-color: #AFC7C7;\n");
      out.write("                border-width: thin;\n");
      out.write("                border-style: solid;\n");
      out.write("                border-color: #000;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                text-align: left;\n");
      out.write("                overflow: hidden;\n");
      out.write("                padding: 5px;\n");
      out.write("                padding-left: 20px;\n");
      out.write("                margin-top: 100px;\n");
      out.write("            }\n");
      out.write("            .inputtext{\n");
      out.write("                width: 250px;\n");
      out.write("                height: 30px;\n");
      out.write("                font-family: Arial;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"adminlogin\">\n");
      out.write("            <p>Administration Login</p>\n");
      out.write("            <hr/>\n");
      out.write("            <form action=\"loginJsp.jsp\" method=\"POST\">\n");
      out.write("                <label>User Name </br>\n");
      out.write("                    <input type=\"text\" class=\"inputtext\" name=\"usrnm\" value=\"\" \n");
      out.write("                           placeholder=\"Your Name\"/></label> <br/>\n");
      out.write("                <br/>\n");
      out.write("                           \n");
      out.write("                <label>Password<br/>\n");
      out.write("                    <input type=\"password\" class=\"inputtext\" name=\"pwd\"\n");
      out.write("                           placeholder=\"******\"/></label> <br/>\n");
      out.write("                <br/>\n");
      out.write("                <input type=\"submit\" value=\"Login\"/>\n");
      out.write("                \n");
      out.write("                ");
if(request.getAttribute("err")!=null) {
      out.write("\n");
      out.write("                ");
      out.print(request.getAttribute("err") );
      out.write("\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
