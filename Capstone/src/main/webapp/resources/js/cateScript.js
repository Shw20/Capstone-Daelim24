/**
 * 
 */

 
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
    let selectedBrand;
    

	resetBtn.addEventListener('click', function(event){
	
	    // 선택된 카테고리를 숨깁니다.
	    category2.classList.add('hidden');
	    category3.classList.add('hidden');
	    category4.classList.add('hidden');
	
	    // 선택된 제품 타입과 옵션, 브랜드를 초기화합니다.
	    selectedTypeCI = null;
	    selectedOption = null;
	    selectedBrand = null;
	});

    productTypeList.addEventListener('click', function(event) {
      selectedType = event.target.closest('li').dataset.brand;


      if (productTypeList) {
      category2.classList.remove('hidden');
      category3.classList.add('hidden');
      category4.classList.add('hidden');

        if (selectedType === 'type1') {
          productTypeListCI.innerHTML = '<li data-product="Laptop"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">노트북</p></div></li>'+
          '<li data-product="Laptop2"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">주변기기</p></div></li>';
        }
        
        if(selectedType === 'type2'){
          productTypeListCI.innerHTML = '<li data-product="desktop"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">컴퓨터</p></div></li>'+
          '<li data-product="monitor"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">모니터</p></div></li>';
        }
        
        if(selectedType === 'type3'){
          productTypeListCI.innerHTML = '<li data-product="smartphone"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">중고폰</p></div></li>';
        }

        if(selectedType === 'type4'){
          productTypeListCI.innerHTML = '<li data-product="tabletPC"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">태블릿</p></div></li>'+
          '<li data-product="wearable"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">웨어러블</p></div></li>';
        }

        if(selectedType === 'type5'){ 
          productTypeListCI.innerHTML = '<li data-product="TV"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">TV</p></div></li>'+
          '<li data-product="beamp"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">빔프로젝터</p></div></li>';
        }

        if(selectedType === 'type6'){
          productTypeListCI.innerHTML = '<li data-product="refrigerator"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">냉장고</p></div></li>'+
          '<li data-product="washing"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">세탁기</p></div></li>'+
          '<li data-product="dryer"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">건조기</p></div></li>';
        }

        if(selectedType === 'type7'){
          productTypeListCI.innerHTML = '<li data-product="air"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">공기청정기</p></div></li>'+
          '<li data-product="dehumidifier"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">제습기</p></div></li>'+
          '<li data-product="humidfier"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">가습기</p></div></li>';
        }

        if(selectedType === 'type8'){
          productTypeListCI.innerHTML = '<li data-product="oven"><div class="productTypeListCIWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">오븐</p></div></li>'+
          '<li data-product="dishwasher"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">식기세척기</p></div></li>'+
          '<li data-product="water"><div class="productTypeListCIWrap"style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="productTypeListCI">정수기</p></div></li>';
        }
      }
    });

    productTypeListCI.addEventListener('click', function(event) {
      selectedTypeCI = event.target.closest('li').dataset.product;

      if (productTypeListCI) {
        category3.classList.remove('hidden');
        category4.classList.add('hidden');

        if(selectedTypeCI === 'Laptop'){
          optionList.innerHTML = '<li data-type="home-office"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">가정용</p></div></li>'+
          '<li data-type="gamming"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">게이밍</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>';
        }

        if(selectedTypeCI === 'Laptop2'){
          optionList.innerHTML = '<li data-type="mouse"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">마우스</p></div></li>'+
          '<li data-type="keyboard"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">키보드</p></div></li>'+
          '<li data-type="headset"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">헤드셋</p></div></li>'+
          '<li data-type="microphone"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">마이크</p></div></li>'
        }

        // if(selectedTypeCI === 'desktop'){ 바로 브랜드 선택 또는 결과창으로 연결되게
        //   optionList.innerHTML = '<li data-type="main"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName"></p></div></li><li data-type="keyboard"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">키보드</p></div></li><li data-type="headset"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">헤드셋</p></div></li><li data-type="microphone"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">마이크</p></div></li>'
        // }

        if(selectedTypeCI === 'monitor'){
          optionList.innerHTML = '<li data-type="24"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">24인치</p></div></li>'+
          '<li data-type="27"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">27인치</p></div></li>'+
          '<li data-type="32"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">32인치</p></div></li>'+
          '<li data-type="32up"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">34인치 이상</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'smartphone'){ // 바로 브랜드
          category3.classList.add('hidden');
          category4.classList.remove('hidden');
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'
        }

        if(selectedTypeCI === 'tabletPC'){
          optionList.innerHTML = '<li data-type="8"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">8인치</p></div></li><li data-type="10"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">10인치</p></div></li><li data-type="11"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">11인치</p></div></li><li data-type="12"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">12인치 이상</p></div></li><li data-type="tabletall"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'wearable'){
          optionList.innerHTML = '<li data-type="watch"><div class="optionListWrap" style="width: 140px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">스마트 워치 | 밴드</p></div></li>';
        }

        if(selectedTypeCI === 'TV'){
          category4.classList.add('hidden'); // 빔프>TV 넘어갈대 브랜드 뜸
          optionList.innerHTML = '<li data-type="32down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">32인치 이하</p></div></li>'+
          '<li data-type="4050"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">40~50인치</p></div></li>'+
          '<li data-type="5060"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">50~60인치</p></div></li>'+
          '<li data-type="6070"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">60~70인치</p></div></li>'+
          '<li data-type="7080"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">70~80인치</p></div></li>'+
          '<li data-type="80up"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">80인치 이상</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'beamp'){ // 바로 브랜드
          category3.classList.add('hidden');
          category4.classList.remove('hidden');
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="viewsonic"><div class="brandListWrap"><img src="./imgs/viewsonic.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">뷰소닉</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }

        if(selectedTypeCI === 'refrigerator'){
          optionList.innerHTML = '<li data-type="1도어"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">1도어</p></div></li>'+
          '<li data-type="2도어"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">2도어</p></div></li>'+
          '<li data-type="4도어"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">4도어</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'washing'){
          optionList.innerHTML = '<li data-type="drum"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">드럼 세탁기</p></div></li>'+
          '<li data-type="normal"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">일반 세탁기</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'dryer'){
          optionList.innerHTML = '<li data-type="small"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">소형 건조기</p></div></li>'+
          '<li data-type="medium"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">중형 건조기</p></div></li>'+
          '<li data-type="large"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">대형 건조기</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'air'){
          category4.classList.add('hidden'); 
          optionList.innerHTML = '<li data-type="a18down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">18평형 이하</p></div></li>'+
          '<li data-type="a25"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">25평형</p></div></li>'+
          '<li data-type="a27"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">27평형</p></div></li>'+
          '<li data-type="a30"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">30평형</p></div></li>'+
          '<li data-type="a32"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">32평형</p></div></li>'
        }

        if(selectedTypeCI === 'dehumidifier'){
          optionList.innerHTML = '<li data-type="de3down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">3L 이하</p></div></li>'+
          '<li data-type="de4"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">4L</p></div></li>'+
          '<li data-type="de5"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">5L</p></div></li>'+
          '<li data-type="de6"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">6L</p></div></li>'+
          '<li data-type="de7"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">7L 이상</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'humidifier'){
          optionList.innerHTML = '<li data-type="h3down"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">3L 이하</p></div></li>'+
          '<li data-type="h4"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">4L</p></div></li>'+
          '<li data-type="h5"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">5L</p></div></li>'+
          '<li data-type="h6"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">6L</p></div></li>'+
          '<li data-type="h7"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">7L 이상</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'oven'){
          optionList.innerHTML = '<li data-type="20"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">20L</p></div></li>'+
          '<li data-type="21"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">21L</p></div></li>'+
          '<li data-type="22"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">22L</p></div></li>'+
          '<li data-type="23L"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">23L</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'dishwasher'){
          optionList.innerHTML = '<li data-type="builtIn"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">빌트인</p></div></li>'+
          '<li data-type="counterTop"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">카운터탑</p></div></li>'+
          '<li data-type="freeStanding"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">프리스탠딩</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

        if(selectedTypeCI === 'water'){
          optionList.innerHTML = '<li data-type="desk"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">데스크</p></div></li>'+
          '<li data-type="underSink"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">언더싱크</p></div></li>'+
          '<li data-type="all"><div class="optionListWrap" style="width: 100px;text-align: center;justify-content: center;border: 1px solid #f0f0f0;border-radius: 12px;padding: 18px 6px 14px;"><p class="optionListName">상관없음</p></div></li>'
        }

      }
    });

    optionList.addEventListener('click', function(event){
      selectedOption = event.target.closest('li').dataset.type;
//       selectedTypeCI = event.target.closest('li').dataset.product;

      
      if(optionList){
        category4.classList.remove('hidden');

        // 노트북
        if(selectedOption === 'home-office'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'+
          '<li data-type="LENOVO"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'+
          '<li data-type="HP"><div class="brandListWrap"><img src="./imgs/hp.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">HP</p></div></li>'
        }
        if(selectedOption === 'gamming'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li><li data-type="Lenovo"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'+
          '<li data-type="HP"><div class="brandListWrap"><img src="./imgs/hp.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">HP</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'+
          '<li data-type="LENOVO"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'+
          '<li data-type="HP"><div class="brandListWrap"><img src="./imgs/hp.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">HP</p></div></li>'
        }
        // 노트북

        // 주변기기
        if(selectedOption === 'mouse'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="logitech"><div class="brandListWrap"><img src="./imgs/logitech.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">로지텍</p></div></li>'+
          '<li data-type="asus"><div class="brandListWrap"><img src="./imgs/asus.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">ASUS</p></div></li>'+
          '<li data-type="abko"><div class="brandListWrap"><img src="./imgs/abko.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">앱코</p></div></li>'+
          '<li data-type="britz"><div class="brandListWrap"><img src="./imgs/britz.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">브리츠</p></div></li>'
        }
        if(selectedOption === 'keyboard'){
          brandList.innerHTML = '<li data-type="logitech"><div class="brandListWrap"><img src="./imgs/logitech.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">로지텍</p></div></li>'+
          '<li data-type="asus"><div class="brandListWrap"><img src="./imgs/asus.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">ASUS</p></div></li>'+
          '<li data-type="abko"><div class="brandListWrap"><img src="./imgs/abko.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">앱코</p></div></li>'+
          '<li data-type="alphascan"><div class="brandListWrap"><img src="./imgs/alphascan.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">알파스캔</p></div></li>'
        }
        if(selectedOption === 'headset'){
          brandList.innerHTML = '<li data-type="sony"><div class="brandListWrap"><img src="./imgs/sony.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">소니</p></div></li>'+
          '<li data-type="jbl"><div class="brandListWrap"><img src="./imgs/jbl.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">JBL</p></div></li>'+
          '<li data-type="akg"><div class="brandListWrap"><img src="./imgs/akg.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">AKG</p></div></li>'+
          '<li data-type="sennheiser"><div class="brandListWrap"><img src="./imgs/sennheiser.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">젠하이저</p></div></li>'+
          '<li data-type="shure"><div class="brandListWrap"><img src="./imgs/shure.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">슈어</p></div></li>'
        }
        if(selectedOption === 'microphone'){
          brandList.innerHTML = '<li data-type="akg"><div class="brandListWrap"><img src="./imgs/akg.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">AKG</p></div></li>'+
          '<li data-type="sennheiser"><div class="brandListWrap"><img src="./imgs/sennheiser.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">젠하이저</p></div></li>'+
          '<li data-type="abko"><div class="brandListWrap"><img src="./imgs/abko.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">앱코</p></div></li>'+
          '<li data-type="britz"><div class="brandListWrap"><img src="./imgs/britz.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">브리츠</p></div></li>'
        }
        // 주변기기
        
        // 모니터
        if(selectedOption === '24'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="asus"><div class="brandListWrap"><img src="./imgs/asus.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">ASUS</p></div></li>'+
          '<li data-type="viewsonic"><div class="brandListWrap"><img src="./imgs/viewsonic.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">뷰소닉</p></div></li>'
        }
        if(selectedOption === '27'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="asus"><div class="brandListWrap"><img src="./imgs/asus.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">ASUS</p></div></li>'+
          '<li data-type="viewsonic"><div class="brandListWrap"><img src="./imgs/viewsonic.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">뷰소닉</p></div></li>'
        }
        if(selectedOption === '32'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="asus"><div class="brandListWrap"><img src="./imgs/asus.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">ASUS</p></div></li>'+
          '<li data-type="viewsonic"><div class="brandListWrap"><img src="./imgs/viewsonic.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">뷰소닉</p></div></li>'+
          '<li data-type="alphascan"><div class="brandListWrap"><img src="./imgs/alphascan.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">알파스캔</p></div></li>'
        }
        if(selectedOption === '34'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="asus"><div class="brandListWrap"><img src="./imgs/asus.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">ASUS</p></div></li>'+
          '<li data-type="viewsonic"><div class="brandListWrap"><img src="./imgs/viewsonic.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">뷰소닉</p></div></li>'+
          '<li data-type="alphascan"><div class="brandListWrap"><img src="./imgs/alphascan.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">알파스캔</p></div></li>'
        }
        // 모니터

        // 테블릿
        if(selectedOption === '8'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'+
          '<li data-type="LENOVO"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'
        }
        if(selectedOption === '10'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'
        }
        if(selectedOption === '11'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'+
          '<li data-type="LENOVO"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === '12up'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LENOVO"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="APPLE"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1209.svg" alt=""><p class="brandListName">애플</p></div></li>'+
          '<li data-type="LENOVO"><div class="brandListWrap"><img src="./imgs/lenovo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">레노버</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        // 테블릿

        // 웨어러블
        if(selectedOption === 'watch'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'
        }
        // 웨어러블

        // TV
        if(selectedOption === '32down'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'
        }
        if(selectedOption === '4050'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === '5060'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === '6070'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === '7080'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === '80up'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }

        // 냉장고
        if(selectedOption === '1도어'){
          brandList.innerHTML = '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        if(selectedOption === '2도어'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        if(selectedOption === '4도어'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        // 냉장고

        // 세탁기
        if(selectedOption === 'drum'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        if(selectedOption === 'normal'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        // 세탁기

        // 건조기
        if(selectedOption === 'small'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="rinnai"><div class="brandListWrap"><img src="./imgs/rinnai.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">린나이</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        if(selectedOption === 'medium'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        if(selectedOption === 'large'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="rinnai"><div class="brandListWrap"><img src="./imgs/rinnai.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">린나이</p></div></li>'+
          '<li data-type="winia"><div class="brandListWrap"><img src="./imgs/winia.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위니아</p></div></li>'
        }
        // 건조기

        // 공기청정기
        if(selectedOption === 'a18down'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'a25'){
          brandList.innerHTML = '<li data-type="dyson"><div class="brandListWrap"><img src="./imgs/dyson.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">다이슨</p></div></li>'
        }
        if(selectedOption === 'a27'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'
        }
        if(selectedOption === 'a30'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="dyson"><div class="brandListWrap"><img src="./imgs/dyson.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">다이슨</p></div></li>'
        }
        if(selectedOption === 'a32'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'
        }
        // 공기청정기

        // 제습기
        if(selectedOption === 'de3down'){
          brandList.innerHTML = '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'+
          '<li data-type="winix"><div class="brandListWrap"><img src="./imgs/winix.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위닉스</p></div></li>'
        }
        if(selectedOption === 'de4'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'de5'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'
        }
        if(selectedOption === 'de6'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="winix"><div class="brandListWrap"><img src="./imgs/winix.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위닉스</p></div></li>'
        }
        if(selectedOption === 'de7'){
          brandList.innerHTML = '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'+
          '<li data-type="winix"><div class="brandListWrap"><img src="./imgs/winix.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위닉스</p></div></li>'
        }
        // 제습기

        // 가습기
        if(selectedOption === 'h3down'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="duplex"><div class="brandListWrap"><img src="./imgs/duplex.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">듀플렉스</p></div></li>'
        }
        if(selectedOption === 'h4'){
          brandList.innerHTML = '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'+
          '<li data-type="winix"><div class="brandListWrap"><img src="./imgs/winix.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위닉스</p></div></li>'+
          '<li data-type="duplex"><div class="brandListWrap"><img src="./imgs/duplex.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">듀플렉스</p></div></li>'
        }
        if(selectedOption === 'h5'){
          brandList.innerHTML = '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'h6'){
          brandList.innerHTML = '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'
        }
        if(selectedOption === 'h7'){
          brandList.innerHTML = '<li data-type="winix"><div class="brandListWrap"><img src="./imgs/winix.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위닉스</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="xiaomi"><div class="brandListWrap"><img src="./imgs/xiaomi.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">샤오미</p></div></li>'+
          '<li data-type="winix"><div class="brandListWrap"><img src="./imgs/winix.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">위닉스</p></div></li>'+
          '<li data-type="duplex"><div class="brandListWrap"><img src="./imgs/duplex.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">듀플렉스</p></div></li>'
        }
        // 가습기

        // 오븐
        if(selectedOption === '20'){
          brandList.innerHTML = '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'
        }
        if(selectedOption === '21'){
          brandList.innerHTML = ''
        }
        if(selectedOption === '22'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'
        }
        if(selectedOption === '23'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="carrier"><div class="brandListWrap"><img src="./imgs/carrier.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">캐리어</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'
        }
        // 오븐

        // 식기세척기
        if(selectedOption === 'builtIn'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'+
          '<li data-type="sk"><div class="brandListWrap"><img src="./imgs/sk.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">SK매직</p></div></li>'
        }
        if(selectedOption === 'counterTop'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'+
          '<li data-type="sk"><div class="brandListWrap"><img src="./imgs/sk.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">SK매직</p></div></li>'
        }
        if(selectedOption === 'freeStanding'){
          brandList.innerHTML = '<li data-type="sk"><div class="brandListWrap"><img src="./imgs/sk.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">SK매직</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'+
          '<li data-type="sk"><div class="brandListWrap"><img src="./imgs/sk.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">SK매직</p></div></li>'
        }
        // 식기세척기

        // 정수기
        if(selectedOption === 'desk'){
          brandList.innerHTML = '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'+
          '<li data-type="sk"><div class="brandListWrap"><img src="./imgs/sk.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">SK매직</p></div></li>'+
          '<li data-type="picogram"><div class="brandListWrap"><img src="./imgs/picogram.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">피코그램</p></div></li>'
        }
        if(selectedOption === 'underSink'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'
        }
        if(selectedOption === 'all'){
          brandList.innerHTML = '<li data-type="SAMSUNG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1207.svg" alt=""><p class="brandListName">삼성</p></div></li>'+
          '<li data-type="LG"><div class="brandListWrap"><img src="https://d11o63lgw0n6wa.cloudfront.net/images/logo/icon_manufacturer_1208.svg" alt=""><p class="brandListName">LG</p></div></li>'+
          '<li data-type="cuckoo"><div class="brandListWrap"><img src="./imgs/cuckoo.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">쿠쿠</p></div></li>'+
          '<li data-type="sk"><div class="brandListWrap"><img src="./imgs/sk.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">SK매직</p></div></li>'+
          '<li data-type="picogram"><div class="brandListWrap"><img src="./imgs/picogram.png" alt="" style="width: 105px; height: 51px;"><p class="brandListName">피코그램</p></div></li>'
        }
        //정수기

      }
    });


    // @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@색깔 적용 구현하자


brandList.addEventListener('click', function(event) {
      const clickedBrand = event.target.closest('li');
      if (clickedBrand) {
        selectedBrand = clickedBrand.dataset.type;


        if (!selectedBrand) {
          selectedBrand = clickedBrand.closest('li').dataset.type;
        }
      }
      if (selectedBrand && selectedTypeCI && selectedOption) {
    	    // 모든 변수가 존재하는 경우, 해당 페이지로 이동
    	    window.location.href = "cateResult.jsp?selectedBrand=" + selectedBrand + "&selectedTypeCI=" + selectedTypeCI + "&selectedOption=" + selectedOption;
    	} else {
    	    // 모든 변수가 존재하지 않는 경우, 경고창을 띄움
    	    alert("모든 정보를 선택해주세요.");
    	}
    }); 