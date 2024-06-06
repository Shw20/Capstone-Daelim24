<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시물 삭제 결과</title>
</head>
<body>
    <h1>게시물 삭제 결과</h1>
    <%
        Connection conn = null;
        PreparedStatement pstmt1 = null;
        PreparedStatement pstmt2 = null;
        ResultSet rs = null;

        try {
            // 데이터베이스 연결
            String url = "jdbc:mysql://localhost:3306/capstone";
            String user = "root";
            String password = "dltmdghks0126";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // 게시물 ID 가져오기
            int bbsID = Integer.parseInt(request.getParameter("bbsID"));

            // 트랜잭션 시작
            conn.setAutoCommit(false);

            // SQL 쿼리 실행 - 게시물에 연결된 prdID 가져오기
            String sql1 = "SELECT PrdID FROM bbs WHERE bbsID = ?";
            pstmt1 = conn.prepareStatement(sql1);
            pstmt1.setInt(1, bbsID);
            rs = pstmt1.executeQuery();

            int prdID = -1;
            if (rs.next()) {
                prdID = rs.getInt("PrdID");
            }

            if (prdID != -1) {
                // SQL 쿼리 실행 - 게시물 삭제
                String sql2 = "DELETE FROM bbs WHERE bbsID = ?";
                pstmt1 = conn.prepareStatement(sql2);
                pstmt1.setInt(1, bbsID);
                int rowsAffected1 = pstmt1.executeUpdate();

                // SQL 쿼리 실행 - 제품 삭제
                String sql3 = "DELETE FROM product WHERE ProductID = ?";
                pstmt2 = conn.prepareStatement(sql3);
                pstmt2.setInt(1, prdID);
                int rowsAffected2 = pstmt2.executeUpdate();

                // 트랜잭션 커밋 또는 롤백
                if (rowsAffected1 > 0 && rowsAffected2 > 0) {
                    conn.commit();
                    %>
                    <script>
                        alert('게시물과 해당 제품이 성공적으로 삭제되었습니다.');
                        location.href="bbs_List.jsp";  
                    </script>
                    <%
                } else {
                    conn.rollback();
                    %>
                    <script>
                        alert('게시물 또는 제품 삭제를 실패했습니다.');
                        location.href="post.jsp?bbsID=<%= bbsID %>";  
                    </script>
                    <%
                }
            } else {
                conn.rollback();
                %>
                <script>
                    alert('해당 게시물에 연결된 제품을 찾을 수 없습니다.');
                    location.href="post.jsp?bbsID=<%= bbsID %>";  
                </script>
                <%
            }
        } catch (Exception e) {
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            e.printStackTrace();
        } finally {
            // 연결 및 자원 해제
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt1 != null) {
                try {
                    pstmt1.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt2 != null) {
                try {
                    pstmt2.close();
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
