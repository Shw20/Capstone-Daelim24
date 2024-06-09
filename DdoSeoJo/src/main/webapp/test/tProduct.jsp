<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 선택</title>
<link rel="stylesheet" href="tProduct.css">
<link rel="stylesheet" href="resources/css/SignStyle.css">
    <link rel="stylesheet" href="resources/css/Search.css">


</head>
<body style="background-color: #E5E5E5; margin-top: 50px;">
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
  <section class="categorySection">
    <header class="categorySectionHeader">
      <h1 style="text-align: center;">구매 할 상품의<br>정보를 선택해 주세요</h1>
    </header>
    <div class="categoryReset" id ="resetBtn">
        선택사항 초기화
        <img src="https://www.mintit.co.kr/assets/images/icon/icon-price-check-reset.png" alt width="24px">
    </div>
    <div id="category1">
      <h3>종류</h3>
      <ul class="productTypeList" id="productTypeList">
          <li data-brand="type1">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/dev-open/shop_category/icon/6b2ee078-7d26-4f94-b329-e965357c7d98.png" alt="노">
                  <p class="productTypeListName">노트북 | 주변기기</p>
              </div>
          </li>     
          <li data-brand="type2">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/8dbbc0ce-160a-4458-9c98-366debb209c0.png" alt="">
                  <p class="productTypeListName">컴퓨터 | 모니터</p>
              </div>
          </li>
          <li data-brand="type3">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/d6f5a4f4-2cf0-422f-9505-3385d3294e29.png" alt="">
                  <p class="productTypeListName">스마트폰</p>
              </div>
          </li>            
          <li data-brand="type4">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/704ab886-a4ac-4199-bb4a-66c53227c404.png" alt="">
                  <p class="productTypeListName">태블릿 | 웨어러블</p>
              </div>
          </li>           
          <li data-brand="type5">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/461fcd9f-4f58-4874-a2c6-8e03eb594275.png" alt="">
                  <p class="productTypeListName">TV | 영상</p>
              </div>   
          </li>           
          <li data-brand="type6">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/d97cc3aa-63b7-45a6-88d4-6f90fecc3388.png" alt="">
                  <p class="productTypeListName">냉장고 | 세탁기 | 건조기</p>    
              </div>  
          </li>            
          <li data-brand="type7">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/cc1e1346-ee31-43ed-b966-78be62808253.png" alt="">
                  <p class="productTypeListName">계절가전</p>
              </div>          
          </li>          
          <li data-brand="type8">
              <div class="productTypeListWrap">
                  <img src="https://kr.object.ncloudstorage.com/prod-open/shop_category/icon/3d8a49ce-4853-4939-81c4-06a781fdc8c1.png" alt="">
                  <p class="productTypeListName">주방 | 생활가전</p>
              </div>
          </li>
      </ul>
    </div>
    
    <div id="category2" class="hidden">
      <h3>분류</h3>
        <ul class="productTypeListCI" id="productTypeListCI">

        </ul>
    </div>

    <div id="category3" class="hidden">
      <h3>옵션</h3>
      <ul class="optionList" id="optionList">
        
      </ul>
    </div>

    <div id="category4" class="hidden">
      <h3>브랜드</h3>
      <ul class="brandList" id="brandList">
        <li data-type="'SAMSUNG'">
          <div class="brandListWrap">
            <img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt="">
            <p class="brandListName">삼성</p>
          </div>
        </li>
        <li data-type="'LG'">
          <div class="brandListWrap">
            <img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt="">
            <p class="brandListName">LG</p>
          </div>
        </li>
        <li data-type="'APPLE'">
          <div class="brandListWrap">
            <img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt="">
            <p class="brandListName">애플</p>
          </div>
        </li>
        <li data-type="*">
          <div class="brandListWrap">
            <img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt="">
            <p class="brandListName">상관없음</p>
          </div>
        </li>
      </ul>
    </div>
  </section>
  
  <script>
    const productTypeList = document.getElementById('productTypeList');
    const productTypeListCI = document.getElementById('productTypeListCI');
    const optionList = document.getElementById('optionList');
    const brandList = document.getElementById('brandList');
    const category2 = document.getElementById('category2');
    const category3 = document.getElementById('category3');
    const category4 = document.getElementById('category4');
    const resetBtn = document.getElementById('resetBtn');

    let selectedType;
    let selectedTypeCI;
    let selectedOption;

    resetBtn.addEventListener('click', function(event){
      category2.classList.add('hidden');
      category3.classList.add('hidden');
      category4.classList.add('hidden');
    });

    productTypeList.addEventListener('click', function(event) {
      selectedType = event.target.closest('li').dataset.brand;

      if (productTypeList) {
      category2.classList.remove('hidden');
      category3.classList.add('hidden');
      category4.classList.add('hidden');

        if (selectedType === 'type1') {
          productTypeListCI.innerHTML = '<li data-product="Laptop"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">노트북</p></div></li><li data-product="Laptop2"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">주변기기</p></div></li>';
        }
        
        if(selectedType === 'type2'){
          productTypeListCI.innerHTML = '<li data-product="desktop"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">컴퓨터</p></div></li><li data-product="monitor"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">모니터</p></div></li>';
        }
        
        if(selectedType === 'type3'){
          productTypeListCI.innerHTML = '<li data-product="smartphone"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">중고폰</p></div></li>';
        }

        if(selectedType === 'type4'){
          productTypeListCI.innerHTML = '<li data-product="tabletPC"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">태블릿</p></div></li><li data-product="wearable"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">웨어러블</p></div></li>';
        }

        if(selectedType === 'type5'){ 
          productTypeListCI.innerHTML = '<li data-product="TV"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">TV</p></div></li><li data-product="beamp"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">빔프로젝터</p></div></li>';
        }

        if(selectedType === 'type6'){
          productTypeListCI.innerHTML = '<li data-product="refrigerator"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">냉장고</p></div></li><li data-product="washing"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">세탁기</p></div></li><li data-product="dryer"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">건조기</p></div></li>';
        }

        if(selectedType === 'type7'){
          productTypeListCI.innerHTML = '<li data-product="air"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">공기청정기</p></div></li><li data-product="dehumidifier"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">제습기</p></div></li><li data-product="humidfier"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">가습기</p></div></li>';
        }

        if(selectedType === 'type8'){
          productTypeListCI.innerHTML = '<li data-product="oven"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">오븐</p></div></li><li data-product="dishwasher"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">식기세척기</p></div></li><li data-product="water"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">정수기</p></div></li>';
        }
      }
    });

    productTypeListCI.addEventListener('click', function(event) {
      selectedTypeCI = event.target.closest('li').dataset.product;

      if (productTypeListCI) {
        category3.classList.remove('hidden');

        if(selectedTypeCI === 'Laptop'){
          optionList.innerHTML = '<li data-type="home-office"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">가정용</p></div></li><li data-type="gaming"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">게이밍</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>';
        }

        if(selectedTypeCI === 'Laptop2'){
          optionList.innerHTML = '<li data-type="mouse"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">마우스</p></div></li><li data-type="keyboard"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">키보드</p></div></li><li data-type="headset"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">헤드셋</p></div></li><li data-type="microphone"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">마이크</p></div></li>'
        }

        // if(selectedTypeCI === 'desktop'){ 바로 브랜드 선택 또는 결과창으로 연결되게
        //   optionList.innerHTML = '<li data-type="main"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName"></p></div></li><li data-type="keyboard"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">키보드</p></div></li><li data-type="headset"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">헤드셋</p></div></li><li data-type="microphone"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">마이크</p></div></li>'
        // }

        if(selectedTypeCI === 'monitor'){
          optionList.innerHTML = '<li data-type="24"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">24인치</p></div></li><li data-type="27"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">27인치</p></div></li><li data-type="32"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">32인치</p></div></li><li data-type="32up"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">34인치 이상</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'smartphone'){ // 바로 브랜드
          category3.classList.add('hidden');
          category4.classList.remove('hidden');
          brandList.innerHTML = ''
        }

        if(selectedTypeCI === 'tabletPC'){
          optionList.innerHTML = '<li data-type="8"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">8인치</p></div></li><li data-type="10"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">10인치</p></div></li><li data-type="11"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">11인치</p></div></li><li data-type="12"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">12인치 이상</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'wearable'){
          optionList.innerHTML = '<li data-type="watch"><div class="optionListWrap" style="width: 140px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">스마트 워치 | 밴드</p></div></li>';
        }

        if(selectedTypeCI === 'TV'){
          category4.classList.add('hidden'); // 빔프>TV 넘어갈대 브랜드 뜸
          optionList.innerHTML = '<li data-type="32down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">32인치 이하</p></div></li><li data-type="4050"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">40~50인치</p></div></li><li data-type="5060"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">50~60인치</p></div></li><li data-type="7080"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">70~80인치</p></div></li><li data-type="80up"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">80인치 이상</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'beamp'){ // 바로 브랜드
          category3.classList.add('hidden');
          category4.classList.remove('hidden');
          brandList.innerHTML = ''
        }

        if(selectedTypeCI === 'refrigerator'){
          optionList.innerHTML = '<li data-type="1"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">1도어</p></div></li><li data-type="2"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">2도어</p></div></li><li data-type="4"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">4도어</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'washing'){
          optionList.innerHTML = '<li data-type="drum"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">드럼 세탁기</p></div></li><li data-type="normal"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">일반 세탁기</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'dryer'){
          optionList.innerHTML = '<li data-type="small"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">소형 건조기</p></div></li><li data-type="medium"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">중형 건조기</p></div></li><li data-type="large"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">대형 건조기</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }
        
        if(selectedTypeCI === 'dryer'){
          optionList.innerHTML = '<li data-type="small"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">소형 건조기</p></div></li><li data-type="medium"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">중형 건조기</p></div></li><li data-type="large"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">대형 건조기</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'air'){
          category4.classList.add('hidden'); 
          optionList.innerHTML = '<li data-type="18down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">18평형 이하</p></div></li><li data-type="25"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">25평형</p></div></li><li data-type="27"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">27평형</p></div></li><li data-type="30"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">30평형</p></div></li><li data-type="32"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">32평형</p></div></li>'
        }

        if(selectedTypeCI === 'dehumidifier'){
          optionList.innerHTML = '<li data-type="3down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">3L 이하</p></div></li><li data-type="4"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">4L</p></div></li><li data-type="5"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">5L</p></div></li><li data-type="6"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">6L</p></div></li><li data-type="7"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">7L 이상</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'humidifier'){
          optionList.innerHTML = '<li data-type="3down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">3L 이하</p></div></li><li data-type="4"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">4L</p></div></li><li data-type="5"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">5L</p></div></li><li data-type="6"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">6L</p></div></li><li data-type="7"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">7L 이상</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'oven'){
          optionList.innerHTML = '<li data-type="20"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">20L</p></div></li><li data-type="21"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">21L</p></div></li><li data-type="22"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">22L</p></div></li><li data-type="23L"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">23L</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'dishwasher'){
          optionList.innerHTML = '<li data-type="builtin"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">빌트인</p></div></li><li data-type="counterTop"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">카운터탑</p></div></li><li data-type="freeStanding"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">프리스탠딩</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'water'){
          optionList.innerHTML = '<li data-type="desk"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">데스크</p></div></li><li data-type="underSink"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">언더싱크</p></div></li><li data-type="*"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #c3c3c3;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

      }
    });

    optionList.addEventListener('click', function(event){
      selectedOption = event.target.closest('li').dataset.type;
      if(optionList){
        category4.classList.remove('hidden');
      }
    });

    brandList.addEventListener('click', function(event) {
      let selectedBrand;
      const clickedElement = event.target.closest('li');
      if (clickedElement) {
        selectedBrand = clickedElement.dataset.type;
        if (!selectedBrand) {
          selectedBrand = clickedElement.closest('li').dataset.type;
        }
      }
      if (selectedBrand) {
        alert("SELECT *" + " FROM TABLE WHERE brand=" + selectedBrand + " AND type='" + selectedTypeCI +"' AND option='" + selectedOption + "'");
      }
    });
  </script>
  
</body>
</html>