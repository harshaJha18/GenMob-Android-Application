<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String module_number, module_name;


            JSONArray json=new JSONArray();


            try {

               
                String batch_startyear = request.getParameter("startyear");
                String batch_endyear = request.getParameter("endyear");
               
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select DISTINCT module_number,module_name, semestereng_number from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id where batch.start_year="+batch_startyear+" and batch.end_year="+batch_endyear+" ");

                while (DB.Connect.rs.next()) {
                   module_number = DB.Connect.rs.getString("module_number");
                   module_name = DB.Connect.rs.getString("module_name");
                   
                    System.out.println("start year="+module_name);
                    System.out.println("end year="+module_number);
                    JSONObject jObj=new JSONObject();

                    jObj.put("module_name", module_name);

                    jObj.put("module_number", module_number);
                   

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