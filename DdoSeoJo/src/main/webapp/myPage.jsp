<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="resources/css/myPage.css" />
    <link rel="stylesheet" href="resources/css/SignStyle.css" />
    <link rel="stylesheet" href="resources/css/footerStyle.css" />
</head>
<nav>
	<%
		    request.setCharacterEncoding("UTF8");
		    response.setCharacterEncoding("UTF-8");
		    
		    Integer IDX = (Integer) session.getAttribute("IDX");
		    String UserID = (String) session.getAttribute("UserID");
		    String Name = (String) session.getAttribute("Name");
		    String Email = (String) session.getAttribute("Email");
		
		    
		
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
</nav>
<body style="margin-top: 100px;">
    <div class="mypage">
        <div class="div">
            <div class="text-wrapper-9">마이페이지</div>
            <div class="overlap-group-wrapper">
                <div class="overlap-group">
                    <img class="img" src="resources/img/icon-human.png" />
					<div class="frame-7">
						<%-- <div class="text-wrapper-10"><%=Name%></div>
                        <div class="text-wrapper-11"><%=Email%></div> --%>
						<%
						if (Name == null) {
						%>
						<div class="text-wrapper-10">로그인해주세요.</div>
						<%
						}
						if (Name != null) {
						%>
						<div class="text-wrapper-10"><%=Name%></div>
						<div class="text-wrapper-11"><%=Email%></div>
						<!-- </div>
                    				<div class="frame-8"><div class="text-wrapper-12" style="cursor: pointer;" onclick="location.href = '';">회원정보 수정</div></div> -->
						<%
						}
						%>


					</div>
					<div class="frame-8">
					<% 
						if(Name == null){
					%>
							<div class="text-wrapper-12" style="cursor: pointer;"
									onclick="showAlert()">회원정보 수정
							</div>
							
					<%		
						}
						if(Name != null) {
					%>
							<div class="text-wrapper-12" style="cursor: pointer;"
								onclick="location.href = 'Modify.jsp';">회원정보 수정</div>
						<%	
							if(Name.equals("관리자")){
							%>
								<div class="text-wrapper-12" style="cursor: pointer;"
									onclick="location.href = 'adminModify.jsp';">회원정보 수정</div>
							<%		
							}
						}
						%>
						<!-- <div class="text-wrapper-12" style="cursor: pointer;"
								onclick="location.href = '';">회원정보 수정</div>-->
						</div> 
					</div>
				</div>
            <div class="frame-9">
                <div class="text-wrapper-13">구매 내역</div>
                <div class="text-wrapper-14" style="cursor: pointer;" onclick="location.href = '';">더보기</div>
                <div class="overlap">
                    <div class="rectangle"></div>
                    <div class="rectangle-2"></div>
                    <div class="rectangle-3"></div>
                    <div class="frame-10">
                        <div class="overlap-group-2">
                            <div class="text-wrapper-15">1</div>
                            <div class="text-wrapper-16">주문확인</div>
                        </div>
                    </div>
                    <div class="overlap-wrapper">
                        <div class="overlap-2">
                            <div class="text-wrapper-17">1</div>
                            <div class="text-wrapper-16">배송중</div>
                        </div>
                    </div>
                    <div class="frame-11">
                        <div class="overlap-3">
                            <div class="text-wrapper-17">1</div>
                            <div class="text-wrapper-16">배송완료</div>
                        </div>
                    </div>
                    <div class="frame-12">
                        <div class="overlap-4">
                            <div class="text-wrapper-18">3</div>
                            <div class="text-wrapper-19">전체</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="frame-13">
                <div class="text-wrapper-20">찜목록</div>
                <div class="text-wrapper-21" style="cursor: pointer;" onclick="location.href = '${pageContext.request.contextPath}/';">더보기</div>
                <div class="frame-14">
                    <div class="frame-15"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart.png" />
                </div>
                <div class="frame-17">
                    <div class="frame-18"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-4.png" />
                </div>
                <div class="frame-19">
                    <div class="frame-20"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-3.png" />
                </div>
                <div class="frame-21">
                    <div class="frame-22"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-8.png" />
                </div>
                <div class="frame-23">
                    <div class="frame-24"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-5.png" />
                </div>
                <div class="frame-25">
                    <div class="frame-26"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-9.png" />
                </div>
                <div class="frame-27">
                    <div class="frame-28"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-7.png" />
                </div>
                <div class="frame-29">
                    <div class="frame-30"></div>
                    <div class="frame-16">
                        <div class="text-wrapper-22">어쩔티비</div>
                        <div class="text-wrapper-23">쓰리스타</div>
                    </div>
                    <img class="icon-heart-2" src="img/icon-heart-6.png" />
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    function showAlert() {
        alert("로그인 후 이용해주세요");
    }
</script>
<footer>
	<%@ include file="resources/layout/footer.jsp"%>
</footer>
</html>