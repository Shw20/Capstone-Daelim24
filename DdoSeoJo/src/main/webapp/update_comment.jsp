<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>댓글 수정</title>
    <link rel="stylesheet" href="resources/css/SignStyle.css" />
    <link rel="stylesheet" href="resources/css/footerStyle.css">
    <link rel="stylesheet" href="resources/css/commentUpdate.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <header>
        <%@ include file="resources/layout/Header.jsp"%>
    </header>
    <main style="margin-top: 200px;">
        <%
	        request.setCharacterEncoding("UTF8");
		    response.setCharacterEncoding("UTF-8");
        	
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            int commentID = 0;
            String commentContent = "";
            // 게시물 ID 가져오기
            int bbsID = Integer.parseInt(request.getParameter("bbsID"));


            try {
            	String url = "jdbc:mysql://localhost:3306/DdoSseoJo";
                String user = "root";
                String password = "abcd1234";
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);

                
                // 댓글 ID 가져오기
                if (request.getParameter("commentID") != null) {
                    commentID = Integer.parseInt(request.getParameter("commentID"));
                }

                // 댓글 내용 가져오기
                String sql = "SELECT content FROM comment WHERE commentID = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, commentID);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    commentContent = rs.getString("content");
                } else {
        %>
                    <script>
                        alert('댓글을 찾을 수 없습니다.');
                        history.back(); // 이전 페이지로 돌아가기
                    </script>
        <%
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

        <form method="post" action="update_comment_action.jsp">
            <input type="hidden" name="commentID" value="<%= commentID %>">
            <input type="hidden" name="bbsID" value="<%= bbsID %>">
            <textarea name="content" rows="5" cols="50"><%= commentContent %></textarea>
            <br>
            <input type="submit" value="수정">
        </form>
    </main>
    <footer>
        <%@ include file="resources/layout/footer.jsp"%>
    </footer>
</body>
</html>
