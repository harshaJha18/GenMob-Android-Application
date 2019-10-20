<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.apache.http.message.BasicNameValuePair"%>
<%@page import="org.apache.http.NameValuePair"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="DB.Connect.*"%>
<%
            String userid = "", fname = "", lname = null, username = "", email, rdate, mobile, usertype;


            //JSONArray json=new JSONArray();
            JSONObject jObj=new JSONObject();


            try {

                String username1 = request.getParameter("username");
                System.out.println("username="+username1);
                DB.Connect.openConnection();
                DB.Connect.rs = DB.Connect.stat.executeQuery("SELECT * FROM userlogin where userid='" + username1 + "' ");

                while (DB.Connect.rs.next()) {
                    userid = DB.Connect.rs.getString("userid");
                    fname = DB.Connect.rs.getString("fname");
                    lname = DB.Connect.rs.getString("lname");
                 
                    mobile = DB.Connect.rs.getString("mobile_no");
                    email = DB.Connect.rs.getString("emailid");
                   
                    rdate = DB.Connect.rs.getString("rdate");
                    usertype = DB.Connect.rs.getString("usertype");
                    username = DB.Connect.rs.getString("username");
                   
                    
                    jObj.put("userid", userid);
                    jObj.put("fname", fname + " " + lname);
                   
                    jObj.put("mobile", mobile);
                    jObj.put("email", email);
                   
                    jObj.put("rdate", rdate);
                   
                    jObj.put("usertype", usertype);
                   //json.add(jObj);
              }
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.getWriter().print(jObj);

%>