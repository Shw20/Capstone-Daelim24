<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
</head>
<body>
<%
    // 세션을 확인하여 로그인 상태를 파악
    String userID = (String) session.getAttribute("userID");
    boolean isLoggedIn = (userID != null);
%>
<h2><%= (isLoggedIn ? "Welcome, " + userID : "Login") %></h2>
<% if (!isLoggedIn) { %>
    <!-- 로그인 폼 -->
    <form action="LoginDAO.jsp" method="post" onsubmit="return validateForm()">
        <div>
            <label for="username">아이디:</label>
            <input type="text" id="userID" name="userID" >		<!-- required 속성 부여를 하면 html 자체에서 빈칸인지 확인 가능 -->
        </div>
        <div>
            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" >		<!-- required 속성 부여를 하면 html 자체에서 빈칸인지 확인 가능 -->
        </div>
        <div>
            <button type="submit">Login</button>
        </div>
        <div>
        	<a href="Signup.jsp">회원가입</a>
        </div>
    </form>
<% } else { %>
    <!-- 로그아웃 버튼 -->
    <form action="LogoutDAO.jsp" method="post">
        <div>
            <button type="submit">Logout</button>
        </div>
    </form>
<% } %>
<!-- 아이디에 특수문자 들어가 있는지 확인 -->
<script>
    function validateForm() {
        var userID = document.getElementById("userID").value;
        var specialChars = /[!@#$%^&*(),.?":{}|<>]/;
        if (specialChars.test(userID)) {
            alert("아이디에는 특수문자를 포함할 수 없습니다.");
            return false;
        }
        return true;
    }
</script>
</body>
</html>