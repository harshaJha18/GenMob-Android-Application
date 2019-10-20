<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String student_id , student_firstname,student_lastname;


            JSONArray json=new JSONArray();


            try {

               String module_number = request.getParameter("modulenumber");
              String show_date = request.getParameter("show_date");
              String section = request.getParameter("section");
               String attendance_time = request.getParameter("show_time");
               
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

%>
