package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class DBContext {
    protected Connection conn = null;

    public DBContext(String URL, String userName, String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try {
                conn = DriverManager.getConnection(URL, userName, password);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }

    }

    public DBContext() {
        this("jdbc:sqlserver://localhost:1433;databaseName=PRJ301_SE1650", "sa", "123");
    }

    public static void main(String[] args) {
        new DBContext();
    }
}