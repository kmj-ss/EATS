<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
		rel="stylesheet">
	<link rel="stylesheet" href="../css/user/storeDetail/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="../css/user/storeDetail/storeDetailCss.css">
	<script src="/js/storeInfo/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
	$(document).ready(function(){
		/* 초기화 */ 
		$('.tab-contents .tab-panel').eq(0).show(); // 첫번째 탭 활성화
		tabInit();

		// 이미지 스와이프
	    var swiperStore = new Swiper(".swp-store", {
	      navigation: {
	        nextEl: ".swiper-button-next",
	        prevEl: ".swiper-button-prev",
	      },
	    });

		// 공지사항 스와이프
		var swiperNoti = new Swiper(".swp-noti", {
			spaceBetween: 20,
	        pagination: {
	          el: ".swiper-pagination",
	        },
	    });

		// 아코디언
		$('.acco-head .btn-acco').on('click', function(e){
			e.preventDefault();

			if ($(this).hasClass('on')) {
				$(this).removeClass('on');
				$(this).closest('.acco-wrap').find('.acco-body').stop().slideUp(150);
			} else {
				$(this).addClass('on');
				$(this).closest('.acco-wrap').find('.acco-body').stop().slideDown(150);
			}
		});

		// 메뉴 탭
		$('.tab-list li').on('click', function(e){
			e.preventDefault();
			var idx;

			if (!$(this).hasClass('on')){
				$('.tab-list li').removeClass('on');
				$(this).addClass('on');
				idx = $(this).index();
				$('.tab-contents .tab-panel').hide();
				$('.tab-contents .tab-panel').eq(idx).show();

				tabInit();	// 다른 탭 눌렀다가 돌아왔을 때 더보기가 이미 되어있는 상태를 원하면 삭제해도 됨.
			}
		})

		// 메뉴 더보기 클릭
		$('.btn-menu-more').on('click',function(){
			$(this).siblings('.menu-list').find('li').css('display','flex');
			$(this).hide();
		})

		// 탭 초기화 함수
		function tabInit() {
			$('.tab-contents .tab-panel .menu-list').each(function(){
				if ($(this).find('li').length > 5){
					$(this).siblings('.btn-menu-more').show();
		
					$(this).find('li:gt(4)').hide();
				}
			});
		}
	})
	</script>
<title></title>
</head>
<body>
	<div class="wrapper">
		<!-- header (s) -->
		<header>
			<div class="inner">
				<h1 class="logo">
					<a href="#" title="홈으로 가기">
						<img src="../img/user/storeInfo/logo.png" alt="eat's">
					</a>
				</h1>
				<a href="#" class="user-area" title="마이페이지">
					<span class="user">먹어츠</span>
					<span class="noti">알림 <em>0</em>건</span>
				</a>
			</div>
		</header>
		<!-- header (e) -->

		<section id="content">
			<c:set var="stInfo" value="${storeTotalInfo }"></c:set>
			<!-- 왼쪽 컨텐츠 영역 (s) -->
			<div class="content-wrap">
				<div class="store-wrap">
					<div class="tit-area">
						<strong class="tit">${stInfo.storeDTO.store_name }</strong>
						<span class="cate">
							<span>${stInfo.storeDTO.parent_area_name }&nbsp;${stInfo.storeDTO.area_name }</span>
							<span>이탈리안</span>
						</span>
					</div>
					<div class="info">
						<span class="start">4.7</span>
						<span class="review">리뷰 <em>192</em></span>
					</div>
					<div class="recommend">${stInfo.jjimCnt }</div>
				</div>

				<!-- 상단 가게 이미지 영역 (s) -->
				<div class="swiper swp-store">
					<div class="swiper-wrapper">
						<c:forEach var="img" items="${stInfo.storeImgList }">
						<div class="swiper-slide"><img src="${img.store_img }" alt="가게사진${img.img_order }"/></div>
						</c:forEach>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
				<!-- 상단 가게 이미지 영역 (e) -->

				<!-- 위치, 시간, 편의시설 (s) -->
				<div class="bg-box">
					<div class="inner">
						<div class="acco-wrap">
							<div class="acco-head">
								<a href="#" class="btn-acco">
									<i class="map"></i>
									<span>${stInfo.storeDTO.store_addr }</span>
								</a>
							</div>
							<div class="acco-body">
								<ul class="addr-list">
								<!-- 후에 수정 필요 (s) -->
									<li>
										<span class="item">도로명</span>
										<span class="val">서울 용산구 이태원로55가길 45</span>
									</li>
									<li>
										<span class="item">지번</span>
										<span class="val">한남동 738-11</span>
									</li>
									<li>
										<span class="item">우편번호</span>
										<span class="val">04348</span>
									</li>
									<!-- 후에 수정 필요 (e) -->
								</ul>
							</div>
						</div>
						<!-- 후에 수정 필요 (s) -->
						<p class="desc">한강진역 1번 출구에서 500m 정도 걸어오시면 됩니다.</p>
						<!-- 후에 수정 필요 (e) -->
					</div>
					
					<div class="inner">
						<div class="acco-wrap">
							<div class="acco-head">
								<a href="#" class="btn-acco">
									<i class="clock"></i>
									<span>12:00 ~ 22:00</span>
								</a>
							</div>
							<div class="acco-body">
								<ul class="time-list">
									<c:forEach var="day" items="${['월', '화', '수', '목', '금', '토', '일']}">
							        <li>
							            <span class="item">${day}</span>
							            <span class="val">
							                <c:set var="isOpen" value="false" />
							                <c:forEach var="time" items="${stInfo.storeTimeList}">
							                    <c:if test="${time.stime_day == day}">
							                        <c:set var="isOpen" value="true" />
							                        <c:choose>
							                            <c:when test="${empty time.stime_start || empty time.stime_end}">
							                                휴무
							                            </c:when>
							                            <c:otherwise>
							                                ${time.stime_start} - ${time.stime_end}
							                                <c:if test="${!empty time.stime_break}">
							                                    (Break: ${time.stime_break})
							                                </c:if>
							                            </c:otherwise>
							                        </c:choose>
							                    </c:if>
							                </c:forEach>
							                <c:if test="${!isOpen}">
							                    휴무
							                </c:if>
							            </span>
							        </li>
							    	</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<div class="inner txt">
						<strong class="tit">편의시설</strong>
						<ul class="convenience-list">
							<c:forEach var="conv" items="${stInfo.convList }">
							<li>${conv.cate_value_name }</li>
							</c:forEach>
							<!-- <li>와이파이</li>
							<li>주차장</li>
							<li>유아의자</li>
							<li>발렛 파킹</li>
							<li>장애인 편의시설</li>
							<li>대관 가능</li>
							<li>대기공간</li>
							<li>1인석</li>
							<li>단체 이용가능</li> -->
						</ul>
					</div>

				</div>
				<!-- 위치, 시간, 편의시설 (e) -->

				<!-- 공지사항 (s) -->
				<div class="bg-box">
					<div class="swiper swp-noti">
						<div class="swiper-wrapper">
							<c:forEach var="news" items="${stInfo.storeNewsList }">
							<div class="swiper-slide">
								<div class="inner txt">
									<strong class="tit">${news.s_news_title }</strong>
									<p class="desc">${news.s_news_content }</p>
									<div class="btn-area">
										<button type="button" class="btn-more">더보기</button>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
						<div class="swiper-pagination"></div>
					</div>
				</div>
				<!-- 공지사항 (e) -->
			
				<!-- 리뷰 버튼 (s) -->
				<a href="#" class="btn-review">리뷰 보러 가기</a>
				<!-- 리뷰 버튼 (e) -->

				<!-- 메뉴 리스트 (s) -->
				<div class=" bg-box">
					<div class="tab-wrap">
						<ul class="tab-list">
							<c:forEach var="mcate" items="${stInfo.menuCateList }">
							<li class="on">
								<a href="#panel_${mcate.m_cate_idx }">
									<span class="tit">${mcate.m_cate_name}</span>
								</a>
							</li>
							</c:forEach>
							<!-- <li class="on">
								<a href="#panel_1">
									<span class="tit">메인</span>
								</a>
							</li>
							<li>
								<a href="#panel_2">
									<span class="tit">디저트</span>
								</a>
							</li>
							<li>
								<a href="#panel_3">
									<span class="tit">음료</span>
								</a>
							</li> -->
						</ul>
						<div class="tab-contents">
							<c:forEach var="mcate" items="${stInfo.menuCateList }">
							<div class="tab-panel" id="panel_${mcate.m_cate_idx }">
								<c:forEach var="menu" items="${stInfo.menuList }">
								<ul class="menu-list">
									<c:if test="${mcate.m_cate_idx eq menu.m_cate_idx }">
									<li>
										<img src="${menu.menu_img }" alt="${mcate.m_cate_name }_${menu.menu_idx}"/>
										<div class="txt-area">
											<strong>${menu.menu_name }</strong>
											<span class="price">${menu.menu_price }</span>
											<c:if test="${!empty menu.menu_info }">
											<p>${menu.menu_info }</p>
											</c:if>
										</div>
									</li>
									</c:if>
								</ul>
								</c:forEach>
								<button type="button" class="btn-menu-more">메뉴 더보기</button>
							</div>
							</c:forEach>
						
			<!-- 				<div class="tab-panel" id="panel_1">
								<ul class="menu-list">
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>추가 PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>추가 PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
								</ul>
								<button type="button" class="btn-menu-more">메뉴 더보기</button>
							</div>
							<div class="tab-panel" id="panel_2">
								<ul class="menu-list">
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
								</ul>
								<button type="button" class="btn-menu-more">메뉴 더보기</button>
							</div>
							<div class="tab-panel" id="panel_3">
								<ul class="menu-list">
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
									<li>
										<img src="../img/user/storeInfo/img_pasta.png" alt="파스타1"/>
										<div class="txt-area">
											<strong>PPP 파스타</strong>
											<span class="price">22,000</span>
											<p>Pasta panna piselli e prosciutto 콩과 햄이 들어간 크림 파스타</p>
										</div>
									</li>
								</ul>
								<button type="button" class="btn-menu-more">메뉴 더보기</button>
							</div> -->
						</div>
					</div>
					<!-- icoTab (e) -->
				</div>
				<!-- 메뉴 리스트 (e) -->
			</div>
			<!-- 왼쪽 컨텐츠 영역 (e) -->

			<!-- 오른쪽 예약 영역 (s) -->
			<div class="reservation">
				예약 영역
			</div>
			<!-- 오른쪽 예약 영역 (e) -->
		</section>
	</div>
</body>
</html>