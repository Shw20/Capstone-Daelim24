<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%
    String userID = request.getParameter("userID");
    String password = request.getParameter("password");

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    String url = "jdbc:mysql://localhost:3306/capstone";
    String dbUserName = "root";
    String dbPassword = "dltmdghks0126";

    try {
        // JDBC Driver 로드
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // drivermanager로 db 접속
        con = DriverManager.getConnection(url, dbUserName, dbPassword);
        
        // 쿼리문 입력
        stmt = con.createStatement();
        String sql = "SELECT * FROM user WHERE UserID = '" + userID + "' AND Pwd = '" + password + "'";
         
        // 쿼리실행
        rs = stmt.executeQuery(sql);
    
        // user에 존재 하는지 확인 (userID, Pwd)
        if (rs.next()) {
            // 아이디, 비번 일치하면 로그인?메인? 파일로 강제 이동
            //response.sendRedirect("test.jsp");
            out.println("컷");    // 제대로 작동하나 확인용
        } else {
            // 아이디가 틀렸거나 비번이 틀렸거나(확인용이여서 나중에 로그인 화면에서 경고창이나 이런걸로 뿌릴 생각중)
            out.println("Login failed. Please check your username and password.");
        }

    } catch (ClassNotFoundException e) {
        // JDBC 커넥터 오류
        out.println("JDBC driver not found: " + e.getMessage());
        e.printStackTrace();
    } catch (SQLException e) {
        // SQL 쿼리문 오류
        out.println("SQL Error: " + e.getMessage());
        e.printStackTrace();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
        e.printStackTrace();
    } finally {
        // 리소스 닫기
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
