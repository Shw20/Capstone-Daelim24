<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="Header.jsp"%>
	<link rel="stylesheet" href="../css/SignStyle.css"/>
	<link rel="stylesheet" href="../css/nav.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<nav>
	<div class="signup">
    	<div class="group">
                <div class="overlap-11">
                    <div class="group-2">
                        <div class="overlap-12">
                            <div class="text-wrapper-18" style="cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/Main.jsp';">DDOSSEOJYO</div>
                            <div class="search-container">
							    <div class="rectangle-2">
							        <input type="search" placeholder="Search" />
							        <span class="icon"><i class="fa fa-search"></i></span>
							    </div>
							</div>
                            <div class="rectangle-3"></div>
                            <div class="rectangle-4"></div>
                            <div class="rectangle-5"></div>
                        </div>
                        <div class="group-wrapper">
                            <div class="group-3">
                                <div class="text-wrapper-19">카테고리</div>
                                <div class="frame">
                                    <div class="text-wrapper-20" style="cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/Login.jsp';">로그인</div>
                                    <div class="text-wrapper-20" style="cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/Signup.jsp';">회원가입</div>
                                </div>
                                <div class="frame-2">
                                    <div class="text-wrapper-21">브랜드관</div>
                                    <div class="text-wrapper-21">제품</div>
                                    <div class="text-wrapper-21">핫딜</div>
                                    <div class="text-wrapper-21">부품구매?</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item-link">
                    <div class="span-tab-name">
                        <div class="text-wrapper-22">파며드는 봄</div>
                    </div>
                </div>
                <div class="span-tab-name-wrapper">
                    <div class="span-tab-name">
                        <div class="text-wrapper-23">추천</div>
                    </div>
                </div>
                <div class="item-link-2">
                    <div class="span-tab-name">
                        <div class="text-wrapper-24">랭킹</div>
                        <div class="after"></div>
                    </div>
                </div>
                <div class="item-link-3">
                    <div class="span-tab-name">
                        <div class="text-wrapper-24">발견</div>
                    </div>
                </div>
            </div>
    </div>
</nav>
    
</body>
</html>