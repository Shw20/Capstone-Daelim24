<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선택된 카테고리의 상품 목록</title>
<link rel="stylesheet" href="resources/css/cateResult.css">
<link rel="stylesheet" href="resources/css/SignStyle.css">
<link rel="stylesheet" href="resources/css/Search.css">

<style>
    .product-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .product {
        width: 400px;
        height: 400px;
        background-color: #fff;
        padding: 10px;
        margin-bottom: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        box-sizing: border-box;
        text-align: center;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
    .product img {
        width: 100%;
        height: auto;
        max-height: 150px;
        object-fit: cover;
    }
    .product h2, .product p {
        margin: 10px 0;
    }
</style>

</head>
<body style="background-color: #E5E5E5; margin-top: 50px;">
<header>
        <%
          request.setCharacterEncoding("UTF8");
          response.setCharacterEncoding("UTF-8");
          
          Integer IDX = (Integer) session.getAttribute("IDX");
          String UserID = (String) session.getAttribute("UserID");
          String Name = (String) session.getAttribute("Name");
      
              if (Name == null) {   %>
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
<body>
    <div id="productList" class="product-container">
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
                if (selectedOption != null && (selectedOption.equals("monitorall") || selectedOption.equals("tabletall") || selectedOption.equals("tvall") || selectedOption.equals("refall") || selectedOption.equals("washall") || selectedOption.equals("dryall") || selectedOption.equals("dehumidall") || selectedOption.equals("humidall") || selectedOption.equals("ovenall") || selectedOption.equals("dishwasherall") || selectedOption.equals("waterall") || selectedOption.equals("all"))) {
                    query = "SELECT PrdName, BrandName, Price, ImgURL FROM product WHERE SecondType=? AND BrandName=?";
                    stmt = conn.prepareStatement(query);
                    stmt.setString(1, selectedTypeCI);
                    stmt.setString(2, selectedBrand);
                } else if (selectedOption.equals("mainall")) {
                   query = "SELECT PrdName, Price, ImgURL FROM product WHERE TypeName=? AND BrandName=?";
                   stmt = conn.prepareStatement(query);
                    stmt.setString(1, selectedTypeCI);
                    stmt.setString(2, selectedOption);
                }
                else {
                    query = "SELECT PrdName, BrandName, Price, ImgURL FROM product WHERE SecondType=? AND ThirdType=? AND BrandName=?";
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
