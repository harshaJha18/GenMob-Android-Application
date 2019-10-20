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

public final class select_005fmodule_005fby_005fstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            String module_number, module_name , student_id,semester;


            JSONArray json=new JSONArray();


            try {

               //String student_firstname = request.getParameter("first_name");
               // String student_lastname = request.getParameter("last_name");
                String student_firstname = "Arushi";
               String student_lastname = "Sharma";
                System.out.println("student_lastname="+student_lastname);
                System.out.println("student_firstname="+student_firstname);
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select module_number ,semestereng_number,student.student_id, module_name from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id join student_module_mapping on student_module_mapping.module_id=module.module_id join student on student.student_id=student_module_mapping.student_id where student.student_firstname='"+student_firstname+"' and student.student_lastname='"+student_lastname+"' ");

                while (DB.Connect.rs.next()) {
                    module_number = DB.Connect.rs.getString("module_number");
                    module_name = DB.Connect.rs.getString("module_name");
                     semester = DB.Connect.rs.getString("semestereng_number");
                     student_id = DB.Connect.rs.getString("student_id");
                    System.out.println("module_number ="+module_number );
                    System.out.println("module_name ="+module_name );
                     JSONObject jObj=new JSONObject();

                    jObj.put("module_number", module_number);
                    jObj.put("student_id", student_id);
                    jObj.put("semester", semester);
                    jObj.put("module_name", module_name);

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
