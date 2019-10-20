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

public final class showresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            String cwm,cmp,mem,mep,ttp,ttm,s;


            JSONObject jObj=new JSONObject();


            try {

              // String student_id = request.getParameter("student_id");
              // String table = request.getParameter("modulenumber");
               String student_id = "120097";
               String table = "engr334";

               System.out.println("Student_id" + student_id);
               System.out.println("Table" + table);
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select coursework_weightage, coursework_marks, mainexam_weightage, mainexam_marks, total_weightage,total_marks, marks_status from result_"+table+" Where student_id="+student_id+" ");
                  while (DB.Connect.rs.next()) {
                     
                   cwm= DB.Connect.rs.getString("coursework_marks");
                    cmp = DB.Connect.rs.getString("coursework_weightage");
                    mem = DB.Connect.rs.getString("mainexam_marks");
                     mep = DB.Connect.rs.getString("mainexam_weightage");
                     ttp=DB.Connect.rs.getString("total_weightage");
                      ttm=DB.Connect.rs.getString("total_marks");
                       s=DB.Connect.rs.getString("marks_status");
                    
                    jObj.put("cwm", cwm);
                    jObj.put("cmp", cmp);
                    jObj.put("mem", mem);
                    jObj.put("mep", mep);
                    jObj.put("ttp", ttp);
                    jObj.put("s",ttm);

                 // System.out.println("json Object :"+jObj);


                


                  // System.out.println("json Array :"+json);





              }
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("json object :"+jObj);
            response.getWriter().print(jObj);


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
