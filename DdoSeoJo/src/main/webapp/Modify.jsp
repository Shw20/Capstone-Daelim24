<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="resources/css/Modify.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <script src="resources/js/script.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <nav>
        <%@ include file="resources/layout/userNav.jsp"%>
    </nav>
    <form name="Modify" action="ModifyServlet" method="post" onsubmit="return validateForm()">
        <div class="signup">
            <div class="div" style="margin-top: 100px;">
                <div class="overlap">
                    <div class="overlap-2"></div>
                    <div class="overlap-3" style="position: relative; display: inline-block;">
                        <div class="text-wrapper-12" style="background-color: transparent; cursor: pointer;">수정하기</div>
                        <input type="submit" value="" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;">
                    </div>
                    <div class="overlap-4">
                        <p class="div-2">
                            <span class="text-wrapper-14" style="background-color: transparent; cursor: pointer; text-align: center;" onclick="openModal()">탈퇴하기</span>
                        </p>
                    </div>
                    <div class="overlap-5">
                        <div class="text-wrapper-10">
                            <input type="password" id="currentPassword" name="currentPassword" placeholder="기존 비밀번호" autocomplete="off" class="input-id" required>
                        </div>
                    </div>
                    <div class="overlap-6">
                        <div class="text-wrapper-10">
                            <input type="password" placeholder="새 비밀번호 (영문+숫자 8자 이상)" autocomplete="off" maxlength="16" class="input-pwd" id="newPassword" name="newPassword" required>
                        </div>
                    </div>
                    <div class="overlap-7">
                        <div class="text-wrapper-10">
                            <input type="password" placeholder="새 비밀번호 확인" autocomplete="off" maxlength="16" class="input-pwd" id="confirmPassword" name="confirmPassword" onkeyup="checkPasswordMatch();" required>
                            <div id="passwordMatchMessage"></div>
                        </div>
                    </div>
                    <div class="text-wrapper-15">전부 필수 입력 항목입니다</div>
                </div>
                <div class="text-wrapper-17" style="cursor: pointer;">회원정보 수정</div>
            </div>
        </div>
    </form>

    <!-- 비밀번호 입력 모달 -->
    <div id="passwordModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>비밀번호 확인</h2>
            <form id="deleteForm" action="${pageContext.request.contextPath}/DeleteServlet" method="post">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>
                <br>
                <button type="button" onclick="submitForm()">탈퇴하기</button>
            </form>
        </div>
    </div>

    <script>
        function checkPasswordMatch() {
            var password = document.getElementById("newPassword").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var message = document.getElementById("passwordMatchMessage");

            if (password != confirmPassword) {
                message.style.color = "red";
                message.innerHTML = "비밀번호가 일치하지 않습니다.";
            } else {
                message.style.color = "green";
                message.innerHTML = "비밀번호가 일치합니다.";
            }
        }

        function validateForm() {
            var password = document.getElementById("newPassword").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            if (password != confirmPassword) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            return true;
        }

        function openModal() {
            document.getElementById("passwordModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("passwordModal").style.display = "none";
        }

        function submitForm() {
            var password = document.getElementById("password").value;
            if (password === "") {
                alert("비밀번호를 입력해주세요.");
                return false;
            }
            document.getElementById("deleteForm").submit();
        }
    </script>
</body>
<!-- <footer>
    <%@ include file="resources/layout/footer.jsp"%>
</footer> -->
</html>
