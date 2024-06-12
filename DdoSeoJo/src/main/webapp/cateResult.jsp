<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선택된 카테고리의 상품 목록</title>
</head>
<body>
    <h1>선택된 카테고리의 상품 목록</h1>
    <div id="productList">
        <% 
	        String url = "jdbc:mysql://localhost:3306/DdoSseoJo";
		    String username = "root";
		    String password = "abcd1234";
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);

                String selectedTypeCI = request.getParameter("selectedTypeCI");
                String selectedOption = request.getParameter("selectedOption");
                String selectedBrand = request.getParameter("selectedBrand");
                
                String query;
                if (selectedOption != null && (selectedOption.equals("laptopall") || selectedOption.equals("monitorall") || selectedOption.equals("tabletall") || selectedOption.equals("tvall") || selectedOption.equals("refall") || selectedOption.equals("washall") || selectedOption.equals("dryall") || selectedOption.equals("dehumidall") || selectedOption.equals("humidall") || selectedOption.equals("ovenall") || selectedOption.equals("dishwasherall") || selectedOption.equals("waterall") || selectedOption.equals("all"))) {
                    query = "SELECT ProductID, PrdName, BrandName, Price, ImgURL FROM product WHERE SecondType=? AND BrandName=?";
                    stmt = conn.prepareStatement(query);
                    stmt.setString(1, selectedTypeCI);
                    stmt.setString(2, selectedBrand);
                } else {
                    query = "SELECT ProductID, PrdName, BrandName, Price, ImgURL FROM product WHERE SecondType=? AND ThirdType=? AND BrandName=?";
                    stmt = conn.prepareStatement(query);
                    stmt.setString(1, selectedTypeCI);
                    stmt.setString(2, selectedOption);
                    stmt.setString(3, selectedBrand);
                }

                rs = stmt.executeQuery();

                while (rs.next()) {
         %> 
        <div class="product">
            <h2><%= rs.getString("PrdName") %></h2>
            <p>브랜드명: <%= rs.getString("BrandName") %></p>
            <p>가격: <%= rs.getInt("Price") %>원</p>
			<a href="DetailView.jsp?ProductID=<%= rs.getInt("ProductID") %>">
			    <img src="<%= rs.getString("ImgURL") %>" alt="Product Image">
			</a>
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










