<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<script type="text/javascript">
	function JoinForm(){ /* 회원가입 유효성검사 */
		var form = document.forms["Join"];
		var e = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
      	//아이디 확인
        if(form.userID.value == ""){
            alert("아이디를 입력하세요.");
            form.userID.focus();
            return false;
        }
		if(form.password.value == ""){
            alert("비밀번호를 입력하세요.");
            form.password.focus();
            return false;
        } else if(form.password.value.length < 8){	
        	alert("영문 8자 이상 입력하세요.");
            /* alert("영문 8자 이상, 대소문자, 숫자만 입력하세요.");  (!checkEngNumber(form.pw.value))*/
            form.password.focus();
            return false;
        }
		if(form.age.value == ""){
            alert("나이를 입력하세요.");
            form.age.focus();
            return false;
        } else if(isNaN(form.age.value)){
        	alert("숫자를 입력해주세요");
        	form.age.focus();
        	return false;
        } else if(form.age.value < 18){
        	alert('18세 미만은 이용 불가합니다.');
        	form.age.focus();
        	return false;
        }
		if(form.email.value == ""){
            alert("메일을 입력하세요.");
            form.email.focus();
            return false;
        }
		if(form.name.value == ""){
            alert("이름을 입력하세요.");
            form.name.focus();
            return false;
        }
		form.submit();
		return true;
	}
	
	const autohyphen = (target) => { /* 하이픈 자동입력 이벤트*/
		 target.value = target.value
		   .replace(/[^0-9]/g, '')
		  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	}
</script>
<body>

	<h2>회원가입</h2>
	
	<form name="Join" action="JoinServlet" method="post" onsubmit="return JoinForm()">
	    <label for="userID">사용자 ID:</label>
	    <input type="text" id="userID" name="userID" required><br><br>
	    
	    <label for="password">비밀번호:</label>
	    <input type="password" id="password" name="password" required><br><br>
	    
	    <label for="age">나이:</label>
	    <input type="number" id="age" name="age" required><br><br>
	    
	    <label for="phoneNumber">전화번호:</label>
	    <input type="text" id="phoneNumber" name="phoneNumber" oninput="autohyphen(this)" required><br><br> <!-- autohyphen으로 하이픈 자동입력 -->
	    
	    <label for="email">이메일:</label>
	    <input type="email" id="email" name="email" required><br><br>
	    
	    <label for="name">이름:</label>
	    <input type="text" id="name" name="name" required><br><br>
	    
	    <input type="submit" value="회원가입">
	</form>
</body>


</html>