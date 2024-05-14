<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%-- <%@ include file="resources/layout/Header.jsp"%> --%>
<link rel="stylesheet" href="resources/css/Modify.css" />
<link rel="stylesheet" href="resources/css/footer.css" />
<script src="resources/js/script.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<nav>
		<%@ include file="resources/layout/userNav.jsp"%>
	</nav>
	<form name="Modify" action="ModifyServlet" method="post"
		onsubmit="return JoinForm()">
		<div class="signup">
			<div class="div" style="margin-top: 100px;">

				<div class="overlap">
					<div class="overlap-2">
					</div>
					<div class="overlap-3"
						style="position: relative; display: inline-block;">
						<div class="text-wrapper-12"
							style="background-color: transparent; cursor: pointer;">수정하기</div>
						<input type="submit" value=""
							style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;">
					</div>
					<%-- <div class="overlap-4">
						<p class="div-2">
							<span class="text-wrapper-13">이미 회원이신가요?</span> <span
								class="text-wrapper-14"
								style="background-color: transparent; cursor: pointer;"
								onclick="location.href = '${pageContext.request.contextPath}/Signup.jsp';">로그인
								하러가기</span>
						</p>
					</div> --%>
					<div class="overlap-5">
						<div class="text-wrapper-10">
							<input type="text" id="userID" name="userID" placeholder="아이디"
								autocomplete="off" class="input-id" required>
						</div>
					</div>
					<div class="overlap-6">
						<div class="textwrapper-10">
							<input type="password" placeholder="비밀번호 (영문+숫자 8자 이상)"
								autocomplete="off" maxlength="16" class="input-pwd"
								id="password" name="newPassword" required>
						</div>
					</div>
					<div class="overlap-7">
						<div class="textwrapper-10">
							<input type="password" placeholder="비밀번호 확인" autocomplete="off"
								maxlength="16" class="input-pwd" id="confirmPassword"
								name="confirmPassword" onkeyup="checkPasswordMatch();" required>
							<!-- <input type="password" placeholder="비밀번호 확인" autocomplete="off" maxlength="16" class="input-pwd"> -->
						</div>
						<div id="passwordMatchMessage"></div>
					</div>
					<div class="text-wrapper-15">전부 필수 입력 항목입니다</div>
					</div>
					<div class="text-wrapper-16"></div>
				</div>
				<div class="text-wrapper-17" style="cursor: pointer;">회원정보 수정</div>
	<!-- 회원가입 버튼 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		</div>
</form>
</body>
<%-- <footer>
	<%@ include file="resources/layout/footer.jsp"%>
</footer> --%>
</html>