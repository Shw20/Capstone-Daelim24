package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ModifyDAO {
    private Connection conn;

    public ModifyDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/capstone?useSSL=false";
            String username = "root";
            String password = "dltmdghks0126";
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
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

    public void updatePassword(int idx, String newPassword) {
        if (this.conn == null) {
            System.out.println("데이터베이스 연결이 실패했습니다");
            return;
        }

        String sql = "UPDATE user SET Pwd = ? WHERE IDX = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, newPassword);
            pstmt.setInt(2, idx);
            pstmt.executeUpdate();
            pstmt.close();
            System.out.println("비밀번호 변경 성공");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
