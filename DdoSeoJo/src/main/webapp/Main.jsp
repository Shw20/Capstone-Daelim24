<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DdoSseoJo</title>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/SignStyle.css">
</head>
<body>
    <!-- @@@@@@@@@@@@@@@@@@ 헤더 @@@@@@@@@@@@@@@@@@ -->
    <header>
        <%
		    request.setCharacterEncoding("UTF8");
		    response.setCharacterEncoding("UTF-8");
		    
		    Integer IDX = (Integer) session.getAttribute("IDX");
		    String UserID = (String) session.getAttribute("UserID");
		    String Name = (String) session.getAttribute("Name");
		
		    
		
		        if (Name == null) {	%>
		    		<jsp:include page="resources/layout/nav.jsp"></jsp:include>
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
    <!-- @@@@@@@@@@@@@@@@@@ 헤더끝 @@@@@@@@@@@@@@@@@@ -->


    <!-- @@@@@@@@@@@@@@@@@@ 바디 @@@@@@@@@@@@@@@@@@ -->
    <main>
        <div class="big-img">
            <img src="./resources/img/big-img.jpg" alt="main-img">
            <button class="btn">원하는 조건으로 구매하기</button>
        </div>

        <div class="items-short-wrap">
            <a href="">
                <div class="items-short">
                    <img src="./resources/img/items-short-img.png" alt="">
                    <p class="items-short-title">이벤트 특가전</p>
                </div>
            </a>
            <a href="">
                <div class="items-short">
                    <img src="./resources/img/items-short-img.png" alt="">
                    <p class="items-short-title">삼성 비스포크 냉장고</p>
                </div>
            </a>
            <a href="">
                <div class="items-short">
                    <img src="./resources/img/items-short-img.png" alt="">
                    <p class="items-short-title">LG 게이밍 커브드 모니터</p>
                </div>
            </a>
            <a href="">
                <div class="items-short">
                    <img src="./resources//img/items-short-img.png" alt="">
                    <p class="items-short-title">품절임박 상품</p>
                </div>
            </a>
            <a href="">
                <div class="items-short">
                    <img src="./resources/img/items-short-img.png" alt="">
                    <p class="items-short-title">A+ 맞고싶어요</p>
                </div>
            </a>
            <a href="">
                <div class="items-short">
                    <img src="./resources/img/items-short-img.png" alt="">
                    <p class="items-short-title">안녕하세요 반갑습니다</p>
                </div>
            </a>
        </div>

        <div class="items-ranking">
            <h2>실시간 랭킹</h1>
            <hr>
            <div class="items-ranking-wrap">
                <div class="items-ranking-info">
                    <a href="">
                        <div class="items-ranking-img">
                            <img src="./resources/img/items-ranking-img.png" alt="">
                        </div>
                        <div class="items-ranking-price">
                            dd
                        </div>
                    </a>
                </div>
                <div class="items-ranking-info">
                    <a href="">
                        <div class="items-ranking-img">
                            <img src="./resources/img/items-ranking-img.png" alt="">
                        </div>
                        <div class="items-ranking-price">
                            dd
                        </div>
                    </a>
                </div>
                <div class="items-ranking-info">
                    <a href="">
                        <div class="items-ranking-img">
                            <img src="./resources/img/items-ranking-img.png" alt="">
                        </div>
                        <div class="items-ranking-price">
                            dd
                        </div>
                    </a>
                </div>
                <div class="items-ranking-info">
                    <a href="">
                        <div class="items-ranking-img">
                            <img src="./resources/img/items-ranking-img.png" alt="">
                        </div>
                        <div class="items-ranking-price">
                            dd
                        </div>
                    </a>
                </div>
                <div class="items-ranking-info">
                    <a href="">
                        <div class="items-ranking-img">
                            <img src="./resources/img/items-ranking-img.png" alt="">
                        </div>
                        <div class="items-ranking-price">
                            dd
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- @@@@@@@@@@@@@@@@@@ 바디끝 @@@@@@@@@@@@@@@@@@ -->

        <!-- @@@@@@@@@@@@@@@@@@ 푸터 @@@@@@@@@@@@@@@@@@ -->
        <footer>

        </footer>
        <!-- @@@@@@@@@@@@@@@@@@ 푸터끝 @@@@@@@@@@@@@@@@@@ -->
    </main>
</body>
</html>