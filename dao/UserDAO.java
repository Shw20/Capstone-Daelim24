import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
    private Connection conn;

    public UserDAO() {
        try {
            String url = "jdbc:mysql://localhost:3306/DdoSseoJo?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
            String username = "root";
            String password = "abcd1234";
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void registerUser(User user) {
        String query = "INSERT INTO `user` (UserID, Pwd, Age, PH, Email, Name) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getPassword());
            pstmt.setInt(3, user.getAge());
            pstmt.setString(4, user.getPhoneNumber());
            pstmt.setString(5, user.getEmail());
            pstmt.setString(6, user.getName());
            pstmt.executeUpdate();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
