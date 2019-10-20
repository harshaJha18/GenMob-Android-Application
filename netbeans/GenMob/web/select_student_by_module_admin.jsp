<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String student_id , studentfirstname , studentlastname;


            JSONArray json=new JSONArray();


            try {

                String module_number = request.getParameter("modulenumber");
            
               //String faculty_lastname = request.getParameter("last_name");
                String batch_startyear = request.getParameter("startyear");
                String batch_endyear = request.getParameter("endyear");
              
                DB.Connect.openConnection();

                    DB.Connect.rs = DB.Connect.stat.executeQuery("select student.student_id , student_firstname, student_lastname from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id join student_module_mapping on student_module_mapping.module_id=module.module_id join student on student.student_id=student_module_mapping.student_id where batch.start_year="+batch_startyear+" and batch.end_year="+batch_endyear+" and module.module_number ='"+module_number+"' ORDER BY student_firstname");


                while (DB.Connect.rs.next()) {
                    JSONObject jObj = new JSONObject();
                   student_id = DB.Connect.rs.getString("student.student_id");
                   studentfirstname = DB.Connect.rs.getString("student_firstname");
                   studentlastname= DB.Connect.rs.getString("student_lastname");
                    System.out.println("start year="+studentfirstname);
                    System.out.println("end year="+studentlastname);
                    jObj.put("studentfirstname", studentfirstname);
                   jObj.put("studentlastname", studentlastname);

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

%>