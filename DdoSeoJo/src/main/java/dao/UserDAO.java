package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
	private Connection conn;

    public UserDAO() {
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/DdoSseoJo?&useSSL=false";
            String username = "root";
            String password = "abcd1234";
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void registerUser(dto.User user) {
    	if (this.conn == null) {
            // 데이터베이스 연결이 실패한 경우
            System.out.println("데이터베이스 연결이 실패했습니다");
            return;
        }
    	
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
        if (conn != null) { // conn이 null이 아닌 경우에만 연결을 닫음
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
