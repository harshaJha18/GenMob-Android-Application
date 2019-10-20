<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="java.util.ArrayList"%>
<%@page import="JSON.JSONObject"%>
<%@page import="JSON.JSONArray"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String module_student_id,status ;
                    int total_attendance =0, present=0;


         //   JSONArray json=new JSONArray();
             JSONObject jObj=new JSONObject();

            try {


                String student_id = request.getParameter("student_id");
               // String student_id = "120095";
                String module_number = request.getParameter("module_number");
                //String module_number = "engr334";

                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select student_id , attendance_status from "+module_number+" where student_id="+student_id+"");

                while (DB.Connect.rs.next()) {
                    module_student_id = DB.Connect.rs.getString("student_id");
                   total_attendance=total_attendance+1;

                    status= DB.Connect.rs.getString("attendance_status");
                    if (status.equals("P")){
                    present=present+1;
                    }
                   System.out.println("total attendance ="+total_attendance);
                    System.out.println("No of present ="+present);

                   
}
                String total_attendance_string = Integer.toString(total_attendance);
                  String present_string = Integer.toString(present);
                jObj.put("total_attendance", total_attendance_string);
                    jObj.put("present", present_string);
                 System.out.println("total attendance string ="+total_attendance_string);
                    System.out.println("No of present string ="+present_string);



                 // System.out.println("json Object :"+jObj);


                   


                  // System.out.println("json Array :"+json);





              
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("json Object :"+jObj);
            response.getWriter().print(jObj);

%>