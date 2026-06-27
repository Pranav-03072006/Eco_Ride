import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestDirectDB {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://db.httwiaqdeosnbiboszcm.supabase.co:5432/postgres?sslmode=require";
        String user = "postgres";
        String password = "Pranav@31826";

        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connection successful!");
            conn.close();
        } catch (SQLException e) {
            System.err.println("Connection failed!");
            e.printStackTrace();
        }
    }
}
