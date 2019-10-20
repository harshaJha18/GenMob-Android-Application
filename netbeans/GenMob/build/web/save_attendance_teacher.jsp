
<%@page import="java.util.List"%>
<%@page import="DB.Connect.*"%>
<%@page import="JSON.JSONObject"%>
<%@page import="JSON.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="java.util.ArrayList"%>

<%
            ArrayList list = new ArrayList();
            ArrayList listname = new ArrayList();
            ArrayList listlastname = new ArrayList();
             String module_number = request.getParameter("modulenumber");
               // String faculty_lastname = request.getParameter("last_name");
                String batch_startyear = request.getParameter("startyear");
                  String section = request.getParameter("section");
                  String group = request.getParameter("group");
                  System.out.println("group:-"+group);
                  System.out.println("section:-"+section);
                String batch_endyear = request.getParameter("endyear");
            DB.Connect.openConnection();
                     
            if(section.equals("Tutorial")){
                DB.Connect.rs = DB.Connect.stat.executeQuery("select student.student_id , student_firstname ,  student_lastname from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id join student_module_mapping on student_module_mapping.module_id=module.module_id join student on student.student_id=student_module_mapping.student_id where batch.start_year="+batch_startyear+" and batch.end_year="+batch_endyear+" and module.module_number ='"+module_number+"' and student.student_group="+group+" ORDER BY student_firstname");
           } else{
                DB.Connect.rs = DB.Connect.stat.executeQuery("select student.student_id , student_firstname ,  student_lastname from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id join student_module_mapping on student_module_mapping.module_id=module.module_id join student on student.student_id=student_module_mapping.student_id where batch.start_year="+batch_startyear+" and batch.end_year="+batch_endyear+" and module.module_number ='"+module_number+"' ORDER BY student_firstname");
            }
            
            while (DB.Connect.rs.next()) {
                list.add(DB.Connect.rs.getString(1));
                listname.add(DB.Connect.rs.getString(2));
                 listlastname.add(DB.Connect.rs.getString(3));
                         }
            DB.Connect.closeConnection();
            String data = request.getParameter("jArray");
            System.out.print(data);
            JSONArray jArray = new JSONArray(data);
            int count = 0;
            int i=0;
            while (count < jArray.length()) {

                JSONObject jObj = jArray.getJSONObject(count);
                 System.out.print(jObj);
                String value=jObj.getString(list.get(count).toString());
             
                       i=DB.Connect.saveAttendenceGenmob(list.get(count).toString(), value,listname.get(count).toString(),listlastname.get(count).toString(),module_number,section);
                count++;
            }
  
         if(i>0){
             response.getWriter().print("success");
         }else{
          response.getWriter().print("failed");
         }
          
%>