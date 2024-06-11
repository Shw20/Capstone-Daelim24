<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>댓글 수정 처리</title>
</head>
<body>
    <%
	    request.setCharacterEncoding("UTF8");
	    response.setCharacterEncoding("UTF-8");
	    
        Connection conn = null;
        PreparedStatement pstmt = null;
        int commentID = 0;
        String content = request.getParameter("content");

        // 게시물 ID 가져오기
        int bbsID = Integer.parseInt(request.getParameter("bbsID"));

        try {
            String url = "jdbc:mysql://localhost:3306/capstone";
            String user = "root";
            String password = "dltmdghks0126";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
			

            // 댓글 ID 가져오기
            if (request.getParameter("commentID") != null) {
                commentID = Integer.parseInt(request.getParameter("commentID"));
            }

            // 댓글 업데이트
            String sql = "UPDATE comment SET content = ? WHERE commentID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, content);
            pstmt.setInt(2, commentID);
            int result = pstmt.executeUpdate();

            if (result > 0) {
    %>
                <script>
                    alert('댓글이 수정되었습니다.');
                    location.href="post.jsp?bbsID=<%= bbsID %>";   // 이전 페이지로 돌아가기
                </script>
    <%
            } else {
    %>
                <script>
                    alert('댓글 수정에 실패했습니다.');
                    history.back(); // 이전 페이지로 돌아가기
                </script>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
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
