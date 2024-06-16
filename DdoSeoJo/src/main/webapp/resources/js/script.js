function JoinForm(){ /* 회원가입 유효성검사 */
		var form = document.forms["Join"];
		var e = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
      	//아이디 확인
        if(form.userID.value == ""){
            alert("아이디를 입력하세요.");
            form.userID.focus();
            return false;
        } else if(form.userID.idDuplication.value!="idCheck"){
			alert('아이디 중복체크를 해주세요.');
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
	
	/*function fn_dbCheckId(){ //중복체크
		var form = document.forms["Join"];
		var id = form.userID.value;
		if(id.length == 0 || id == ""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
		}else {
			window.open("${contextPath}")
		}
	}*/
	
<<<<<<< HEAD
	function checkPasswordMatch() { //회원가입 비밀번호가 일치한지
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        var message = document.getElementById("passwordMatchMessage");

        if (password != confirmPassword) {
            message.innerHTML = "비밀번호가 일치하지 않습니다.";
            message.style.color = "red";
        } else {
            message.innerHTML = "비밀번호가 일치합니다.";
            message.style.color = "green";
        }
    }
    
=======
	function checkPasswordMatch() { //비밀번호가 일치한지
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        var message = document.getElementById("passwordMatchMessage");

        if (password != confirmPassword) {
            message.innerHTML = "비밀번호가 일치하지 않습니다.";
            message.style.color = "red";
        } else {
            message.innerHTML = "비밀번호가 일치합니다.";
            message.style.color = "green";
        }
    }
>>>>>>> branch 'main' of https://github.com/Shw20/Capstone-Daelim24.git
    
 document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('.overlap-3').addEventListener('click', function() {
        document.querySelector('input[type="submit"]').click();
    });
});

function search() { //search
    // 검색어 가져오기
    var searchKeyword = document.getElementById('searchInput').value.toLowerCase();

    // 모든 검색 결과를 숨김
    var searchResults = document.querySelectorAll('.rectangle-2');
    searchResults.forEach(function(result) {
        result.style.display = 'none';
    });

    // 검색어와 일치하는 요소 표시
    var elementsToDisplay = document.querySelectorAll('.rectangle-2');
    elementsToDisplay.forEach(function(element) {
        var text = element.innerText.toLowerCase();
        if (text.includes(searchKeyword)) {
            element.style.display = 'block';
        }
    });
}