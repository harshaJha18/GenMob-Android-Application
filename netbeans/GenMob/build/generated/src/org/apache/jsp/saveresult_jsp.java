package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class saveresult_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");


            String fname = request.getParameter("studentfname");
            String lname = request.getParameter("studentlname");
            String userid = request.getParameter("studentid");
           String cwm = request.getParameter("coursework");
            String cwmp = request.getParameter("coursepercentt");
           String mem = request.getParameter("mainexam");
           String memp = request.getParameter("mainexampercentt");
            String ttm = request.getParameter("ttm");
            String ttp = request.getParameter("ttp");
            String status = request.getParameter("status");
            String table = request.getParameter("modulenumberr");
            System.out.println("firstname---"+fname );
            System.out.println("lastname---"+lname );
             System.out.println("Student_id---"+userid );
            System.out.println("Course Work marks---"+cwm );
            System.out.println("Course Work percent---"+cwmp );
            System.out.println("main exam marks---"+mem );
            System.out.println("main exam percent---"+memp );
            System.out.println("Total marks ---"+ttm);
            System.out.println("Total marks percent---"+ttp);
            System.out.println("status---"+status );
            System.out.println("table---"+table );



            DB.Connect.openConnection();

           int i= DB.Connect.saveResult(fname,lname, userid,cwm,cwmp, mem,memp,ttm,ttp,status,table);
            DB.Connect.closeConnection();
            if(i>0){
            response.getWriter().print("Success");
            }else  response.getWriter().print("Failed");

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
