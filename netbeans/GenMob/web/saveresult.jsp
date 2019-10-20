<%
            String fname = request.getParameter("studentfname");
            String lname = request.getParameter("studentlname");
            String userid = request.getParameter("studentid");
           String cwm = request.getParameter("coursework");
            String cwmp = request.getParameter("coursepercentt");
           String mem = request.getParameter("mainexam");
           String memp = request.getParameter("mainexampercentt");
            String ttm = request.getParameter("ttm");
            String ttp = request.getParameter("ttp");
            String status = request.getParameter("status");
            String table = request.getParameter("modulenumberr");
            System.out.println("firstname---"+fname );
            System.out.println("lastname---"+lname );
             System.out.println("Student_id---"+userid );
            System.out.println("Course Work marks---"+cwm );
            System.out.println("Course Work percent---"+cwmp );
            System.out.println("main exam marks---"+mem );
            System.out.println("main exam percent---"+memp );
            System.out.println("Total marks ---"+ttm);
            System.out.println("Total marks percent---"+ttp);
            System.out.println("status---"+status );
            System.out.println("table---"+table );



            DB.Connect.openConnection();

           int i= DB.Connect.saveResult(fname,lname, userid,cwm,cwmp, mem,memp,ttm,ttp,status,table);
            DB.Connect.closeConnection();
            if(i>0){
            response.getWriter().print("Success");
            }else  response.getWriter().print("Failed");
%>