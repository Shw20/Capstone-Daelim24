<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="resources/css/SignStyle.css" />
	<link rel="stylesheet" href="resources/css/footerStyle.css">
    <link rel="stylesheet" href="resources/css/order.css" />

	

  </head>
  <header>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Integer IDX = (Integer) session.getAttribute("IDX");
        String UserID = (String) session.getAttribute("UserID");
        String Name = (String) session.getAttribute("Name");
        String PH = (String) session.getAttribute("PH");
        String productName = (String) session.getAttribute("productName");
        String brandName = (String) session.getAttribute("brandName");
        int price = (int) session.getAttribute("price");
        Integer postUserIDX = (Integer) session.getAttribute("postUserIDX");



        if (Name == null) { %>
            <jsp:include page="resources/layout/nav.jsp"></jsp:include>
        <% } else {
            if (Name.equals("관리자")) { %>
                <jsp:include page="resources/layout/adminNav.jsp"></jsp:include>
            <% } else { %>
                <jsp:include page="resources/layout/userNav.jsp"></jsp:include>
            <% }
        } %>
</header>
  <body style="margin-top: 200px;">
  <form name="Order" action="orderAction.jsp" method="post">
    <div class="order">
      <div class="div">

        <div class="text-wrapper-23">배송/결제</div>
        <div class="element-wrapper">
          <div class="element-3">
            <div class="img"></div>
            <div class="TXT">
              <div class="frame-13">
                <div class="text-wrapper-24"><%= productName %></div> <%-- 상품 이름 --%>
                <div class="frame-14"><div class="text-wrapper-25"><%= brandName %></div></div> <%-- 브랜드명 --%>
<%--               	<div class="frame-14"><div class="text-wrapper-25"><%= postUserIDX %></div></div> seller --%>
              </div>
            </div>
          </div>
        </div>
        <div class="element-4">
          <div class="element-5">
		    <div class="frame-15">
	          <div class="rectangle"></div>
	          <img class="polygon" src="img/image.svg" />
	          <!-- 드롭다운 요소 추가 -->
	          <select class="dropdown text-wrapper-26" id="deliveryRequest" name="deliveryRequest">
	            <option value="문 앞에 놓아주세요">문 앞에 놓아주세요</option>
	            <option value="경비실에 놓아주세요">경비실에 놓아주세요</option>
	            <option value="기타">기타</option>
	          </select>
	       </div>
	       <div class="text-wrapper-27">배송 요청 사항</div>
	     </div>
          <div class="rectangle-2"></div>
          
          
          
          
          
<!--           <div class="element-6"> -->
<!--             <button class="btn"><div class="text-wrapper-28">배송 3000원</div></button> -->
            
<!--             <div class="text-wrapper-29">필수 선택 사항입니다</div> -->
<!--             <div class="text-wrapper-30">배송 방법</div> -->
<!--           </div> -->
			<div class="element-6">
			    <label class="checkbox-wrapper">
			        <input type="checkbox" class="text-wrapper-28" id="deliveryCheckbox" value ="배송 3,000원"name="deliveryCheckbox" onchange="updateDeliveryFee()">배송 3,000원
			    </label>
			    <div class="text-wrapper-29">필수 선택 사항입니다</div>
			    <div class="text-wrapper-30">배송 방법</div>
			</div>

          
          <div class="rectangle-3"></div>
          <div class="element-7">
            <div class="frame-16">
              <div class="frame-17">
                <div class="text-wrapper-31"><input type="text" name="address" placeholder="배송 주소를 입력하세요"></div> <%-- 배송 주소 입력란 --%>
                                <div class="text-wrapper-32">배송 주소</div>
              </div>
              <div class="frame-18">
                <div class="text-wrapper-31"><%= PH %></div> <%-- 사용자 전화번호 --%>
                <div class="text-wrapper-32">연락처</div>
              </div>
              <div class="frame-19">
                <div class="text-wrapper-31"><%= Name %></div> <%-- 사용자 이름 --%>
                <div class="text-wrapper-32">받는 분</div>
              </div>
            </div>
            <div class="text-wrapper-33">배송주소</div>
          </div>
        </div>
        <div class="element-8">
		    <div class="element-9">
		      <div class="frame-20">
		      	<div class="rectangle"></div>
		        <img class="polygon" src="img/polygon-1.svg" />
		        <!-- 드롭다운 요소 추가 -->
		        <select class="dropdown text-wrapper-26" id="paymentMethod" name="paymentMethod">
		          <option value="무통장 입금">무통장 입금</option>
		          <option value="계좌 이체">계좌 이체</option>
		        </select>
		      </div>
		      <div class="text-wrapper-33">결제 방법</div>
		    </div>
	    </div>
        <div class="element-10">
		    <div class="element-11">
		        <div class="frame-21">
		            <div class="frame-22">
		                <div class="text-wrapper-34"><%= price + 3000 %>원</div>
						<div class="text-wrapper-35">최종 결제 금액	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= price + 3000 %>원</div>
		            </div>
		            <div class="rectangle-4"></div>
		            <div class="frame-23">
		                <div class="text-wrapper-36">3,000원</div>
		                <div class="text-wrapper-32">배송비</div>
		            </div>
		            <div class="frame-24">
		                <div class="text-wrapper-37"><%= price %>원</div>
		                <div class="text-wrapper-32">즉시 구매가</div>
		            </div>
		        </div>
		        <div class="text-wrapper-38">최종 주문 금액</div>
		    </div>
		</div>
        <div class="frame-25"><button type="submit" id="orderButton" class="text-wrapper-39" style="cursor: pointer;">주문하기</button></div>
      </div>

    </div>
    </form>
    
    <script>
    function validateForm() {
        var deliveryCheckbox = document.getElementById("deliveryCheckbox");
        var address = document.getElementsByName("address")[0].value;
        
        if (!deliveryCheckbox.checked || address === "") {
            alert("입력되지 않은 값이 있습니다.");
            return false;
        }
        return true;
    }

	function orderSuccessPopup() {
	    alert("주문이 완료되었습니다.");
	    
	}
	
	document.getElementById("orderButton").addEventListener("click", function(event) {
	    if (!validateForm()) {
	        event.preventDefault(); // 폼 제출 방지
	    } else {
	        orderSuccessPopup(); // 주문 완료 팝업 표시
	    }
	});
	</script>
  </body>
</html>

