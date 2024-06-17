<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
    // 사용자가 입력한 값들 가져오기
    Integer buyer = (Integer) session.getAttribute("IDX");
    Integer seller = (Integer) session.getAttribute("postUserIDX");
    Integer product = (Integer) session.getAttribute("bbsID");
    String address = request.getParameter("address");
    String shipping = request.getParameter("deliveryCheckbox");
    String requestNote = request.getParameter("deliveryRequest");
    String payment = request.getParameter("paymentMethod");

    // 데이터베이스 연결 및 주문 정보 저장
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
    	String url = "jdbc:mysql://localhost:3306/capstone?useUnicode=true&characterEncoding=UTF-8";
        String user = "root";
        String password = "abcd1234";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // 주문 정보를 order 테이블에 저장하는 SQL 실행
        String sql = "INSERT INTO `order` (seller, buyer, product, address, shipping, request, payment) VALUES (?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, seller);
        pstmt.setInt(2, buyer);
        pstmt.setInt(3, product);
        pstmt.setString(4, address);
        pstmt.setString(5, shipping);
        pstmt.setString(6, requestNote);
        pstmt.setString(7, payment);
        pstmt.executeUpdate();
        
        
        
        out.println("<script>");
        out.println("window.location.href = 'post.jsp?bbsID=" + product + "';");
        out.println("</script>");
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
