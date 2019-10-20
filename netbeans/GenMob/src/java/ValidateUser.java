/*
 * To change this template, choose Tools | Templates
 * and openConnection the template in the editor.
 */



import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Durgesh
 */
public class ValidateUser extends HttpServlet {

    String username;
    String password;
    String from;
    private String usertype;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        validateUser(req, resp);
    }

    protected void validateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      setPassword(req.getParameter("txtpassword"));
        setUsername(req.getParameter("txtusername"));

        String first_name = null;



        if (DB.Connect.validateLogin(getUsername(), getPassword())) {

            String userid = null;

            try {
                DB.Connect.openConnection();

                DB.Connect.rs =  DB.Connect.stat.executeQuery("select userid from userlogin where username='" + username + "' or emailid='" + username + "' or mobile_no='" + username + "'");
                if ( DB.Connect.rs.next()) {
                    userid =  DB.Connect.rs.getString(1);
                    System.out.println("userid in session now" +  DB.Connect.rs.getString(1));
                }
               DB.Connect.rs1 = DB.Connect.stat.executeQuery("select fname,usertype from userlogin where userid='" + userid + "'");
                if (DB.Connect.rs1.next()) {
                    first_name = DB.Connect.rs1.getString(1);
                     usertype = DB.Connect.rs1.getString(2);

                }
                DB.Connect.closeConnection();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
              resp.getWriter().print("login=success" + "\nuserid=" + userid + "\nfirstName=" + first_name+"\nuserType=" + usertype);

        } else {

                resp.getWriter().print("login=fail");
       }
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
