<%
            String password = request.getParameter("txtpassword");
            String username = request.getParameter("txtusername");

            String usertype = "";
            String first_name = null;
            String last_name = null;
            


            if (DB.Connect.validateLogin(username, password)) {

                String userid = null;

                try {
                    DB.Connect.openConnection();

                    DB.Connect.rs = DB.Connect.stat.executeQuery("select userid,fname,lname,usertype from userlogin where (username='" + username + "' or email='" + username + "' ) and password='"+password+"'");
                    if (DB.Connect.rs.next()) {
                        userid = DB.Connect.rs.getString(1);
                        first_name = DB.Connect.rs.getString(2);
                        last_name= DB.Connect.rs.getString(3);
                        usertype = DB.Connect.rs.getString(4);
                      System.out.println("userid  last name in session now" + DB.Connect.rs.getString(3));
                        System.out.println("userid in session now" + DB.Connect.rs.getString(1));
                    }
                  
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                response.getWriter().print("login=success" + "\nuserid=" + userid + "\nfirstName=" + first_name + "\nlastName=" + last_name +"\nuserType=" + usertype);

            } else {

                response.getWriter().print("login=fail");
            }
%>