package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.NameValuePair;
import java.util.ArrayList;
import JSON.JSONObject;
import JSON.JSONArray;
import java.util.List;
import DB.Connect.*;

public final class find_005fattendance_005fpercent_005fby_005fstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            String module_student_id,status ;
                    int total_attendance =0, present=0;


         //   JSONArray json=new JSONArray();
             JSONObject jObj=new JSONObject();

            try {


                //String student_id = request.getParameter("student_id");
                String student_id = "120095";
                //String module_number = request.getParameter("module_number");
                String module_number = "engr334";

                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select student_id , attendance_status from "+module_number+" where student_id="+student_id+"");

                while (DB.Connect.rs.next()) {
                    module_student_id = DB.Connect.rs.getString("student_id");
                   total_attendance=total_attendance+1;

                    status= DB.Connect.rs.getString("attendance_status");
                    if (status.equals("P")){
                    present=present+1;
                    }
                   System.out.println("total attendance ="+total_attendance);
                    System.out.println("No of present ="+present);

                   
}
                String total_attendance_string = Integer.toString(total_attendance);
                  String present_string = Integer.toString(present);
                jObj.put("total_attendance", total_attendance_string);
                    jObj.put("present", present_string);
                 System.out.println("total attendance string ="+total_attendance_string);
                    System.out.println("No of present string ="+present_string);



                 // System.out.println("json Object :"+jObj);


                   


                  // System.out.println("json Array :"+json);





              
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("json Object :"+jObj);
            response.getWriter().print(jObj);


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
