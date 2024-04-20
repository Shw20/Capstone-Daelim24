<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>선택된 카테고리의 상품 목록</h1>
    <div id="productList">
        <% 
            // 데이터베이스 연결 정보
            String url = "jdbc:mysql://localhost:3306/capstone";
            String username = "root";
            String password = "abcd1234";
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                // 데이터베이스 연결
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);
                
                // 선택된 카테고리 저ㅇ보 가져오기
                String selectedTypeCI = request.getParameter("selectedTypeCI");
                String selectedOption = request.getParameter("selectedOption");
                String selectedBrand = request.getParameter("selectedBrand");
                
                // SQL 쿼리 작성
                String query;
                if ("all".equals(selectedOption)) {
                    // "상관없음"이 선택된 경우
                    query = "SELECT PrdName, BrandName, Price FROM product WHERE TypeName=? AND BrandName=?";
                    stmt = conn.prepareStatement(query);
                    stmt.setString(1, selectedTypeCI);
                    stmt.setString(2, selectedBrand);
                } else {
                    query = "SELECT PrdName, BrandName, Price FROM product WHERE TypeName=? AND SecondType=? AND BrandName=?";
                    stmt = conn.prepareStatement(query);
                    stmt.setString(1, selectedTypeCI);
                    stmt.setString(2, selectedOption);
                    stmt.setString(3, selectedBrand);
                }
                
                // 쿼리문 실행
                rs = stmt.executeQuery();
                
                // 결과 출력
                while (rs.next()) {
         %> 
        <div class="product">
            <h2><%= rs.getString("PrdName") %></h2>
            <p>브랜드명: <%= rs.getString("BrandName") %></p>
            <p>가격: <%= rs.getInt("Price") %>원</p>
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
    </div>
</body>
</html>
