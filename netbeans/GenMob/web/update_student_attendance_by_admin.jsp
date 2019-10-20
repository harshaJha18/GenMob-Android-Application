<%@page import="java.util.List"%>
<%@page import="DB.Connect.*"%>
<%@page import="JSON.JSONObject"%>
<%@page import="JSON.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="java.util.ArrayList"%>

<%@page import="DB.Connect.*"%>
<%

int value=0;




            try {

               String module_number = request.getParameter("modulenumber");
              String show_date = request.getParameter("show_date");
              String section = request.getParameter("section");
               String attendance_time = request.getParameter("show_time");
                String student_id = request.getParameter("studentid");
               String attendance_status = request.getParameter("attendance_status");

                value=DB.Connect.updateAttendance (module_number , attendance_status,student_id, show_date,attendance_time ,section) ;




            } catch (Exception e) {
                e.printStackTrace();
            }
            if(value>0){
             response.getWriter().print("success");
            }else{
          response.getWriter().print("failed");
         }

%>
