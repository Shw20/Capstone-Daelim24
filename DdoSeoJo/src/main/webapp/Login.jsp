<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="resources/layout/Header.jsp"%>
<link rel="stylesheet" href="resources/css/LoginStyle.css"/>
</head>
<body>
<form action="LoginDAO.jsp" method="post" onsubmit="return validateForm()">
    <div class="signup">
        <div class="div">
            <div class="div-footer">
                <div class="div-service-area">
                    <div class="div-footer-menu">
                        <div class="div-menu-box">
                            <div class="strong">직원소개</div>
                            <div class="list-item-link">신호진</div>
                            <div class="text-wrapper">윤덕규</div>
                            <div class="list-item-link-2">신희원</div>
                            <div class="list-item-link-3">이승환</div>
                            <div class="list-item-link-4">최진영</div>
                            <div class="list-item-link-5">윤주상</div>
                        </div>
                        <div class="div-menu-box-2">
                            <div class="strong">학번</div>
                            <div class="list-item-link-6">200000000022222999665544477888333222115555222556652222255</div>
                            <div class="list-item-link-7">201930101</div>
                            <div class="list-item-link-2">20XX303</div>
                            <div class="list-item-link-8">2222222222</div>
                            <div class="list-item-link-9">20XX30337</div>
                            <div class="list-item-link-10">2222222222</div>
                        </div>
                    </div>
                    <div class="div-customer-service">
                        <div class="strong">고객센터</div>
                        <div class="strong-link">8282-8282</div>
                        <div class="descriptions-term">
                            <p class="element">운영시간 평일 10:00 - 18:00 (토∙일, 공휴일 휴무)<br />점심시간 평일 13:00 - 14:00</p>
                        </div>
                        <div class="link">
                            <div class="text-wrapper-2">자주 묻는 질문</div>
                        </div>
                    </div>
                </div>
                <div class="text-wrapper-3">어쩌구저쩌구이거걍아무말</div>
                <p class="p"> 정호일 교수님!!@@안녕하세여?ㅎㅎ 이뿌게 봐주세염ㅎㅎ어느덧 겨울이 끝나고 따뜻한 봄이 왔습니다 우리의 학점에도 봄이 피었으면 좋겠습니다. 이 편지는 영국 어딘가에서 시작되어...오늘안에 10명한테 어쩌구 저쩌구 </p>
                <div class="link-2">서비스가입 사실 확인</div>
                <div class="p-notice">
                    <p class="text-wrapper-4"> 이나넣죠?어떠세요딱히아무도 안 읽을것같은데콧구멍과개똥벌레음대림대학교하치킨마요알바가기싫다!아뇨 주말에 가기싫어서알바하세요?힘들겠네요..다행입니다?저도그래요사실저알바하는 거 보셔야댐 쉬시없음누구세요?주문취소 가능항긴해요 알바생권한으로단무지우리 그런 거 안 팔아요 걍 시간만 팔아요 음식 없음 까비 </p>
                </div>
                <div class="text-wrapper-5">© DDOSEOJYO</div>
                <div class="list-item-link-11">회사소개</div>
                <div class="list-item-link-12">인재채용</div>
                <div class="list-item-link-13">제휴제안</div>
                <div class="list-item-link-14">이용약관</div>
                <div class="list-item-link-15">개인정보처리방침</div>
                <div class="descriptions-term-2">
                    <div class="overlap-group">
                        <p class="text-wrapper-6">또써조 주식회사|대표 또써조</p>
                        <p class="element-2">
                            <span class="span">|사업자등록번호 : 1111-111-1111 </span>
                            <span class="text-wrapper-7">사업자정보확인</span>
                        </p>
                        <p class="text-wrapper-8">사업장소재지 : 경기도 안양시 동안구 임곡로 29</p>
                    </div>
                    <p class="text-wrapper-9">짜장면 배달은 여기로 : 경기도 안양시 동안구 임곡로 29</p>
                </div>
            </div>
            <div class="overlap-group">
                <p class="text-wrapper-6">또써조 주식회사 · 대표 또써조</p>
                <p class="element-2">
                    <span class="span">사업자등록번호 : 1111-111-1111 </span>
                    <span class="text-wrapper-7">사업자정보확인</span>
                </p>
                <p class="text-wrapper-8">사업장소재지 : 경기도 안양시 동안구 임곡로 29</p>
            </div>
            <p class="text-wrapper-9">짜장면 배달은 여기로 : 경기도 안양시 동안구 임곡로 29</p>
            <div class="overlap">
                <div class="overlap-2">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">아이디를 입력해주세요</div> -->
                    <div class="text-wrapper-10"><input type="text" id="userID" name="userID" placeholder="아이디" autocomplete="off" class="input-id" required ></div>
                </div>
                <div class="overlap-3" style="position: relative; display: inline-block;">
				    <div class="text-wrapper-12" style="background-color:transparent; cursor: pointer;">로그인</div>
				    <input type="submit" value="" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;">
				</div>

                <div class="overlap-4">
                    <p class="div-2">
                        <span class="text-wrapper-13">계정이 없으신가요?</span>
                        <span class="text-wrapper-14">회원가입 하러가기</span> &nbsp;
                    </p>
                </div>
                <div class="overlap-5">
                    <!-- <div class="rectangle"></div> -->
                    <!-- <div class="text-wrapper-10">비밀번호를 입력해주세요</div> -->
                    <div class="textwrapper-10"><input type="password" id="password" name="password" placeholder="비밀번호 (영문+숫자 8자 이상)" autocomplete="off" maxlength="16" class="input-pwd"required></div>
                </div>
                <div class="text-wrapper-16" style="cursor: pointer;" onclick="window.open('Main.jsp');">로그인 없이 사이트 둘러보기</div>
            </div>
            <div class="text-wrapper-17" style="cursor: pointer;">로그인</div>
</form>  <!-- 회원가입 버튼 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->

            <div class="group">
                <div class="overlap-11">
                    <div class="group-2">
                        <div class="overlap-12">
                            <div class="text-wrapper-18" style="cursor: pointer;" onclick="window.location.href = 'Main.jsp';">DDOSSEOJYO</div>
                            <div class="search-container">
							    <div class="rectangle-2">
							        <input type="search" name="keyword" id="search" placeholder="Search" />
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
                                    <div class="text-wrapper-20" style="cursor: pointer;" onclick="window.location.href = 'Signup.jsp';">회원가입</div>
                                    <!-- <div class="text-wrapper-20">회원가입</div> -->
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
                <!-- <img class="vector" src="img/vector.svg" alt="vector" />
                <img class="icon-menu" src="img/icon-menu.png" alt="icon-menu"/>
                <img class="icon-heart" src="img/icon-heart.png" alt="icon-heart"/>
                <img class="icon-profile-circled" src="img/icon-profile-circled.png" alt="icon-profile-circled"/> -->
            </div>
        </div>
    </div>
</body>
</html>