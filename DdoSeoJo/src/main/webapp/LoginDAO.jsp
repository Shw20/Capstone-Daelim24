<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
    String userID = request.getParameter("userID");			//login 페이지에서 입력한 아이디 받아오기
    String password = request.getParameter("password");		//login 페이지에서 입력한 비밀번호 받아오기

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String url = "jdbc:mysql://localhost:3306/capstone";
    String dbUserName = "root";
    String dbPassword = "dltmdghks0126";

    try {
        Class.forName("com.mysql.jdbc.Driver");			// JDBC Driver 로드
        con = DriverManager.getConnection(url, dbUserName, dbPassword);        // drivermanager로 db 접속
        
        String sql = "SELECT * FROM user WHERE UserID = ?";			// 쿼리문 입력
        pstmt = con.prepareStatement(sql);			// PreparedStatement 객체 생성
        pstmt.setString(1, userID);
        // PreparedStatement에 값 설정
        rs = pstmt.executeQuery();			// 쿼리실행
    
        // user에 존재하는지 확인 (userID)
        if (rs.next()) {
            // 아이디가 존재하는 경우
            String userPwd = rs.getString("Pwd");		//userPwd라는 객체를 새로 생성하고 db에 있는 Pwd를 끌고와서 비교
            if (password.equals(userPwd)) {
                // 비밀번호 일치
                session.setAttribute("IDX", rs.getInt("IDX"));
	            session.setAttribute("UserID", rs.getString("UserID"));
	            session.setAttribute("Name", rs.getString("Name"));
	            session.setAttribute("Email", rs.getString("Email"));

	            
                // 메인 페이지에 세션부여
                			//test.jsp 이건 제가 테스트 할라고 만든 파일이고 이건 나중에 수정하면 됨
%>
                <script>
	                alert('로그인 되었습니다.');
	    			location.href="Main.jsp";	//test.jsp 이건 제가 테스트 할라고 만든 파일이고 이건 나중에 수정하면 됨
                </script>
<%
            } else {
                // 비밀번호 불일치
%>
                <script>
                    alert("비밀번호가 잘못되었습니다.");
                    window.location.href = "Login.jsp";			//test.jsp 이건 제가 테스트 할라고 만든 파일이고 이건 나중에 수정하면 됨
                </script>
<%
            }
        } else {
            // 아이디가 존재하지 않는 경우
%>
            <script>
                alert("아이디가 잘못되었습니다.");
                window.location.href = "Login.jsp";			//test.jsp 이건 제가 테스트 할라고 만든 파일이고 이건 나중에 수정하면 됨
            </script>
<%
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
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>