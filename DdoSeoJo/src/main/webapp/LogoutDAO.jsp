<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
<script>
	alert('로그아웃 되었습니다.');
</script>
<%
    session.invalidate();						// 세션을 초기화하여 로그아웃 처리
%>
<script>
	location.href="Main.jsp";	//test.jsp 이건 제가 테스트 할라고 만든 파일이고 이건 나중에 수정하면 됨
</script>
</body>
</html>