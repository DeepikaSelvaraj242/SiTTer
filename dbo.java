package mypack;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbo {

    static String URL = "localhost:3306/";
    static String DATABASE_NAME = "bhm";
    static String USERNAME = "deepika";
    static String PASSWORD = "pass";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + URL + DATABASE_NAME, USERNAME, PASSWORD);
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return con;
    }
}
