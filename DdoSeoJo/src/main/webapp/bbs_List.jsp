<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<header>
        <%
		    request.setCharacterEncoding("UTF8");
		    response.setCharacterEncoding("UTF-8");
		    
		    Integer IDX = (Integer) session.getAttribute("IDX");
		    String UserID = (String) session.getAttribute("UserID");
		    String Name = (String) session.getAttribute("Name");
		
		    
		
		        if (Name == null) {	%>
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
    <h1>제품 게시판</h1>
    
    <%-- 글쓰기 링크 추가 --%>
    <a href="post_write.jsp">글쓰기</a>
    <ul>
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

                // SQL 쿼리 실행
                String sql = "SELECT userID, content, CreateTime, bbsID, image FROM bbs"; // image 컬럼 추가
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);

                // 결과 출력
                while(rs.next()) {
        %>
            <!-- 게시글 링크 추가 -->
                    <% 
                        // 이미지 표시
                        int bbsID = rs.getInt("bbsID");
                        String imagePath = "image/" + bbsID + "사진.jpg"; // 새로운 이미지 경로 생성
                    %>
                <img class="img" src="<%= imagePath %>" alt="게시글 이미지">
                <a href="post.jsp?bbsID=<%= rs.getInt("bbsID") %>">
                    User ID: <%= rs.getString("userID") %>, 
                    Content: <%= rs.getString("content") %>, 
                    Create Time: <%= rs.getString("CreateTime") %>
                </a>
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
    </ul>
</main>
<footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer>
</body>
</html>
