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

                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select DISTINCT start_year,end_year from batch");

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