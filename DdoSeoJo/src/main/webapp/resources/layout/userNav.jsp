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
                            <div class="text-wrapper-18" style="cursor: pointer;" onclick="window.location.href = '${pageContext.request.contextPath}/Main.jsp';">DDOSSEOJYO</div>
                            <div class="search-container">
							    <div class="rectangle-2">
							        <input type="search" name="keyword" id="search" placeholder="Search" />
							        <span class="icon"><i class="fa fa-search"></i></span>
							    </div>
							</div>
                            <div class="frame-3">
				            	<div class="icon-heart-wrapper" style="cursor: pointer;" onclick="location.href = '';">
				            		<img class="icon-heart" src="./resources/img/icon-heart.png" />
				            	</div>
				            	<div class="icon-profile-circled-wrapper" style="cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/myPage.jsp';">
				              		<img class="icon-profile-circled" src="./resources/img/icon-profile-circled.png" />
				            	</div>
				            	<div class="icon-menu-wrapper" style="cursor: pointer;" onclick="location.href = '';">
				            		<img class="icon-menu" src="./resources/img/icon-menu.png" />
				            	</div>
				            </div>
                        </div>
                        <div class="group-wrapper">
                            <div class="group-3">
                                <div class="text-wrapper-19" style="cursor: pointer;" onclick="location.href = 'Product.jsp';">카테고리</div>
                                <div class="frame">
                                <%
									request.setCharacterEncoding("UTF-8");
									response.setCharacterEncoding("UTF-8");
						
									Integer IDX = (Integer) session.getAttribute("IDX");
								    String UserID = (String) session.getAttribute("UserID");
								    String Name = (String) session.getAttribute("Name");
								%>
									<div class="text-wrapper-20" style="cursor: pointer;" onclick="window.location.href = '${pageContext.request.contextPath}/myPage.jsp';"><strong><%=Name%></strong> 님</div> 
                                    <div class="text-wrapper-20" style="cursor: pointer;" onclick="window.location.href = '${pageContext.request.contextPath}/LogoutDAO.jsp';">로그아웃</div>
                                </div>
                                <div class="frame-2">
                                    <div class="text-wrapper-21" style="cursor: pointer;" onclick="location.href = '';">브랜드관</div>
                                    <div class="text-wrapper-21" style="cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/bbs_List.jsp';">제품</div>
                                    <div class="text-wrapper-21" style="cursor: pointer;" onclick="location.href = '';">핫딜</div>
<<<<<<< HEAD
                                    <div class="text-wrapper-21" style="cursor: pointer;" onclick="location.href = '';">부품</div>
=======
                                    <div class="text-wrapper-21" style="cursor: pointer;" onclick="location.href = '';">부품구매?</div>
>>>>>>> branch 'main' of https://github.com/Shw20/Capstone-Daelim24.git
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