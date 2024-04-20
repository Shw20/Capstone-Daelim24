<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 선택</title>
<link rel="stylesheet" href="./resources/css/cateChoiceStyle.css">

</head>
<body>
  <section class="categorySection">
    <header class="categorySectionHeader">
      <h1>구매 할 상품의<br>정보를 선택해 주세요</h1>
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
        
      </ul>
    </div>
  </section>
  
<!--  choiceScript.js로 분리 -->
  <script src="./resources/js/cateScript.js"></script>

</body>
</html>