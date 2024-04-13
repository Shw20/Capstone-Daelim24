<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="resources/layout/Header.jsp"%>
	<link rel="stylesheet" href="resources/css/SignStyle.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<form action="LoginDAO.jsp" method="post" onsubmit="return validateForm()">
    <div class="signup">
        <div class="div">
	        <nav>
				<%@ include file="resources/layout/nav.jsp"%>
			</nav>
            <div class="overlap">
                <div class="overlap-2">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">아이디를 입력해주세요</div> -->
                    <div class="text-wrapper-10"><input type="text" id="userID" name="userID" placeholder="아이디" autocomplete="off" class="input-id" required ></div>
                </div>
                <div class="overlap-3" style="position: relative; display: inline-block;">
				    <div class="text-wrapper-12" style="background-color:transparent; cursor: pointer;">로그인</div>
				    <input type="submit" value="" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;">
				</div>

                <div class="overlap-4">
                    <p class="div-2">
                        <span class="text-wrapper-13">계정이 없으신가요?</span>
                        <span class="text-wrapper-14" style="background-color:transparent; cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/Signup.jsp';">회원가입 하러가기</span>
                    </p>
                </div>
                <div class="overlap-5">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">비밀번호를 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="password" id="password" name="password" placeholder="비밀번호 (영문+숫자 8자 이상)" autocomplete="off" maxlength="16" class="input-pwd"required></div>
                </div>
                <div class="text-wrapper-16" style="cursor: pointer;" onclick="window.open('Main.jsp');">로그인 없이 사이트 둘러보기</div>
            </div>
            <div class="text-wrapper-17" style="cursor: pointer;">로그인</div>
</form>  <!-- 회원가입 버튼 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			
        </div>
    </div>
</body>
<footer>
	<%@ include file="resources/layout/footer.jsp"%>
</footer>
</html>