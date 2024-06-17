package controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/updateSaleStatus")
public class SaleStatusUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        try {
            // 클라이언트에서 전송한 댓글 ID를 가져옴
            int commentID = Integer.parseInt(request.getParameter("commentID"));

            // 디버깅 로그
            System.out.println("Received commentID: " + commentID);

            // 댓글의 판매 상태를 업데이트하는 서비스를 호출
            if (updateSaleStatus(commentID)) {
                out.println("이 사용자에게 판매를 시작했습니다.");
            } else {
                out.println("판매 상태 업데이트에 실패했습니다.");
            }
        } catch (NumberFormatException e) {
            System.err.println("Invalid commentID: " + e.getMessage());
            out.println("Invalid commentID.");
        } finally {
            out.close();
        }
    }

    // 댓글의 판매 상태를 업데이트하는 메서드
    private boolean updateSaleStatus(int commentID) {
        // 판매 상태 업데이트를 위한 SQL 쿼리
        String updateSaleStatusQuery = "UPDATE comment SET saleApproved = TRUE WHERE commentID = ?";
        String url = "jdbc:mysql://localhost:3306/capstone?useSSL=false&serverTimezone=UTC";
        String user = "root";
        String password = "abcd1234";
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement pstmt = conn.prepareStatement(updateSaleStatusQuery)) {
            // 댓글의 판매 상태를 '판매 시작'으로 업데이트
            pstmt.setInt(1, commentID);
            int rowsAffected = pstmt.executeUpdate();

            // 디버깅 로그
            System.out.println("Rows affected: " + rowsAffected);

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
