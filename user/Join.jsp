<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<h2>회원가입</h2>

<form action="JoinServlet.java" method="post">
    <label for="userID">사용자 ID:</label>
    <input type="text" id="userID" name="userID" required><br><br>
    
    <label for="password">비밀번호:</label>
    <input type="password" id="password" name="password" required><br><br>
    
    <label for="age">나이:</label>
    <input type="number" id="age" name="age" required><br><br>
    
    <label for="phoneNumber">전화번호:</label>
    <input type="text" id="phoneNumber" name="phoneNumber" required><br><br>
    
    <label for="email">이메일:</label>
    <input type="email" id="email" name="email" required><br><br>
    
    <label for="name">이름:</label>
    <input type="text" id="name" name="name" required><br><br>
    
    <input type="submit" value="회원가입">
</form>

</body>
</html>
