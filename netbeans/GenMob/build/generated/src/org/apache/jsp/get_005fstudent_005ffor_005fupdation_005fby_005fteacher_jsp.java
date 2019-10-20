package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.simple.JSONArray;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.NameValuePair;
import org.json.simple.JSONObject;
import java.util.ArrayList;
import java.util.List;
import DB.Connect.*;

public final class get_005fstudent_005ffor_005fupdation_005fby_005fteacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

            String student_id , student_firstname,student_lastname;


            JSONArray json=new JSONArray();


            try {

               //String module_number = request.getParameter("modulenumber");
              // String show_date = request.getParameter("show_date");
              // String section = request.getParameter("section");
               // String attendance_time = request.getParameter("section");
    String module_number = "ENGR334";
               String show_date = "2015-05-18";
               String section = "Lecture";
                String attendance_time = "23:58:43";

                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("SELECT Distinct student_id , student_firstname, student_lastname FROM "+module_number+" WHERE attendance_date='"+show_date+"' and section = '" +section+"' and attendance_time='"+attendance_time+"'");

                        while (DB.Connect.rs.next()) {
                 JSONObject jObj = new JSONObject();
                            student_id = DB.Connect.rs.getString("student_id");
                   student_firstname = DB.Connect.rs.getString("student_firstname");
                   student_lastname= DB.Connect.rs.getString("student_lastname");
                  
                    jObj.put("student_firstname", student_firstname );
                    jObj.put("student_lastname", student_lastname);
                    jObj.put("student_id", student_id);


                 // System.out.println("json Object :"+jObj);


                    json.add(jObj);


                  // System.out.println("json Array :"+json);





              }
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("json Array :"+json);
            response.getWriter().print(json);


      out.write('\n');
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
