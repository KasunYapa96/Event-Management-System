package org.apache.jsp.public_;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../includes/layout/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Register", request.getCharacterEncoding()), out, false);
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"limiter\">\r\n");
      out.write("        <div class=\"container-login100\">\r\n");
      out.write("            <div class=\"wrap-login100\">\r\n");
      out.write("                <div class=\"login100-pic js-tilt\" data-tilt>\r\n");
      out.write("                    <img src=\"../assets/images/img-01.png\" alt=\"IMG\">\r\n");
      out.write("                </div>\r\n");
      out.write("                    <div class=\"login100-form\">\r\n");
      out.write("                \r\n");
      out.write("                    <span class=\"login100-form-title\">\r\n");
      out.write("\t\t\t\t\t\tRegister\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("                    <div class=\"container\" style=\"padding: 30px;\">\r\n");
      out.write("                        \r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"container-login100-form-btn\">\r\n");
      out.write("                                    <button class=\"login100-form-btn\" onclick=\"showUni();\" id=\"uniBtn\">\r\n");
      out.write("                                    University\r\n");
      out.write("                                </button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"container-login100-form-btn\">\r\n");
      out.write("                                    <button class=\"login100-form-btn\" onclick=\"showCom();\" id=\"comBtn\">\r\n");
      out.write("                                    Organization\r\n");
      out.write("                                </button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"uni\" style=\"display: none\">\r\n");
      out.write("                        <form class=\"login100-form \" action=\"../Register\" method=\"post\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" required=\"\" name=\"name\" placeholder=\"Name of the University\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" required=\"\" name=\"displayName\" placeholder=\"Display name for the University\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" required=\"\" name=\"add\" placeholder=\"Address of the University\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"number\" required=\"\" name=\"phone\" placeholder=\"Phone Number\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100 \">\r\n");
      out.write("                            <input class=\"input100\" type=\"email\" required=\"\" name=\"mail\" placeholder=\"Email\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("\r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"password\" required=\"\" name=\"pass\" placeholder=\"Password\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                       \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"password\" required=\"\" name=\"confPass\" placeholder=\"Confirm Password\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"container-login100-form-btn\">\r\n");
      out.write("                            <button class=\"login100-form-btn\" type=\"submit\" name=\"uni\">\r\n");
      out.write("\t\t\t\t\t\t\tRegister University\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                   <div id=\"com\" style=\"display: none\">\r\n");
      out.write("                   <form class=\"login100-form \" action=\"../Register\" method=\"post\">\r\n");
      out.write("                   \r\n");
      out.write("                    <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" required=\"\" name=\"name\" placeholder=\"Name of the Organization\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" required=\"\" name=\"displayName\" placeholder=\"Display name for the Organization\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" required=\"\" name=\"add\" placeholder=\"Address of the Organization\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"number\" required=\"\" name=\"phone\" placeholder=\"Phone Number\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"email\" required=\"\" name=\"mail\" placeholder=\"Email\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("\r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"password\" required=\"\" name=\"pass\" placeholder=\"Password\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"wrap-input100\">\r\n");
      out.write("                            <input class=\"input100\" type=\"password\" required=\"\" name=\"confPass\" placeholder=\"Confirm Password\">\r\n");
      out.write("                            <span class=\"focus-input100\"></span>\r\n");
      out.write("                            <span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"container-login100-form-btn\">\r\n");
      out.write("                            <button class=\"login100-form-btn\" type=\"submit\" name=\"org\">\r\n");
      out.write("\t\t\t\t\t\t\tRegister Organization\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                       </form>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <small  class=\"form-text text-muted \" style=\"color:red;\">\r\n");
      out.write("                          ");

              if(request.getParameter("msg") == null){
                  
              }else{
              out.println(request.getParameter("msg"));
              }
              
      out.write("\r\n");
      out.write("              </small>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"text-center p-t-136\">\r\n");
      out.write("                        <a class=\"txt2\" href=\"login.html\">\r\n");
      out.write("\t\t\t\t\t\t\tAlready have a account\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-long-arrow-right m-l-5\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!--===============================================================================================-->\r\n");
      out.write("    <script src=\"../assets/vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("    <!--===============================================================================================-->\r\n");
      out.write("    <script src=\"../assets/vendor/bootstrap/js/popper.js\"></script>\r\n");
      out.write("    <script src=\"../assets/vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <!--===============================================================================================-->\r\n");
      out.write("    <script src=\"../assets/vendor/select2/select2.min.js\"></script>\r\n");
      out.write("    <!--===============================================================================================-->\r\n");
      out.write("    <script src=\"../assets/vendor/tilt/tilt.jquery.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        $('.js-tilt').tilt({\r\n");
      out.write("            scale: 1.1\r\n");
      out.write("        })\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("    <!--===============================================================================================-->\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        $('#uniBtn').click(function(e){\r\n");
      out.write("      e.preventDefault();\r\n");
      out.write("    });\r\n");
      out.write("        \r\n");
      out.write("        $('#comBtn').click(function(e){\r\n");
      out.write("      e.preventDefault();\r\n");
      out.write("    });\r\n");
      out.write("        \r\n");
      out.write("        function showUni() {\r\n");
      out.write("            var x = document.getElementById(\"uni\");\r\n");
      out.write("            var y = document.getElementById(\"com\");\r\n");
      out.write("            var b = document.getElementById(\"uniBtn\");\r\n");
      out.write("            var b2 = document.getElementById(\"comBtn\");\r\n");
      out.write("            if (x.style.display === \"none\") {\r\n");
      out.write("                x.style.display = \"block\";\r\n");
      out.write("                y.style.display = \"none\";\r\n");
      out.write("                b.style.backgroundColor = \"#00ACC1\";\r\n");
      out.write("                b2.style.backgroundColor = \"#29B6F6\";\r\n");
      out.write("            } else {\r\n");
      out.write("                x.style.display = \"none\";\r\n");
      out.write("                b.style.backgroundColor = \"#29B6F6\";\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        function showCom() {\r\n");
      out.write("            var x = document.getElementById(\"com\");\r\n");
      out.write("            var y = document.getElementById(\"uni\");\r\n");
      out.write("            var b = document.getElementById(\"comBtn\");\r\n");
      out.write("            var b2 = document.getElementById(\"uniBtn\");\r\n");
      out.write("            if (x.style.display === \"none\") {\r\n");
      out.write("                x.style.display = \"block\";\r\n");
      out.write("                y.style.display = \"none\";\r\n");
      out.write("                b.style.backgroundColor = \"#00ACC1\";\r\n");
      out.write("                b2.style.backgroundColor = \"#29B6F6\";\r\n");
      out.write("            } else {\r\n");
      out.write("                x.style.display = \"none\";\r\n");
      out.write("                b.style.backgroundColor = \"#29B6F6\";\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
