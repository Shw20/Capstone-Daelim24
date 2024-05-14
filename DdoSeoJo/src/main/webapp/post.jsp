<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%
    request.setCharacterEncoding("UTF8");
    response.setCharacterEncoding("UTF-8");
    
    Integer IDX = (Integer) session.getAttribute("IDX");
    String UserID = (String) session.getAttribute("UserID");
    String Name = (String) session.getAttribute("Name");
    
    if (Name == null) {
%>
        <jsp:include page="resources/layout/nav.jsp"></jsp:include>
<%
    }
    if (Name != null) {
%>
    <%
        if (Name.equals("관리자")) {
%>
            <jsp:include page="resources/layout/adminNav.jsp"></jsp:include>
<%
        } else {
%>
            <jsp:include page="resources/layout/userNav.jsp"></jsp:include>
<%
        }
    }
%>
</head>
<nav>
    <%@ include file="resources/layout/nav.jsp"%>
</nav>
</head>
<body style="margin-top: 200px;">
<main>
    <h1>게시물 상세 정보</h1>
    <%
        Connection conn = null;
        PreparedStatement pstmt = null;
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

            // SQL 쿼리 실행
            String sql = "SELECT bbsID, userID, content, CreateTime FROM bbs WHERE bbsID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bbsID);
            rs = pstmt.executeQuery();

            // 결과 출력
            if (rs.next()) {
                String postUserID = rs.getString("userID");
    %>
    <p><strong>User ID:</strong> <%= postUserID %></p>
    <p><strong>Content:</strong> <%= rs.getString("content") %></p>
    <p><strong>Create Time:</strong> <%= rs.getString("CreateTime") %></p>
    <% 
		// 이미지 표시
		bbsID = rs.getInt("bbsID");
		String imagePath = "image/" + bbsID + "사진.jpg"; // 새로운 이미지 경로 생성
    %>
    	<img class="img" src="<%= imagePath %>" alt="게시글 이미지">
    
    <!-- 수정 및 삭제 버튼 -->
    <%
        // 세션에 있는 사용자 ID와 게시물을 작성한 사용자 ID 비교
        String sessionUserID = (String) session.getAttribute("UserID");
        if (sessionUserID != null && sessionUserID.equals(postUserID)) {
    %>
        <!-- 수정 버튼 -->
        <form method="post" action="update_post.jsp">
            <input type="hidden" name="bbsID" value="<%= bbsID %>">
            <input type="submit" value="수정">
        </form>
        <!-- 삭제 버튼 -->
        <form method="post" action="delete_post.jsp">
            <input type="hidden" name="bbsID" value="<%= bbsID %>">
            <input type="submit" value="삭제">        
        </form>
    <%
        }
    %>
    <!-- 수정 및 삭제 버튼 끝 -->
    <%
            } else {
    %>
    <p>해당 게시물을 찾을 수 없습니다.</p>
    <%
            }
        } catch (Exception e) {
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
    </main>
</body>

<footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer>
</html>
