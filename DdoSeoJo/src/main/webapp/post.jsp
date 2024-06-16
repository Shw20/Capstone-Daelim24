<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<link rel="stylesheet" href="resources/css/Post.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:mysql://localhost:3306/capstone";
        String user = "root";
        String password = "dltmdghks0126";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

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
        <% } else {
            if (Name.equals("관리자")) { %>
                <jsp:include page="resources/layout/adminNav.jsp"></jsp:include>
            <% } else { %>
                <jsp:include page="resources/layout/userNav.jsp"></jsp:include>
            <% }
        } %>
</header>
<body style="margin-top: 200px;">
<main>
    <%
        int bbsID = 0;
        try {
            // 게시물 ID 가져오기
            bbsID = Integer.parseInt(request.getParameter("bbsID"));
            session.setAttribute("bbsID", bbsID); // 세션에 bbsID 저장

            // SQL 쿼리 실행
            String sql = "SELECT b.*, u.userID " +
                    	 "FROM bbs b " +
                    	 "JOIN user u ON b.userID = u.IDX " +
                    	 "WHERE b.bbsID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bbsID);
            rs = pstmt.executeQuery();

            // 결과 출력
            if (rs.next()) {
            	String postUserID = rs.getString("u.userID");
                int postUserIDX = rs.getInt("b.userID");
    %>
    <h1><%=rs.getString("b.title") %></h1>
    
    <p style="text-align: right;">
        <strong>작성자:</strong> <%= postUserID %> | <strong>작성일:</strong> <%= rs.getString("b.CreateTime") %>
    </p>
    <div class="post-content" style="display: flex; justify-content: space-between;">
        <p style="margin-right: 20px;"><%= rs.getString("b.content") %></p>
        <%
            // 이미지 표시
            String imagePath = "image/" + bbsID + "사진.jpg"; // 새로운 이미지 경로 생성
        %>
        <img class="img" src="<%= imagePath %>" alt="게시글 이미지">
        
    </div>

        <div class="buttons">

            <%
                // 세션에 있는 사용자 ID와 게시물을 작성한 사용자 ID 비교
                if (IDX != null && IDX == postUserIDX) {
            %>
            <!-- 수정 버튼 -->
            <form method="post" action="update_post.jsp">
                <input type="hidden" name="bbsID" value="<%= bbsID %>">
                <input type="submit" value="수정">
            </form>
            <!-- 삭제 버튼 -->
            <form method="post" action="delete_post.jsp">
                <input type="hidden" name="bbsID" value="<%= bbsID %>">
                <input type="submit" value="삭제" class="delete">        
            </form>
            <%
                }
            %>
        </div>
    <%
            } else {
    %>
    <script>
        alert('게시물을 찾을 수 없습니다.');
        location.href="bbs_List.jsp";  
    </script>
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
    <!-- 댓글 입력하는 창 -->
    <div class="comment">
        <form method="get" action="commentAction.jsp">
            <input type="hidden" name="bbsID" value="<%= bbsID %>">
            <input type="text" name="content" id="content" placeholder="댓글을 입력하세요...">
            <input type="submit" value="등록">
        </form>
    </div>
    <%
		    // 댓글 처리
		    Connection conn2 = null;
		    PreparedStatement pstmt2 = null;
		    ResultSet rs2 = null;
		
		    try {
		        // 데이터베이스 연결
		        String url = "jdbc:mysql://localhost:3306/capstone";
		        String user = "root";
		        String password = "dltmdghks0126";
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        conn2 = DriverManager.getConnection(url, user, password);
		
		        // 전체 댓글 개수 조회
		        String countQuery = "SELECT COUNT(*) AS total FROM comment WHERE bbsID = ?";
		        pstmt2 = conn2.prepareStatement(countQuery);
		        pstmt2.setInt(1, bbsID);
		        rs2 = pstmt2.executeQuery();
		        int totalComments = 0;
		        if (rs2.next()) {
		            totalComments = rs2.getInt("total");
		        }
		
		        // 페이지당 댓글 개수
		        int commentsPerPage = 8;
		
		        // 전체 페이지 수 계산
		        int totalPages = (int) Math.ceil((double) totalComments / commentsPerPage);
		
		        // 현재 페이지 파라미터 가져오기
		        int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
		
		        // SQL 쿼리 실행
		        String sql2 = "SELECT c.*, u.userID " +
		                "FROM comment c " +
		                "JOIN user u ON c.userID = u.IDX " +
		                "WHERE c.bbsID = ? " +
		                "ORDER BY c.CreateTime ASC " +
		                "LIMIT ?, ?";
		        pstmt2 = conn2.prepareStatement(sql2);
		        pstmt2.setInt(1, bbsID);
		        pstmt2.setInt(2, (currentPage - 1) * commentsPerPage);
		        pstmt2.setInt(3, commentsPerPage);
		        rs2 = pstmt2.executeQuery();
		
		        // 결과 출력
		        if (rs2.next()) {
		%>
		<%
		    // 페이지 링크 생성
		    for (int i = 1; i <= totalPages; i++) {
		        out.println("<a href=\"post.jsp?bbsID=" + bbsID + "&page=" + i + "\">" + i + "</a>");
		    }
		%>
		<div class="comment-section">
		    <h2>댓글</h2>
		    <%
		        do {
		            int commentUserID = rs2.getInt("userID");
		    %>
		    <%
		        // 댓글 작성자와 세션의 사용자 ID 비교
		        if (IDX != null && IDX == commentUserID) {
		    %>
		    <div style=" display: flex; justify-content: flex-end;">
		    	<!-- 댓글 수정 링크 -->
		    	<a href="update_comment.jsp?commentID=<%= rs2.getInt("commentID") %>&bbsID=<%= bbsID %>" class="update">수정</a>|
		        <!-- 댓글 삭제 링크 -->
		        <a href="delete_comment.jsp?commentID=<%= rs2.getInt("commentID") %>" class="delete">삭제</a>
		    </div>
		    <%
		        }
		    %>
		    <div class="comment">
		        <div style="display: flex; justify-content: space-between;">
		            <p><strong> <%= rs2.getString("u.userID") %></strong></p>
		            <p><strong> <%= rs2.getString("content") %></strong></p>
		            <p><%= rs2.getString("CreateTime") %></p>
		        </div>
		
		    </div>
		    <% } while (rs2.next()); %>
		</div>
		<%
		    }
		} catch (Exception e) {
		    e.printStackTrace();
		} finally {
		    // 연결 및 자원 해제
		    if (rs2 != null) {
		        try {
		            rs2.close();
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
		    if (conn2 != null) {
		        try {
		            conn2.close();
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
