<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>판매상태 수정 처리</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF8");
        response.setCharacterEncoding("UTF-8");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int bbsID = 0;

        // 게시물 ID 가져오기
        if (request.getParameter("bbsID") != null) {
            bbsID = Integer.parseInt(request.getParameter("bbsID"));
        }

        try {
            String url = "jdbc:mysql://localhost:3306/capstone";
            String user = "root";
            String password = "dltmdghks0126";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // 현재 상태 확인
            String checkStatusSql = "SELECT status FROM bbs WHERE bbsID = ?";
            pstmt = conn.prepareStatement(checkStatusSql);
            pstmt.setInt(1, bbsID);
            rs = pstmt.executeQuery();
            String currentStatus = "";
            
            if (rs.next()) {
                currentStatus = rs.getString("status");
            }

            if ("판매완료".equals(currentStatus)) {
    %>
                <script>
                    alert('판매완료는 수정할 수 없습니다');
                    history.back(); // 이전 페이지로 돌아가기
                </script>
    <%
            } else {
                // 판매 상태 업데이트
                String sql = "UPDATE bbs SET status = '판매완료' WHERE bbsID = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, bbsID);
                int result = pstmt.executeUpdate();

                if (result > 0) {
    %>
                    <script>
                        alert('판매 상태가 수정되었습니다.');
                        location.href="post.jsp?bbsID=<%= bbsID %>";   // 이전 페이지로 돌아가기
                    </script>
    <%
                } else {
    %>
                    <script>
                        alert('판매 상태 수정에 실패했습니다.');
                        history.back(); // 이전 페이지로 돌아가기
                    </script>
    <%
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
</body>
</html>
