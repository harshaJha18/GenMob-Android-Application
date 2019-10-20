<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String module_number, module_name , student_id,semester,starty,endy;


            JSONArray json=new JSONArray();


            try {

               String student_firstname = request.getParameter("first_name");
                String student_lastname = request.getParameter("last_name");
                //String student_firstname = "Arushi";
               //String student_lastname = "Sharma";
                System.out.println("student_lastname="+student_lastname);
                System.out.println("student_firstname="+student_firstname);
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select DISTINCT module_number,start_year , end_year  ,semestereng_number,student.student_id, module_name from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id join student_module_mapping on student_module_mapping.module_id=module.module_id join student on student.student_id=student_module_mapping.student_id where student.student_firstname='"+student_firstname+"' and student.student_lastname='"+student_lastname+"' ORDER BY semestereng_number");

                while (DB.Connect.rs.next()) {
                    module_number = DB.Connect.rs.getString("module_number");
                    module_name = DB.Connect.rs.getString("module_name");
                     semester = DB.Connect.rs.getString("semestereng_number");
                     student_id = DB.Connect.rs.getString("student_id");
                     starty=DB.Connect.rs.getString("start_year");
                      endy=DB.Connect.rs.getString("end_year");
                    System.out.println("module_number ="+module_number );
                    System.out.println("module_name ="+module_name );
                     JSONObject jObj=new JSONObject();

                    jObj.put("module_number", module_number);
                    jObj.put("student_id", student_id);
                    jObj.put("semester", semester);
                    jObj.put("module_name", module_name);
                    jObj.put("starty", starty);
                    jObj.put("endy", endy);

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
