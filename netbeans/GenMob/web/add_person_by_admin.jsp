<%
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String username = request.getParameter("username");
            //String father_name = request.getParameter("father_name");
            String email = request.getParameter("email");
           // String address = request.getParameter("address");
           // String status = request.getParameter("status");
            String usertype = request.getParameter("usertype");
            String password = request.getParameter("password");
            String mobile = request.getParameter("mobile");
            DB.Connect.openConnection();

           int i= DB.Connect.saveUsers(fname, lname, username, email, usertype, password, mobile);
            DB.Connect.closeConnection();
            if(i>0){
            response.getWriter().print("User Registered Succesfully");
            }else  response.getWriter().print("Failed To register User");
%>