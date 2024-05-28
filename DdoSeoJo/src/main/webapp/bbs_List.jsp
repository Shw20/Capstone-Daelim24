<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<link rel="stylesheet" href="resources/css/galleryStyle.css"> <!-- 추가된 CSS 파일 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<header>
        <%
            request.setCharacterEncoding("UTF8");
            response.setCharacterEncoding("UTF-8");
            
            Integer IDX = (Integer) session.getAttribute("IDX");
            String UserID = (String) session.getAttribute("UserID");
            String Name = (String) session.getAttribute("Name");
        
                if (Name == null) { %>
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
    </header>
<body style="margin-top: 200px;">
<main>
    <div class="board-header">
        <h1>제품 게시판</h1>
        <a class="write-link" href="post_write.jsp">글쓰기</a>
    </div>
    <div class="gallery">
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

                // SQL 쿼리 실행 - user 테이블과 조인하여 userID를 가져옴
                String sql = "SELECT bbs.status, bbs.bbsID, bbs.userID AS userIDX, bbs.CreateTime, bbs.Title, bbs.image, user.UserID " +
                             "FROM bbs " +
                             "JOIN user ON bbs.userID = user.IDX"; // 조인 조건을 user.IDX로 설정
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                // 결과 출력
                while(rs.next()) {
        %>
            <!-- 게시글 링크 추가 -->
            <% 
                // 이미지 표시
                int bbsID = rs.getInt("bbsID");
                String imagePath = "image/" + bbsID + "사진.jpg"; // 새로운 이미지 경로 생성
            %>
            <div class="gallery-item">
                <div class="image-container">
                    <img class="img" src="<%= imagePath %>" alt="게시글 이미지">
                </div>
                <div class="info">
                    <span>제목: <%= rs.getString("Title") %></span>
                    <span>판매자: <%= rs.getString("UserID") %></span> <!-- 수정된 부분 -->
                    <span>작성일: <%= rs.getString("CreateTime") %></span>
                    <span>판매상태: <%=rs.getString("Status") %></span>
                </div>
                <a class="overlay" href="post.jsp?bbsID=<%= rs.getInt("bbsID") %>">View Post</a>
            </div>
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
    </div>
</main>
<footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer>
</body>
</html>
