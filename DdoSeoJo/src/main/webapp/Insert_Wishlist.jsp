<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

    Connection con = null;
    PreparedStatement pstmt = null;
    
    String url = "jdbc:mysql://localhost:3306/DdoSseoJo";
    String dbUserName = "root";
    String dbPassword = "abcd1234";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, dbUserName, dbPassword);
    
        int bbsID = Integer.parseInt(request.getParameter("bbsID"));
        Integer IDX = (Integer) session.getAttribute("IDX");
        String UserID = (String) session.getAttribute("UserID");
        String Name = (String) session.getAttribute("Name");
        
        

        
        if (IDX == null) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<script>alert('로그인이 필요합니다.'); location.href='Login.jsp';</script>");
            return;
        }
    
        String sql = "INSERT INTO wishlist VALUES (null, ?, ?)";
        pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, IDX);
        pstmt.setInt(2, bbsID);
        pstmt.executeUpdate();
    
        // 클라이언트에게 성공 응답 보내기
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write("<script>alert('찜 성공!'); location.href='bbs_List.jsp';</script>");
    } catch (ClassNotFoundException | SQLException e) {
        // 예외 처리
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write("<script>alert('오류발생'); location.href='bbs_List.jsp';</script>");
        e.printStackTrace();
    } finally {
        // 리소스 닫기
        try {
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

%>
</body>
</html>
