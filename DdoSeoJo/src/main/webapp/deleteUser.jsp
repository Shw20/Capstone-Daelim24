<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
    <style>
        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
    <script>
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
</head>
<body>
    <h2>회원정보 수정</h2>
    <!-- 기타 회원정보 수정 폼 -->

    <!-- 탈퇴하기 버튼 -->
    <button onclick="openModal()">탈퇴하기</button>

    <!-- 비밀번호 입력 모달 -->
    <div id="passwordModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>비밀번호 확인</h2>
            <form id="deleteForm" action="${pageContext.request.contextPath}/DeleteServlet" method="post">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>
                <br>
                <button type="button" onclick="submitForm()">탈퇴</button>
            </form>
        </div>
    </div>
</body>
</html>
