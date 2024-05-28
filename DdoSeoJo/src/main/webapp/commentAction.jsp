<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>댓글 작성</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	
    Connection conn = null;
    PreparedStatement pstmt = null;
    String bbsID = request.getParameter("bbsID");
    String content = request.getParameter("content");
    Integer userID = (Integer) session.getAttribute("IDX");  // 세션에서 UserID 가져오기

    // 서버 콘솔에 전달된 값 출력
    System.out.println("bbsID: " + bbsID);
    System.out.println("content: " + content);
    System.out.println("userID: " + userID);
    
    
	if(userID != null){
	    if (bbsID != null && !bbsID.isEmpty() && content != null && !content.isEmpty()) {
	        try {
	            String url = "jdbc:mysql://localhost:3306/capstone";
	            String dbUser = "root";
	            String password = "dltmdghks0126";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            conn = DriverManager.getConnection(url, dbUser, password);
	
	            String sql = "INSERT INTO comment VALUES (null, ?, 1, ?, ?, NOW(), NOW())";
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, content);
	            pstmt.setInt(2, userID);
	            pstmt.setInt(3, Integer.parseInt(bbsID));
	            int result = pstmt.executeUpdate();
	
	            if (result > 0) {
	%>
	                <script>
	                    alert("댓글이 성공적으로 작성되었습니다.");
	                    location.href = "post.jsp?bbsID=<%= bbsID %>";  // 댓글 작성 후 게시물 상세 페이지로 이동
	                </script>
	<%
	            } else {
	%>
	                <script>
	                    alert("댓글 작성에 실패했습니다.");
	                    history.back();
	                </script>
	<%
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	%>
	            <script>
	                alert("오류가 발생했습니다.");
	                history.back();
	            </script>
	<%
	        } finally {
	            try {
	                if (pstmt != null) pstmt.close();
	                if (conn != null) conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    } else {
	%>
	        <script>
	            alert("모든 필드를 입력해주세요.");
	            history.back();
	        </script>
	<%
	    }
	}else{
	%>
	    <script>
	        alert("댓글 작성은 로그인 후에 가능합니다.");
	        history.back();
	    </script>
	<%
	}
	%>
</body>
</html>
