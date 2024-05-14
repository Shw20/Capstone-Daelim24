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
    
    if (Name == null) {%>
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
    <h1>게시물 수정</h1>
    <%
        Connection conn = null;
        Statement stmt = null;
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

            // SQL 쿼리 실행 - 해당 게시물 정보 가져오기
            String sql = "SELECT userID, content, CreateTime FROM bbs WHERE bbsID = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bbsID);
            rs = pstmt.executeQuery();

            // 결과 출력
            if (rs.next()) {
    %>
    <!-- 게시물 수정 폼 -->
    <form method="post" action="update_Submit.jsp">
        <input type="hidden" name="bbsID" value="<%= bbsID %>">
        <p>User ID: <%= rs.getString("userID") %></p>
        <p>Content: <input type="text" name="content" value="<%= rs.getString("content") %>"></p>
        <p>Create Time: <%= rs.getString("CreateTime") %></p>
        <input type="submit" value="수정확인">
    </form>
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
            if (stmt != null) {
                try {
                    stmt.close();
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
