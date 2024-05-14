<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%
    request.setCharacterEncoding("UTF8");
    response.setCharacterEncoding("UTF-8");
    
    Integer IDX = (Integer) session.getAttribute("IDX");
    String UserID = (String) session.getAttribute("UserID");
    String Name = (String) session.getAttribute("Name");
    
    if (Name == null) {
	%>
	    <script>
	        alert("로그인이 필요합니다.");
	        window.location.href = "Login.jsp";
	    </script>
	<%
	}
	else {
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
</head>
<nav>
    <%@ include file="resources/layout/nav.jsp"%>
</nav>
</head>
<body style="margin-top: 200px;">
<main>
    <h1>판매글 쓰기</h1>
    
    <%-- 입력 폼 --%>
    <form method="post" action="insertData.jsp" enctype="multipart/form-data">

    <div style="margin-bottom: 10px;">
        <label for="title" style="display: block; margin-bottom: 5px;">제목:</label>
        <input type="text" id="title" name="title" style="width: 100%; padding: 5px;" required>
    </div>
    <div style="margin-bottom: 10px;">
        <label for="content" style="display: block; margin-bottom: 5px;">내용:</label>
        <textarea id="content" name="content" style="width: 100%; height: 100px; padding: 5px;" required></textarea>
    </div>
    <input type="file" name="fileName">
    <input type="submit" value="등록" style="padding: 10px; background-color: #007bff; color: #fff; border: none; cursor: pointer;">
    
	
			
</form>
</main>
</body>
<footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer>
</html>
