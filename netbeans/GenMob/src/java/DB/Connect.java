package DB;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class Connect {

    public static Connection conn = null;
    public static Statement stat=null,stat1 = null,stat2=null;
    public static ResultSet rs1,rs2;
    static PreparedStatement ps = null;
    public static ResultSet rs = null;
    static String rdate = "";
    static String rtime = "";

    public static Connection openConnection() {
        try {
            System.out.println("02");
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/genmob?user='root'&password=");
      

            stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
             stat1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
             stat2 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           
            System.out.println("Connection done");
            rdate = getDate();
            rtime = getTime();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return conn;
    }
 
    public static boolean validateLogin(String username, String password) {
        System.out.println(username + ":" + password);
        boolean b = false;
        try {
            if (!(username.isEmpty() || password.isEmpty())) {
                openConnection();
                String sql="select * from userlogin where (username='" + username + "') && (password='" + password + "')";
                System.out.println();
                rs = stat.executeQuery(sql);
                if (rs.next()) {
                    b = true;
                    System.out.println("user validated");
                }
                closeConnection();
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("user validated" + b);

        return b;
    }

 

    public static void closeConnection() {
        try {
            stat.close();
            conn.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

 

    public static String getField(String tblname, String field, String matching_field, String value, String operator) {
        openConnection();
        String i = "";
        try {
            rs = stat.executeQuery("select " + field + " from " + tblname + " where " + matching_field + "" + operator + "'" + value + "'");
            if (rs.next()) {
                i = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

    public static String getUserPassword(String id) {
        openConnection();
        String i = "";
        try {
            rs = stat.executeQuery("select password from userlogin where userid='" + id + "'");
            if (rs.next()) {
                i = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

    public static void changePass(String id, String pass) {

        conn = openConnection();
        try {
            String sql = "update userlogin set password='" + pass + "' where userid='" + id + "' ";
            ps = conn.prepareStatement(sql);//to update
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
    }
     public static int updateAttendance (String modulenumber , String attendance_status,String student_id, String show_date, String attendance_time , String section) {
int i =0;
        conn = openConnection();
        try {
            String sql = "UPDATE "+modulenumber+" SET attendance_status='"+attendance_status+"' WHERE student_id="+student_id+" and attendance_date='"+show_date+"' and attendance_time='"+attendance_time+"' and section='"+section+"'";
             System.out.print("sql=" + sql);
            ps = conn.prepareStatement(sql);//to update
           i= ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        
        return i;

    }

    public static int saveAttendenceGenmob ( String userid, String attendence ,String firstname , String lastname , String module , String section ) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into " + module+ " (student_id,student_firstname,student_lastname,attendance_date,attendance_time,attendance_status,section)values(?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, userid);
            statement.setString(2, firstname);
             statement.setString(3, lastname);
              statement.setString(4, getDateTime());
             statement.setString(5, getTime());
            statement.setString(6, attendence);

           statement.setString(7, section);

            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }
    public static int updateField(String tblname, String field, String value, String matching_field, String matching_value) {
        int i = 0;
        conn = openConnection();
        try {
            String sql = "update " + tblname + " set " + field + "='" + value + "' where " + matching_field + "='" + matching_value + "' ";
            System.out.print("sql=" + sql);
            ps = conn.prepareStatement(sql);//to update
            i = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

public static int saveLocation( String latitude, String longitude,  String vehicle_no) {
    openConnection();
    int i = 0;
    try {
        String sql = "insert into tblvehicle_location (latitude,longitude,vehicle_no,rdate)values(?,?,?,?)";
        PreparedStatement statement = conn.prepareStatement(sql);

        statement.setString(1, latitude);
        statement.setString(2, longitude);
        statement.setString(3, vehicle_no);
        statement.setString(4, getDateTime());


        i = statement.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    closeConnection();
    return i;
}
  public static int savePath( String latitude, String longitude,  String vehicle_id,String path_name) {
    openConnection();
    int i = 0;
    try {
        String sql = "insert into tblpath (latitude,longitude,vehicle_id,path_name,rdate)values(?,?,?,?,?)";
        PreparedStatement statement = conn.prepareStatement(sql);

        statement.setString(1, latitude);
        statement.setString(2, longitude);
        statement.setString(3, vehicle_id);
        statement.setString(4, path_name);
        statement.setString(5, getDateTime());


        i = statement.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    closeConnection();
    return i;
}

   public static int saveParking( String locationid, String userid) {
    openConnection();
    int i = 0;
    try {
        String sql = "insert into tbllocation (locationid,userid)values(?,?)";
        PreparedStatement statement = conn.prepareStatement(sql);

        statement.setString(1, locationid);
        statement.setString(2, userid);


        i = statement.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    closeConnection();
    return i;
}
    public static int updateParking( String locationid, String userid) {
    openConnection();
    int i = 0;
    try {
        String sql = "update tbllocation set locationid=? where userid='"+userid+"'";
        PreparedStatement statement = conn.prepareStatement(sql);

        statement.setString(1, locationid);


        i = statement.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        }
        closeConnection();
        return i;
    }
    public static int changeImage(String id, InputStream is) {

        conn = openConnection();
        int i = 0;
        try {
            String sql = "update tbluser set image=? where userid='" + id + "' ";
            ps = conn.prepareStatement(sql);//to update
            ps.setBlob(1, is);
            i = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }
 public static int saveResult( String fname, String lname, String userid, String cwm, String cwmp,  String mem, String memp, String ttm, String ttp, String status , String table) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into result_"+table+" (student_id, student_firstname, student_lastname, coursework_weightage, coursework_marks, mainexam_weightage, mainexam_marks, total_weightage,total_marks, marks_status) values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, userid);
            statement.setString(2, fname);
            statement.setString(3, lname);
            statement.setString(4, cwmp);
            statement.setString(5, cwm);
            statement.setString(6, memp);
            statement.setString(7, mem);
            statement.setString(8,  ttp);
            statement.setString(9,  ttm);
            statement.setString(10, status);


            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

   

    public static int saveUsers(String fname, String lname, String username,  String email,
             String usertype, String password, String mobile) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into userlogin (fname,lname,username,password,emailid,mobile_no,rdate,usertype)values(?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, fname);
            statement.setString(2, lname);
            statement.setString(3, username);
            statement.setString(4, password);
            statement.setString(5, email);
            statement.setString(6, mobile);
            
            
            statement.setString(7, rdate);
           
            statement.setString(8, usertype);

            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }
  
    public static int savePayment(String userid,String	vehicleid,String	tollid,String	amount,String	status) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into tblpayment (userid,vehicleid,tollid,amount,status,rdate)values(?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, userid);
            statement.setString(2, vehicleid);
            statement.setString(3, tollid);
            statement.setString(4, amount);
            statement.setString(5, status);
            statement.setString(6, getDateTime());


            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }
    public static int saveVehicle(String licence_no, String model_no, String description, String status, String vehicle_no, String userid) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into tblvehicle (licence_no,model_no,description,rdate,status,vehicle_no,userid)values(?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, licence_no);
            statement.setString(2, model_no);
            statement.setString(3, description);
            statement.setString(4, getDateTime());
            statement.setString(5, status);
            statement.setString(6, vehicle_no);
            statement.setString(7, userid);
            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

   
    public static int saveMessage(String message, String sent_from, String sent_to) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into message (message,sent_from,sent_to,msg_date,msg_time)values(?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, message);
            statement.setString(2, sent_from);
            statement.setString(3, sent_to);
            statement.setString(4, rdate);
            statement.setString(5, rtime);


            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

  
    public static int saveLocation(String location_name, String latitude, String longitude, String location_desc, String location_saver) {
        openConnection();
        int i = 0;
        try {
            String sql = "insert into location (location_name,latitude,longitude,location_desc,location_saver)values(?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, location_name);
            statement.setString(2, latitude);
            statement.setString(3, longitude);
            statement.setString(4, location_desc);
            statement.setString(5, location_saver);


            i = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection();
        return i;
    }

    public static String getDateTime() {
        DateFormat dateFormat = new SimpleDateFormat(
                "yyyy/MM/dd:hh:mm:ss");

        Calendar cal = Calendar.getInstance();

        return dateFormat.format(cal.getTime());// "11/03/14 12:33:43";
    }
  

    public static String getDate() {
        DateFormat dateFormat = new SimpleDateFormat(
                "yyyy/MM/dd");

        Calendar cal = Calendar.getInstance();

        return dateFormat.format(cal.getTime());// "11/03/14 12:33:43";
    }

    public static String getTime() {
        DateFormat dateFormat1 = new SimpleDateFormat("HH:mm");

        Calendar cal = Calendar.getInstance();

        return dateFormat1.format(cal.getTime());// "11/03/14 12:33:43";
    }
}
