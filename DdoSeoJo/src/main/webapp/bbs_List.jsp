<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<link rel="stylesheet" href="resources/css/galleryStyle.css">
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
            } else {
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
        <a class="write-link" style="background-color: #742121;" href="post_write.jsp">글쓰기</a>
    </div>
    <div class="gallery">
        <% 
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            int currentPage = 1;
            int recordsPerPage = 6; // 한 페이지에 표시할 게시글 수 (2줄 * 3개 = 6개)
            int totalRecords = 0;
            if(request.getParameter("page") != null) {
                currentPage = Integer.parseInt(request.getParameter("page"));
            }
            int startRecord = (currentPage - 1) * recordsPerPage;
            
            try {
                // 데이터베이스 연결
                String url = "jdbc:mysql://localhost:3306/DdoSseoJo";
                String user = "root";
                String password = "abcd1234";
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);

                // 게시글 총 개수 확인
                String countSql = "SELECT COUNT(*) AS total FROM bbs";
                pstmt = conn.prepareStatement(countSql);
                rs = pstmt.executeQuery();
                totalRecords = 0;
                if(rs.next()) {
                    totalRecords = rs.getInt("total");
                }
                rs.close();
                pstmt.close();

                // 페이지네이션 SQL 쿼리
                String sql = "SELECT bbs.status, bbs.bbsID, bbs.userID AS userIDX, bbs.CreateTime, bbs.Title, bbs.image, user.UserID, wishlist.bbsID AS wishlistBbsID " +
	                        "FROM bbs " +
	                        "JOIN user ON bbs.userID = user.IDX " +
	                        "LEFT JOIN wishlist ON bbs.bbsID = wishlist.bbsID " +
	                        "ORDER BY bbs.CreateTime DESC " + 
	                        "LIMIT ?, ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, startRecord);
                pstmt.setInt(2, recordsPerPage);
                rs = pstmt.executeQuery();

                // 결과 출력
                while(rs.next()) {
        %>
            <!-- 게시글 링크 추가 -->
            <% 
                // 이미지 표시
                int bbsID = rs.getInt("bbsID");
                String imagePath = "resorces/img/" + bbsID + "사진.jpg"; // 새로운 이미지 경로 생성
           		int wishlistBbsID = rs.getInt("wishlistBbsID");
            %>
            <div class="gallery-item">
                <div class="image-container">
                    <img class="img" src="<%= imagePath %>" alt="게시글 이미지">
                    <%
                    if(wishlistBbsID != bbsID){
                    %>
                    <a href="Insert_Wishlist.jsp?bbsID=<%=rs.getInt("bbsID")%>" class="wishlist-icon-insert">★</a>
                    <% 
                    }else{
                    %>
                    <a href="Delete_Wishlist.jsp?bbsID=<%=rs.getInt("bbsID")%>" class="wishlist-icon-delete">★</a>
                    <%
                    }
                    %>
                    
                </div>
                <div class="info">
                    <span>제목: <%= rs.getString("Title") %></span>
                    <span>판매자: <%= rs.getString("UserID") %></span>
                    <span>작성일: <%= rs.getString("CreateTime") %></span>
                    <span>판매상태: <%= rs.getString("status") %></span>
                </div>
                <a class="overlay" href="post.jsp?bbsID=<%= rs.getInt("bbsID") %>">View Post</a>
            </div>
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
    </div>
    <div class="pagination">
        <%
            int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);
            if (currentPage > 1) {
        %>
                <a href="bbs_List.jsp?page=<%= currentPage - 1 %>">이전</a>
        <%  } %>
        <%
            for (int i = 1; i <= totalPages; i++) {
                if (i == currentPage) {
        %>
                    <span><%= i %></span>
        <%      } else { %>
                    <a href="bbs_List.jsp?page=<%= i %>"><%= i %></a>
        <%      }
            }
        %>
        <%
            if (currentPage < totalPages) {
        %>
                <a href="bbs_List.jsp?page=<%= currentPage + 1 %>">다음</a>
        <%  } %>
    </div>
</main>
<footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer>
</body>
</html>
