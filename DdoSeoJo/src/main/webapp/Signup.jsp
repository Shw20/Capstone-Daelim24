<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="resources/layout/Header.jsp"%>
	<link rel="stylesheet" href="resources/css/SignStyle.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<form name="Join" action="JoinServlet" method="post" onsubmit="return JoinForm()"> 
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
                    <div class="div-wrapper">
                        <div class="text-wrapper-11">중복확인</div>
                    </div>
                </div>
                <div class="overlap-3" style="position: relative; display: inline-block;">
				    <div class="text-wrapper-12" style="background-color:transparent; cursor: pointer;">회원가입</div>
				    <input type="submit" value="" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;">
				</div>

                <div class="overlap-4">
                    <p class="div-2">
                        <span class="text-wrapper-13">이미 회원이신가요?</span>
                        <span class="text-wrapper-14">로그인하러 가기</span> &nbsp;
                    </p>
                </div>
                <div class="overlap-5">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">비밀번호를 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="password" placeholder="비밀번호 (영문+숫자 8자 이상)" autocomplete="off" maxlength="16" class="input-pwd" id="password" name="password" required></div>
                </div>
                <div class="overlap-6">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">비밀번호 확인</div> -->
                    <div class="textwrapper-10">
                    	<input type="password" placeholder="비밀번호 확인" autocomplete="off" maxlength="16" class="input-pwd" id="confirmPassword" name="confirmPassword" onkeyup="checkPasswordMatch();" required>
                    <!-- <input type="password" placeholder="비밀번호 확인" autocomplete="off" maxlength="16" class="input-pwd"> -->
                    </div>
                    <div id="passwordMatchMessage"></div>
                </div>
                <div class="overlap-7">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">이름을 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="text" placeholder="이름" autocomplete="off" maxlength="16" class="input-name" id="name" name="name" required></div>
                </div>
                <div class="overlap-8">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">나이를 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="number" placeholder="나이" autocomplete="off" maxlength="16" class="input-age" id="age" name="age" required></div>
                </div>
                <div class="text-wrapper-15">전부 필수 입력 항목입니다</div>
                <div class="overlap-9">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">전화번호를 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="text" placeholder="전화번호" autocomplete="off" maxlength="16" class="input-phnum" size="40" id="phoneNumber" name="phoneNumber" oninput="autohyphen(this)" required></div>
                </div>
                <div class="overlap-10">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">이메일을 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="email" placeholder="이메일" autocomplete="off" maxlength="16" class="input-email id="email" name="email" required></div>
                </div>
                <div class="text-wrapper-16" style="cursor: pointer;" onclick="window.open('Main.jsp');">가입 없이 사이트 둘러보기</div>
            </div>
            <div class="text-wrapper-17" style="cursor: pointer;">회원가입</div>
</form>  <!-- 회원가입 버튼 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<footer>
			<%@ include file="resources/layout/footer.jsp"%>
		</footer>
        </div>
    </div>
</body>

</html>