<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DB.Connect.*"%>
<%
            String cwm,cmp,mem,mep,ttp,ttm,s;


            JSONObject jObj=new JSONObject();


            try {

               String student_id = request.getParameter("student_id");
               String table = request.getParameter("modulenumber");
               

               System.out.println("Student_id" + student_id);
               System.out.println("Table" + table);
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("select coursework_weightage, coursework_marks, mainexam_weightage, mainexam_marks, total_weightage,total_marks, marks_status from result_"+table+" Where student_id="+student_id+" ");
                  while (DB.Connect.rs.next()) {
                     
                   cwm= DB.Connect.rs.getString("coursework_marks");
                    cmp = DB.Connect.rs.getString("coursework_weightage");
                    mem = DB.Connect.rs.getString("mainexam_marks");
                     mep = DB.Connect.rs.getString("mainexam_weightage");
                     ttp=DB.Connect.rs.getString("total_weightage");
                      ttm=DB.Connect.rs.getString("total_marks");
                       s=DB.Connect.rs.getString("marks_status");
                    
                    jObj.put("cwm", cwm);
                    jObj.put("cmp", cmp);
                    jObj.put("mem", mem);
                    jObj.put("mep", mep);
                    jObj.put("ttp", ttp);
                     jObj.put("ttm", ttp);
                    jObj.put("s",s);

                 // System.out.println("json Object :"+jObj);


                


                  // System.out.println("json Array :"+json);





              }
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("json object :"+jObj);
            response.getWriter().print(jObj);

%>
