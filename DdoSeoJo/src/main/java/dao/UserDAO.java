package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	private Connection conn;

    public UserDAO() {
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/DdoSseoJo?&useSSL=false";
            String username = "root";
            String password = "dltmdghks0126";
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
    	
        String sql = "INSERT INTO `user` (UserID, Pwd, Age, PH, Email, Name) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getPassword());
            pstmt.setInt(3, user.getAge());
            pstmt.setString(4, user.getPhoneNumber());
            pstmt.setString(5, user.getEmail());
            pstmt.setString(6, user.getName());
            pstmt.executeUpdate();
            pstmt.close();
            System.out.println("회원가입 성공");
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void updateUserPassword(String userID, String newPassword) {
        if (this.conn == null) {
            System.out.println("데이터베이스 연결이 실패했습니다");
            return;
        }

        String sql = "UPDATE `user` SET Pwd = ? WHERE UserID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, newPassword);
            pstmt.setString(2, userID);
            pstmt.executeUpdate();
            pstmt.close();
            System.out.println("비밀번호 수정 성공");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public boolean checkPassword(int idx, String password) {
        if (this.conn == null) {
            System.out.println("데이터베이스 연결이 실패했습니다");
            return false;
        }

        String sql = "SELECT Pwd FROM user WHERE IDX = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, idx);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String currentPassword = rs.getString("Pwd");
                rs.close();
                pstmt.close();
                return currentPassword.equals(password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void deleteUser(int idx) {
        if (this.conn == null) {
            System.out.println("데이터베이스 연결이 실패했습니다");
            return;
        }

        String sql = "DELETE FROM user WHERE IDX = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, idx);
            pstmt.executeUpdate();
            pstmt.close();
            System.out.println("회원 탈퇴 성공");
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
