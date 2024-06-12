<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>댓글 삭제 결과</title>
</head>
<body>
    <h1>댓글 삭제 결과</h1>
<%
    // 댓글 삭제를 위한 commentID 가져오기
    int commentID = Integer.parseInt(request.getParameter("commentID"));

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // 데이터베이스 연결
        String url = "jdbc:mysql://localhost:3306/DdoSseoJo";
        String user = "root";
        String password = "abcd1234";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // SQL 쿼리 실행 - 댓글 삭제
        String sql = "DELETE FROM comment WHERE commentID = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, commentID);
        pstmt.executeUpdate();
        int rowsAffected = pstmt.executeUpdate();

        // 삭제 결과 출력
        if (rowsAffected > 0) {
		%>
			<script>
				alert('댓글이 성공적으로 삭제되었습니다.');
			<%
			    response.sendRedirect(request.getHeader("referer"));
			%>
			</script>
		<%
        } else {
		%>
			<script>
				alert('댓글이 삭제를 실패했습니다.');
			<%
			    response.sendRedirect(request.getHeader("referer"));
			%>
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