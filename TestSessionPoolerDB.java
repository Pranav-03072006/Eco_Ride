import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestSessionPoolerDB {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://aws-0-ap-south-1.pooler.supabase.com:5432/postgres?sslmode=require";
        String user = "postgres.httwiaqdeosnbiboszcm";
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
