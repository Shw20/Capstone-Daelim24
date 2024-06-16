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
<script>
function showCategory2() {
    var category1 = document.getElementById("category1").value;
    var category2Div = document.getElementById("category2-div");
    var category2 = document.getElementById("category2");

    category2.innerHTML = ""; // 기존 옵션 제거
    category2Div.style.display = "block";

    switch (category1) {
        case "Laptops":
            category2.innerHTML = `
                <option value="Laptop1">노트북</option>
                <option value="Laptop2">주변기기</option>
            `;
            showcategory3();
            break;
        case "Desktop":
            category2.innerHTML = `
            	<option value="main">컴퓨터</option>
                <option value="monitor">모니터</option>
            `;
            showcategory3();
            break;
        case "Smartphone":
            category2.innerHTML = `
                <option value="smartphone">스마트폰</option>
            `;
            showcategory3()
            break;
        case "Tablet":
            category2.innerHTML = `
                <option value="tabletPC">태블릿</option>
                <option value="wearable">웨어러블</option>
            `;
            showcategory3();
            break;
        case "View":
            category2.innerHTML = `
                <option value="TV">TV</option>
                <option value="beamp">영상</option>
            `;
            showcategory3();
            break;
        case "HomeAppliances":
            category2.innerHTML = `
                <option value="refrigerator">냉장고</option>
                <option value="washing">세탁기</option>
                <option value="dryer">건조기</option>
            `;
            break;
        case "Seasonal":
            category2.innerHTML = `
                <option value="air">공기청정기</option>
                <option value="dehumidifier">제습기</option>
                <option value="humidifier">가습기</option>
            `;
            break;
        case "Kitchen":
            category2.innerHTML = `
                <option value="water">정수기</option>
                <option value="dishwasher">식기세척기</option>
                <option value="oven">오븐</option>
            `;
            break;
        default:
            category2Div.style.display = "none";
            break;
    }
}

function showcategory3() {
    var category2 = document.getElementById("category2").value;
    var category3Div = document.getElementById("category3-div");
    var category3 = document.getElementById("category3");

    category3.innerHTML = ""; // 기존 옵션 제거
    category3Div.style.display = "block";

    switch (category2) {
        case "Laptop1":
        	category3.innerHTML = `
                <option value="home-office">사무용</option>
                <option value="gamming">게임용</option>
            `;
            showbrand();
            break;
        case "Laptop2":
        	category3.innerHTML = `
                <option value="mouse">마우스</option>
                <option value="headset">헤드셋</option>
                <option value="keyboard">키보드</option>
                <option value="microphone">마이크</option>
            `;
            break;
        case "main":
        	category3.innerHTML = `
                <option value="-">해당사항 없음</option>
            `;
            showbrand();
            break;
        case "smartphone":
        	category3.innerHTML = `
                <option value="-">해당사항 없음</option>
            `;
            showbrand();
            break;
        case "beamp":
        	category3.innerHTML = `
                <option value="-">해당사항 없음</option>
            `;
            showbrand();
            break;
        case "wearable":
            category3.innerHTML = `
                <option value="watch">스마트워치|밴드</option>
            `;
            showbrand();
            break;
        case "monitor":
            category3.innerHTML = `
                <option value="24인치">24인치</option>
                <option value="27인치">27인치</option>
                <option value="32인치">32인치</option>
                <option value="32up">32인치 이상</option>
            `;
            break;
        case "tabletPC":
            category3.innerHTML = `
                <option value="8인치">8인치</option>
                <option value="10인치">10인치</option>
                <option value="11인치">11인치</option>
                <option value="12인치">12인치 이상</option>
            `;
            break;
        case "TV":
            category3.innerHTML = `
                <option value="32down">32인치 이하</option>
                <option value="4050">40~50인치</option>
                <option value="5060">50~60인치</option>
                <option value="7080">70~80인치</option>
                <option value="80up">80인치 이상</option>
            `;
            break;
        case "refrigerator":
            category3.innerHTML = `
                <option value="ice">양문형</option>
                <option value="kimchi">김치 냉장고</option>
                <option value="wine">와인 냉장고</option>
            `;
            break;
        case "washing":
            category3.innerHTML = `
                <option value="drum">드럼 세탁기</option>
                <option value="top">통돌이 세탁기</option>
            `;
            showbrand();
            break;
        case "dryer":
            category3.innerHTML = `
                <option value="heatpump">히트펌프</option>
                <option value="condensation">콘덴세이션</option>
            `;
            showbrand();
            break;
        case "air":
            category3.innerHTML = `
                <option value="big">대형</option>
                <option value="midium">중형</option>
                <option value="small">소형</option>
            `;
            break;
        case "dehumidifier":
            category3.innerHTML = `
                <option value="big">대형</option>
                <option value="midium">중형</option>
                <option value="small">소형</option>
            `;
            break;
        case "humidifier":
            category3.innerHTML = `
                <option value="big">대형</option>
                <option value="midium">중형</option>
                <option value="small">소형</option>
            `;
            break;
        case "water":
            category3.innerHTML = `
                <option value="big">대형</option>
                <option value="midium">중형</option>
                <option value="small">소형</option>
            `;
            break;
        case "dishwasher":
            category3.innerHTML = `
                <option value="stand">스탠드형</option>
                <option value="build">빌트인형</option>
            `;
            showbrand();
            break;
        case "oven":
            category3.innerHTML = `
                <option value="stand">스탠드형</option>
                <option value="build">빌트인형</option>
            `;
            showbrand();
            break;
        default:
            category3Div.style.display = "none";
            break;
    }
}

function showbrand() {
	var category2 = document.getElementById("category2").value;
    var brandDiv = document.getElementById("brand-div"); // 변경된 변수 이름
    var brand = document.getElementById("brand");
    var category3 = document.getElementById("category3").value;


    brand.innerHTML = ""; // 기존 옵션 제거
    brandDiv.style.display = "block";

    switch (category2) {
    case "Laptop1":
    	if(category3 == "home-office"){
    		brand.innerHTML = `
	            <option value="LG">LG</option>
	            <option value="SamSung">SamSung</option>
	            <option value="Apple">Apple</option>
	            <option value="HP">HP</option>
	            <option value="Lenovo">Lenovo</option>
	        `;
    	}else{
    		brand.innerHTML = `
                <option value="LG">LG</option>
                <option value="SamSung">SamSung</option>
                <option value="HP">HP</option>
                <option value="Lenovo">Lenovo</option>
            `;
    	}
        break;
	case "Laptop2":
		if(category3 == "mouse"){
			brand.innerHTML = `
	            <option value="앱코">앱코</option>
	            <option value="로지텍">로지텍</option>
	            <option value="SamSung">SamSung</option>
	            <option value="ASUS">ASUS</option>
	            <option value="Britz">Britz</option>
	        `;
		}else if(category3 == "headset"){
			brand.innerHTML = `
	            <option value="SONY">SONY</option>
	            <option value="JBL">JBL</option>
	            <option value="AKG">AKG</option>
	            <option value="젠하이저">젠하이저</option>
	            <option value="슈어">슈어</option>
	        `;
		}else if(category3 == "keyboard"){
			brand.innerHTML = `
	            <option value="로지텍">로지텍</option>
	            <option value="앱코">앱코</option>
	            <option value="ASUS">ASUS</option>
	            <option value="알파스캔">알파스캔</option>
	        `;
		}else{
			brand.innerHTML = `
	            <option value="앱코">앱코</option>
	            <option value="슈어">슈어</option>
	            <option value="젠하이저">젠하이저</option>
	            <option value="AKG">AKG</option>
	            <option value="Britz">Britz</option>
	        `;
		}
        break;
	case "main":
    	brand.innerHTML = `
            <option value="etc">기타</option>
        `;
        break;
    case "wearable":
    	brand.innerHTML = `
            <option value="SamSung">SamSung</option>
            <option value="Apple">Apple</option>
            <option value="샤오미">샤오미</option>
            <option value="QCY">QCY</option>
        `;
        break;
    case "monitor":
    	brand.innerHTML = `
            <option value="알파스캔">알파스캔</option>
            <option value="뷰소닉">뷰소닉</option>
            <option value="SamSung">SamSung</option>
            <option value="ASUS">ASUS</option>
            <option value="LG">LG</option>
        `;
        break;
    case "tabletPC":
    	brand.innerHTML = `
            <option value="SamSung">SamSung</option>
            <option value="LG">LG</option>
            <option value="Apple">Apple</option>
            <option value="샤오미">샤오미</option>
            <option value="Lenovo">Lenovo</option>
        `;
        break;
    case "TV":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="샤오미">샤오미</option>
        `;
        break;
    case "refrigerator":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="위니아">위니아</option>
            <option value="캐리어">캐리어</option>
        `;
        break;
    case "washing":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="위니아">위니아</option>
            <option value="캐리어">캐리어</option>
        `;
        break;
    case "dryer":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="위니아">위니아</option>
            <option value="린나이">린나이</option>
        `;
        break;
    case "air":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="다이슨">다이슨</option>
            <option value="샤오미">샤오미</option>
        `;
        break;
    case "dehumidifier":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="캐리어">캐리어</option>
            <option value="샤오미">샤오미</option>
            <option value="위닉스">위닉스</option>
        `;
        break;
    case "humidifier":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="듀플렉스">듀플렉스</option>
            <option value="샤오미">샤오미</option>
            <option value="위닉스">위닉스</option>
        `;
        break;
    case "water":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="쿠쿠">쿠쿠</option>
            <option value="SK매직">SK매직</option>
            <option value="피코그램">피코그램</option>
        `;
        break;
    case "dishwasher":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="쿠쿠">쿠쿠</option>
            <option value="SK매직">SK매직</option>
        `;
        break;
    case "oven":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="쿠쿠">쿠쿠</option>
            <option value="캐리어">캐리어</option>
            <option value="SamSung">SamSung</option>
        `;
        break;
    case "smartphone":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="SamSung">SamSung</option>
            <option value="Apple">Apple</option>
        `;
        break;
    case "beamp":
    	brand.innerHTML = `
            <option value="LG">LG</option>
            <option value="뷰소닉">뷰소닉</option>
            <option value="샤오미">샤오미</option>
            <option value="SamSung">SamSung</option>
        `;
        break;
    default:
    	category2Div.style.display = "none";
        break;
    }
}
</script>
</head>
<body>
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
        } else {
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
        <div>
            <label for="productName">제품 이름:</label>
            <input type="text" id="productName" name="productName" required>
        </div>
        <div>
            <label for="price">가격:</label>
            <input type="number" id="price" name="price" required>
        </div>
        <div>
            <label for="category1">카테고리:</label>
            <select id="category1" name="category1" onchange="showCategory2()" required>
                <option value="">카테고리를 선택하세요</option>
                <option value="Laptops">노트북|주변기기</option>
                <option value="Desktop">컴퓨터|모니터</option>
                <option value="Smartphone">스마트폰</option>
                <option value="Tablet">테블릿|웨어러블</option>
                <option value="View">TV|영상</option>
                <option value="HomeAppliances">냉장고|세탁기|건조기</option>
                <option value="Seasonal">계절가전</option>
                <option value="Kitchen">주방|생활가전</option>
            </select>
        </div>
        <div id="category2-div" style="display: none;">
            <label for="category2">세부 카테고리:</label>
            <select id="category2" name="category2" onchange="showcategory3()" required>
                <!-- 하위 카테고리 옵션은 JavaScript에 의해 추가됩니다 -->
            </select>
        </div>
        <div id="category3-div" style="display: none;">
            <label for="category3">하위 세부 카테고리:</label>
            <select id="category3" name="category3" onchange="showbrand()" required>
                <!-- 하위 세부 카테고리 옵션은 JavaScript에 의해 추가됩니다 -->
            </select>
        </div>
        <div id="brand-div" style="display: none;">
            <label for="brand">브랜드:</label>
            <select id="brand" name="brand" required>
                <!-- 하위 세부 카테고리 옵션은 JavaScript에 의해 추가됩니다 -->
            </select>
        </div>
        <div>
            <label for="fileName">이미지 파일:</label>
            <input type="file" name="fileName">
        </div>
        <input type="submit" style="background-color: #742121;" value="등록">
</head>
<header>
        <%
	        request.setCharacterEncoding("UTF8");
	        response.setCharacterEncoding("UTF-8");
	        
	        /* Integer IDX = (Integer) session.getAttribute("IDX");
	        String UserID = (String) session.getAttribute("UserID");
	        String Name = (String) session.getAttribute("Name"); */
		
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
