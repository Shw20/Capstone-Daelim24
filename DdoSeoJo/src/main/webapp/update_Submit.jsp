<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시물 수정</title>
</head>
<body>
    <h1>게시물 수정 결과</h1>
    <%
    	request.setCharacterEncoding("UTF-8");
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // 데이터베이스 연결
            String url = "jdbc:mysql://localhost:3306/capstone";
            String user = "root";
            String password = "abcd1234";
            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection(url, user, password);

            // 게시물 ID 및 수정할 내용 가져오기
            int bbsID = Integer.parseInt(request.getParameter("bbsID"));
            String content = request.getParameter("content");
            String Title = request.getParameter("title");

            // SQL 쿼리 실행 - 해당 게시물 수정
            String sql = "UPDATE bbs SET content = ?, Title =?, UpdateTime = now() WHERE bbsID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, content);
            pstmt.setString(2, Title);
            pstmt.setInt(3, bbsID);
            int rowsAffected = pstmt.executeUpdate();

            // 수정 결과 출력
            if (rowsAffected > 0) {
   			%>
				<script>
					alert('게시물이 성공적으로 수정되었습니다.');
					location.href="post.jsp?bbsID=<%= bbsID %>";  
				</script>
			<%
    
            } else {
   			%>
				<script>
					alert('게시물 수정에 실패했습니다.');
					location.href="update_post.jsp?bbsID=<%= bbsID %>";  
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
