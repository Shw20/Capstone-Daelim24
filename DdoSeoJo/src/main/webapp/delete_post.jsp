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
        PreparedStatement pstmt = null;

        try {
            // 데이터베이스 연결
            String url = "jdbc:mysql://localhost:3306/capstone";
            String user = "root";
            String password = "abcd1234";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // 게시물 ID 가져오기
            int bbsID = Integer.parseInt(request.getParameter("bbsID"));

            // SQL 쿼리 실행 - 해당 게시물 삭제
            String sql = "DELETE FROM bbs WHERE bbsID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bbsID);
            int rowsAffected = pstmt.executeUpdate();

            // 삭제 결과 출력
            if (rowsAffected > 0) {
    		%>
				<script>
					alert('게시물이 성공적으로 삭제되었습니다.');
					location.href="bbs_List.jsp";  
				</script>
			<%
            } else {
    		%>
				<script>
					alert('게시물 삭제를 실패했습니다.');
					location.href="post.jsp?bbsID=<%= bbsID %>";  
				</script>
			<%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 연결 및 자원 해제
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
