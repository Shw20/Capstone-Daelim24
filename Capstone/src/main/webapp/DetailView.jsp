<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/DetailView.css"/>
</head>
<body>
	<div class="detailview">
      <div class="div">
        <header class="header">
          <div class="frame">
            <div class="text-wrapper">DDOSSEOJYO</div>
            <div class="vector-wrapper"><img class="vector" src="img/vector.svg" /></div>
            <div class="frame-2">
              <div class="span-tab-name"><div class="text-wrapper-2">파며드는 봄</div></div>
              <div class="item-link">
                <div class="span-tab-name-2"><div class="text-wrapper-3">추천</div></div>
              </div>
              <div class="span-tab-name-wrapper">
                <div class="span-tab-name-2">
                  <div class="text-wrapper-4">랭킹</div>
                  <div class="after"></div>
                </div>
              </div>
              <div class="div-wrapper">
                <div class="span-tab-name-2"><div class="text-wrapper-4">발견</div></div>
              </div>
            </div>
            <div class="frame-3">
              <div class="group"><img class="icon-heart" src="img/icon-heart.png" /></div>
              <div class="icon-profile-circled-wrapper">
                <img class="icon-profile-circled" src="img/icon-profile-circled.png" />
              </div>
              <div class="icon-menu-wrapper"><img class="icon-menu" src="img/icon-menu.png" /></div>
            </div>
          </div>
          <div class="frame-wrapper">
            <div class="frame-4">
              <div class="text-wrapper-5">카테고리</div>
              <div class="frame-5">
                <div class="text-wrapper-6">브랜드관</div>
                <div class="text-wrapper-6">제품</div>
                <div class="text-wrapper-6">핫딜</div>
                <div class="text-wrapper-6">부품구매?</div>
              </div>
              <div class="frame-6">
                <div class="text-wrapper-7">로그인</div>
                <div class="text-wrapper-8">회원가입</div>
              </div>
            </div>
          </div>
        </header>
        
        <%
		    // 데이터베이스 연결 정보
		    String url = "jdbc:mysql://localhost:3306/capstone";
		    String username = "root";
		    String password = "abcd1234";
		    Connection conn = null;
		    PreparedStatement stmt = null;
		    ResultSet rs = null;
		
		    try {
		        // 데이터베이스 연결
		        Class.forName("com.mysql.jdbc.Driver");
		        conn = DriverManager.getConnection(url, username, password);
		        
		        // ProductID 매개변수 받기
		        int productID = Integer.parseInt(request.getParameter("ProductID"));
		        
		        // ProductID에 해당하는 제품 정보 가져오기
		        String query = "SELECT * FROM product WHERE ProductID=?";
		        stmt = conn.prepareStatement(query);
		        stmt.setInt(1, productID);
		        rs = stmt.executeQuery();
		
		        if (rs.next()) {
		            // 제품 정보 표시
		%>
        
        
        
        <div class="frame-7">
          <div class="frame-10">
          	<img src="<%= rs.getString("ImgURL") %>" alt="Product Thumbnail Image">
          </div>
          <div class="rectangle"></div>
          <div class="text-wrapper-14"><%= rs.getString("PrdName") %></div>
          <div class="text-wrapper-13"><%= rs.getString("BrandName") %></div>
          <div class="text-wrapper-12">최저가</div>
          <div class="text-wrapper-11"><%= rs.getInt("Price") %></div>
          <div class="frame-9">
            <img class="img" src="img/icon-heart-2.png" />
            <div class="text-wrapper-10">관심상품</div>
          </div>
          <div class="frame-8"><div class="text-wrapper-9">문의하기</div></div>
        </div>
        
        
        
        
        <%
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        // 리소스 해제
		        if (rs != null) {
		            try {
		                rs.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
		        }
		        if (stmt != null) {
		            try {
		                stmt.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
		        }
		        if (conn != null) {
		            try {
		                conn.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
		        }
		    }
		%>
        <div class="text-wrapper-17">추천 제품</div>
        <div class="frame-15">
          <div class="frame-16">
            <div class="view">
              <div class="frame-17">
                <div class="img-2"></div>
                <div class="TXT">
                  <div class="text-wrapper-18">울트라TV댕좋은 TV</div>
                  <div class="text-wrapper-19">알쥐</div>
                  <div class="text-wrapper-20">80,000원</div>
                </div>
              </div>
            </div>
            <div class="view">
              <div class="frame-17">
                <div class="img-3"></div>
                <div class="TXT">
                  <div class="text-wrapper-18">울트라TV댕좋은 TV</div>
                  <div class="text-wrapper-19">알쥐</div>
                  <div class="text-wrapper-20">80,000원</div>
                </div>
              </div>
            </div>
            <div class="view">
              <div class="frame-17">
                <div class="img-4"></div>
                <div class="TXT">
                  <div class="text-wrapper-18">울트라TV댕좋은 TV</div>
                  <div class="text-wrapper-19">알쥐</div>
                  <div class="text-wrapper-20">80,000원</div>
                </div>
              </div>
            </div>
            <div class="view">
              <div class="frame-17">
                <div class="img-5"></div>
                <div class="TXT">
                  <div class="text-wrapper-18">울트라TV댕좋은 TV</div>
                  <div class="text-wrapper-19">알쥐</div>
                  <div class="text-wrapper-20">80,000원</div>
                </div>
              </div>
            </div>
            <div class="view">
              <div class="frame-17">
                <div class="img-6"></div>
                <div class="TXT">
                  <div class="text-wrapper-18">울트라TV댕좋은 TV</div>
                  <div class="text-wrapper-19">알쥐</div>
                  <div class="text-wrapper-20">80,000원</div>
                </div>
              </div>
            </div>
          </div>
          <div class="link"><div class="text-wrapper-21">더보기</div></div>
        </div>
        <footer class="footer">
          <div class="overlap-group">
            <div class="frame-18">
              <div class="frame-19">
                <div class="text-wrapper-22">회사소개</div>
                <div class="frame-20">
                  <div class="text-wrapper-23">인재채용</div>
                  <div class="text-wrapper-23">제휴제안</div>
                  <div class="text-wrapper-24">이용약관</div>
                  <div class="text-wrapper-25">개인정보처리방침</div>
                </div>
              </div>
            </div>
          </div>
          <div class="overlap-2">
            <div class="frame-21">
              <div class="text-wrapper-26">(T)또써조</div>
              <div class="overlap-group-2">
                <p class="p">또써조 주식회사 · 대표 또써조</p>
                <p class="element">
                  <span class="span">사업자등록번호 : 1111-111-1111 </span>
                  <span class="text-wrapper-27">사업자정보확인</span>
                </p>
                <p class="text-wrapper-28">짜장면 배달은 여기로 : 경기도 안양시 동안구 임곡로 29</p>
                <p class="text-wrapper-29">사업장소재지 : 경기도 안양시 동안구 임곡로 29</p>
              </div>
              <div class="text-wrapper-30">어쩌구저쩌구이거걍아무말</div>
              <p class="text-wrapper-31">
                정호일 교수님!!@@안녕하세여?ㅎㅎ 이뿌게 봐주세염ㅎㅎ어느덧 겨울이 끝나고 따뜻한 봄이 왔습니다 우리의
                학점에도 봄이 피었으면 좋겠습니다. 이 편지는 영국 어딘가에서 시작되어...오늘안에 10명한테 어쩌구 저쩌구
              </p>
              <div class="link-2">서비스가입 사실 확인</div>
              <p class="text-wrapper-32">
                이나넣죠?어떠세요딱히아무도 안 읽을것같은데콧구멍과개똥벌레음대림대학교하치킨마요알바가기싫다!아뇨
                주말에 가기싫어서알바하세요?힘들겠네요..다행입니다?저도그래요사실저알바하는 거 보셔야댐
                쉬시없음누구세요?주문취소 가능항긴해요 알바생권한으로단무지우리 그런 거 안 팔아요 걍 시간만 팔아요 음식
                없음 까비
              </p>
              <div class="text-wrapper-33">직원소개</div>
              <div class="frame-22">
                <div class="list-item-link">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
              </div>
              <div class="text-wrapper-34">학번</div>
              <div class="frame-23">
                <div class="list-item-link">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
                <div class="list-item-link-2">신호진</div>
              </div>
            </div>
            <div class="div-customer-service">
              <div class="strong">고객센터</div>
              <div class="strong-link">8282-8282</div>
              <div class="descriptions-term">
                <p class="element-2">
                  운영시간 평일 10:00 - 18:00 (토∙일, 공휴일 휴무)<br />점심시간 평일 13:00 - 14:00
                </p>
              </div>
              <div class="link-3"><div class="text-wrapper-35">자주 묻는 질문</div></div>
            </div>
            <div class="text-wrapper-36">© DDOSEOJYO</div>
          </div>
        </footer>
      </div>
    </div>
	
</body>
</html>