package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
    public static Connection CreateConnect(){
        Connection conn = null;
        /*String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String pass = "taiwd123";*/

        String url  = "jdbc:postgresql://ec2-3-213-41-172.compute-1.amazonaws.com:5432/d95ik4kobv9ugi";
        String user = "hlbqmitrsshxjo";
        String pass = "3177914f5cd6ce932b0624b20eeaa1b066bac16c83543b7b06f56c162c74ae45";

        /*String url = "jdbc:mysql://localhost:3306/emailist";
        String user = "root";
        String pass = "taiwd123";*/

        try {
            Class.forName("org.postgresql.Driver");
//            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
}
