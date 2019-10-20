<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String show_time;


            JSONArray json=new JSONArray();


            try {

               String module_number = request.getParameter("modulenumber");
               String show_date = request.getParameter("show_date");
               String section = request.getParameter("section");


                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("SELECT Distinct attendance_time FROM "+module_number+" WHERE attendance_date='"+show_date+"' and section = '" +section+"' ");

                        while (DB.Connect.rs.next()) {
                   show_time = DB.Connect.rs.getString("attendance_time");

                    JSONObject jObj=new JSONObject();

                    jObj.put("show_time", show_time);



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
