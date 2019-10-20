<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String start_year, end_year;


            JSONArray json=new JSONArray();
           

            try {

                String faculty_firstname = request.getParameter("first_name");
                String faculty_lastname = request.getParameter("last_name");
                System.out.println("faculty_lastname="+faculty_lastname);
                System.out.println("faculty_firstname="+faculty_firstname);
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select DISTINCT start_year,end_year from batch join batch_program_mapping on batch.batch_id = batch_program_mapping.batch_id join program on program.program_id = batch_program_mapping.program_id join program_semestereng_mapping on program_semestereng_mapping.program_id=program.program_id join semestereng on semestereng.semestereng_id=program_semestereng_mapping.semestereng_id join module_semestereng_mapping on module_semestereng_mapping.semestereng_id=semestereng.semestereng_id join module on module.module_id=module_semestereng_mapping.module_id join faculty_module_mapping on faculty_module_mapping.module_id=module.module_id join faculty on faculty.faculty_id=faculty_module_mapping.faculty_id where faculty.faculty_firstname='" + faculty_firstname + "' and faculty.faculty_lastname='" + faculty_lastname + "' ");

                while (DB.Connect.rs.next()) {
                    start_year = DB.Connect.rs.getString("start_year");
                    end_year = DB.Connect.rs.getString("end_year");
                    System.out.println("start year="+start_year);
                System.out.println("end year="+end_year);
                     JSONObject jObj=new JSONObject();

                    jObj.put("end_year", end_year);
                                     
                    jObj.put("start_year", start_year);
                   
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