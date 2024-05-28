<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/SignStyle.css" />
<link rel="stylesheet" href="resources/css/footerStyle.css">
<link rel="stylesheet" href="resources/css/postWrite.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<header>
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
		        if (Name != null) {
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
</header>
<body>
<main>
    <h1>판매글 쓰기</h1>
    
    <%-- 입력 폼 --%>
    <form method="post" action="insertData.jsp" enctype="multipart/form-data">
        <div>
            <label for="title">제목:</label>
            <input type="text" id="title" name="title" required>
        </div>
        <div>
            <label for="content">내용:</label>
            <textarea id="content" name="content" required></textarea>
        </div>
        <input type="file" name="fileName">
        <input type="submit" value="등록">
    </form>
</main>
<footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer>
</body>
</html>
