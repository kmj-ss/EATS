<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EATS 리뷰쓰기</title>
<link rel="stylesheet" href="/css/font.css">
<link rel="stylesheet" href="/css/user/userHeader.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/css/user/userFooter.css">
<style>
/* reset */
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video, textarea, input{
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	font-family: "Noto Sans KR", sans-serif;
}

article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
html {
	font-family: "Noto Sans KR", sans-serif;
	font-weight: 400;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
html, body{
	margin:auto;
	line-height:1.5;
}
body {
	-webkit-text-size-adjust:none; 
	text-size-adjust:none;
	color: #000;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

/* common */
* {
	box-sizing: border-box;
	padding: 0px;
	margin: 0px;    
	outline: none;
}
a {
	margin: 0px;
	text-decoration: none;
	color: inherit;
}
button {
	border: 0;
	cursor: pointer;
	font-family: inherit;
}
ul {
	list-style: none;
	padding: 0;
	margin: 0;
}
.blind {
	display:inline-block; 
	position:absolute !important; 
	width:1px; height:1px; 
	margin:-1px; border:0; 
	overflow:hidden; 
	clip:rect(1px, 1px, 1px, 1px); 
	clip-path:inset(50%);
}

#content {
	position: relative;
	width: 65%;
	margin: 0 auto 63px auto;
}

#content.flex {
	display: flex;
	justify-content: space-between;
}
/* bg 공통 박스 */
.bg-box {
	margin: 35px 0; 
	padding: 15px; 
	border-radius: 12px; 
	background: #FFF8EB;
}
.bg-box .inner {
	    padding: 15px;
	    border-radius: 12px;
	    background: #fff;
	    display: flex;
	    flex-wrap: wrap;
}
.bg-box .inner + .inner {
	margin-top: 24px;
}
.bg-box .inner .tit {
	font-size: 24px; 
	font-weight: 700;
}
.bg-box .inner .desc {
	margin-top: 10px; 
	font-size: 20px; 
	font-weight: 700;
}
.bg-box .inner .convenience-list li {
	display: inline-block; 
	margin: 12px 12px 0 0; 
	padding: 5px 15px; 
	border: 1.5px solid #DFDFDF; 
	border-radius: 40px; 
	background:#fff; 
	text-align: center;
}

.bg-box .inner.txt {
	padding: 15px 38px;
}
.bg-box.bg1 {
	background: rgba(243, 85, 60, 0.15);
}
.bg-box.lg {
	padding: 30px;
}



/* 공통 탭 */
.tab-wrap {
	padding: 10px 37px;
}
.tab-wrap .tab-list {
	margin-bottom: 20px; 
	font-size: 0;
}
.tab-wrap .tab-list li {
	display: inline-block; 
	padding: 8px 28px; 
	border:2px solid orange; 
	border-radius: 20px; 
	font-size: 14px; 
	font-weight: 500;
}
.tab-wrap .tab-list li + li {
	margin-left: 24px;
}
.tab-wrap .tab-list li.on {
	background: orange; 
	color: #fff; 
	font-weight: 700;
}
.tab-wrap .tab-contents .tab-panel {
	display: none;
}

.tab-wrap .tab-contents .menu-list li {
	display: flex; 
	padding: 24px 20px; 
	background: #fff;
}
.tab-wrap .tab-contents .menu-list li img {
	margin-right: 20px;
}
.tab-wrap .tab-contents .menu-list li .txt-area {
	position: relative;
}
.tab-wrap .tab-contents .menu-list li .txt-area strong {
	display: block; 
	padding-right: 62px; 
	font-size: 20px; 
	font-weight: 500;
}
.tab-wrap .tab-contents .menu-list li .txt-area .price {
	position: absolute; 
	top: 4px; 
	right: 0; 
	font-size: 15px; 
	font-weight: 500;
}
.tab-wrap .tab-contents .menu-list li .txt-area p {
	margin-top: 18px; 
	font-size: 15px; 
	font-weight: 500;
}
.tab-wrap .tab-contents .menu-list li + li {
	margin-top: 32px;
}
.tab-wrap .tab-contents .btn-menu-more {
	display: none; 
	width: 100%; 
	margin-top: 28px; 
	padding: 18px 0; 
	border-radius: 10px; 
	background: orange; 
	font-size: 24px; 
	font-weight: 700; 
	color: #fff; 
	text-align: center;
}

.tab-wrap.type1 {
	padding: 0;
}

#content > section {
	margin: 60px 0;
}
#content > section .tit-area {
	display: flex; 
	align-items: center;
}
#content > section textarea {
	display: block; 
	width: 100%; 
	height: 250px; 
	padding: 24px; 
	border: 1px solid #000; 
	font-size: 20px;
}
#content > section textarea::placeholder {
	color: #757575; 
	font-size: 20px; 
	font-weight: 700;
}
#content > .btn-area {
	display: inline-block; 
	width: 100%; 
/* 	margin-top: 45px; 
	padding: 28px 0; 
	border-radius: 10px; 
	background: #ff533e; 
	color: #fff; 
	font-size: 24px; 
	font-weight: 700;  */
	text-align: center;
}

.info img{
	width:15px;
}
.tit-h2 {
	color: #000; 
	font-size: 20px; 
	font-weight: 700;
}
.tit-area {
	margin-bottom: 30px;
}

/*별점*/
.rev-score-wrapper {
  margin-left: 15px;
  display: flex;
  gap: 5px;
}

.score-input {
  display: none;
}

.star-label {
  width: 24px;
  overflow: hidden;
  cursor: pointer;
}

.star-icon {
  width: 24px;
  height: 24px;
  display: block;
  background-image: url("../img/user/star_empty.png");
  background-size: 24px;
  background-repeat: no-repeat;
  transition: background-image 0.2s;
}

/* 호버 상태 */
.star-label:hover .star-icon,
.star-label:has(~ .star-label:hover) .star-icon {
  background-image: url("../img/user/star_hover.png");
}

/* 선택된 상태 */
.score-input:checked + .star-icon {
  background-image: url("../img/user/star_active.png");
}

.star-label:has(.score-input:checked) .star-icon,
.star-label:has(~ .star-label .score-input:checked) .star-icon {
  background-image: url("../img/user/star_active.png");
}

/* 선택된 별점보다 높은 별은 빈 별로 유지 */
.star-label:has(.score-input:checked) ~ .star-label .star-icon {
  background-image: url("../img/user/star_empty.png");
}

/* 선택된 별점보다 높은 별에 호버 시 */
.star-label:has(.score-input:checked) ~ .star-label:hover .star-icon,
.star-label:has(.score-input:checked) ~ .star-label:has(~ .star-label:hover) .star-icon {
  background-image: url("../img/user/star_hover.png");
}

.info-box {
	display: flex; 
	padding: 28px 32px; 
	border: 2px solid orange; 
	border-radius: 15px; 
	background: #fff;
}
.info-box .img {
	margin-right: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
}
.info-box .img img {
	width: 190px; 
	height: auto;
}

.info-box .info .tit {
	font-size: 24px; 
	font-weight: 500;
}

.info-box .info ul {margin-top: 8px;}
.info-box .info ul li {
	color: #757575; 
	font-size: 16px; 
	font-weight: 700;
}
.info-box .info ul li + li {
	margin-top: 5px;
}
.info-box .info ul li i {
	display: inline-block; 
	width: 18px; 
	height: 18px; 
	margin-right: 8px; 
}
.info-box .info .state {
	display: inline-block; 
	margin-top: 12px; 
	color: #ff533e; 
	font-size: 20px; 
	font-weight: 600;
}

.label-file .btn-upload {
	display: inline-block; 
	padding: 14px 68px; 
	border-radius: 10px; 
	background-color: #f3553c; 
	color: #fff; 
	font-size: 12px; 
	font-weight: 600; 
	text-align: center;
	cursor: pointer;
}
.label-file + input {
	position:static; 
	width:1px; 
	height:1px; 
	clip:rect(0 0 0 0); 
	overflow:hidden;
}
.img-box {
	margin-top: 18px; 
	padding: 0 18px 18px 18px; 
	border: 1px solid #000; 
	font-size: 0;
	min-height: 170px;
	height: fit-content;
	width: 100%;
	display: flex;
    flex-wrap: wrap;
}
.img-box .rev-img {
	position: relative;
    width: 169px;
    height: 150px;
	display: inline-block;  
	margin: 15px 10px; 
	/* overflow: hidden; */
}
.img-box.dragover {
    border-color: #000;
    background: rgba(0, 0, 0, 0.05);
}
.image-preview{
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.remove-image {
	position: absolute;
	top: 5px;
	right: 5px;
	background: rgba(0, 0, 0, 0.5);
	color: white;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	display: none;
	align-items: center;
	justify-content: center;
	cursor: pointer;
	font-size: 12px;
}
.img-box:hover .remove-image {
	display: flex;
}


.list-check {
	display: flex; 
	flex-wrap: wrap; 
	padding: 4px 0 30px;
}
.list-check li {
	margin: 26px 16px 0 0;
}
.list-check li input[type=checkbox] {
	position: absolute; 
	top: auto; 
	margin: 0; 
	padding: 0; 
	opacity: 0; 
	z-index: -1;
}
.list-check li input[type=checkbox] + label {
	display: inline-block; 
	padding: 8px 21px; 
	border: 2px solid orange; 
	border-radius: 20px; 
	font-size: 14px; 
	font-weight: 500; 
	cursor: pointer;
}
.list-check li input[type=checkbox]:checked + label {
	background: orange; 
	color: #fff;
}

.list-check.type1 li input[type=checkbox] + label {
	border-color: #ff533e; 
	color: #ff533e;
}
.list-check.type1 li input[type=checkbox]:checked + label {
	background: #ff533e; 
	color: #fff;
}

.btn-group {
	font-size: 0;
}
.btn-group button {
	display: inline-block; 
	margin: 20px 18px 0 0; 
	padding: 8px 28px; 
	border-radius: 20px; 
	color: #fff; 
	font-size: 14px; 
	font-weight: 500; 
	background: orange;
}
.btn-group.type1 button {
	background: #ff533e;
}
.btn-submit{
	background-color: #f3553c;
    color: #fefefe;
    font-size: 18px;
    padding: 10px 20px;
    border-radius: 15px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/userHeader.jsp" %>
	<section id="content">
		<!-- 별점 영역 (s) -->
		<section>
			<div class="tit-area">
				<h2 class="tit-h2">${storeInfo.STORE_NAME }에서의 경험은 어떠셨나요?</h2>
				<div class="rev-score-wrapper">
					<label class="star-label" for="score_1">
				    	<input type="radio" id="score_1" name="rev_score_radio" value="1" class="score-input">
				    	<span class="star-icon"></span>
				  	</label>
					<label class="star-label" for="score_2">
				    	<input type="radio" id="score_2" name="rev_score_radio" value="2" class="score-input">
				    	<span class="star-icon"></span>
				  	</label>
				  	<label class="star-label" for="score_3">
				    	<input type="radio" id="score_3" name="rev_score_radio" value="3" class="score-input">
				    	<span class="star-icon"></span>
				  	</label>
				  	<label class="star-label" for="score_4">
				    	<input type="radio" id="score_4" name="rev_score_radio" value="4" class="score-input">
				    	<span class="star-icon"></span>
				  	</label>
				  	<label class="star-label" for="score_5">
				    	<input type="radio" id="score_5" name="rev_score_radio" value="5" class="score-input">
				    	<span class="star-icon"></span>
				  </label>
				</div>
			</div>
			<div class="info-box">
				<div class="img"><img src="/img/storeUploadImg/${storeInfo.STORE_IMG }" alt="가게 이미지"/></div>
				<div class="info">
					<strong class="tit">${storeInfo.STORE_NAME }</strong>
					<ul>
						<li>
							<img src="/img/user/storeInfo/cal_icon.png">
							<span>${reserveDTO.reserve_date }</span>
						</li>
						<li>
							<img src="/img/user/storeInfo/watch_icon.png">
							<span>${reserveDTO.reserve_time }</span>
						</li>
						<li>
							<img src="/svg/group_icon.svg">
							<span>${reserveDTO.reserve_count }명</span>
						</li>
					</ul>
					<span class="state"><c:if test="${reserveDTO.reserve_state==3}">방문완료</c:if></span>
				</div>
			</div>
		</section>
		<!-- 별점 영역 (e) -->

		<!-- 리뷰 작성 영역 (s) -->
		<section>
			<div class="tit-area">
				<h2 class="tit-h2">${storeInfo.STORE_NAME }에서의 경험을 공유해주세요!</h2>
			</div>
			<textarea title="${storeInfo.STORE_NAME }에서의 경험 내용 입력" placeholder="잇츠님의 경험을 작성해주세요!" id="rev_content_box"></textarea>
		</section>
		<!-- 리뷰 작성 영역 (e) -->

		<!-- 사진 첨부 영역 (s) -->
		<section>
			<label for="file-upload" class="label-file" onclick="document.getElementById('imageInput').click()">
				<span class="btn-upload">사진 첨부하기</span> <!-- 클릭 시 사진 첨부 가능 -->
			</label>
			<!-- 첨부한 이미지를 보여줄 영역 -->
			<div class="img-box" id="img_box">
				<span>첨부할 사진을 마우스로 끌어와 보세요!</span>
			</div>
			<!--  -->
		</section>
		<!-- 사진 첨부 영역 (e) -->

		<!-- 메뉴 선택 영역 (s) -->
		<section>
			<div class="tit-area">
				<h2 class="tit-h2">어떤 메뉴를 드셨나요?</h2>
			</div>
			<div class="bg-box lg">
				<div class="tab-wrap type1">
					<ul class="tab-list">
						<c:forEach var="cate" items="${menuCateList }" varStatus="cnt">
							<c:if test="${cnt.index==0 }">
							<li class="on">
								<a href="#panel_${cate.m_cate_idx }">
									<span class="tit">${cate.m_cate_name }</span>
								</a>
							</li>
							</c:if>
							<c:if test="${cnt.index!=0 }">
							<li>
								<a href="#panel_${cate.m_cate_idx }">
									<span class="tit">${cate.m_cate_name }</span>
								</a>
							</li>
							</c:if>
						</c:forEach>
						
					</ul>
					<div class="tab-contents">
						<c:forEach var="cate" items="${menuCateList }">
						<div class="tab-panel" id="panel_${cate.m_cate_idx }">
							<div class="inner pt-0 pb-0 bdr-0">
								<c:forEach var="menu" items="${menuList }">
								<ul class="list-check">
									<c:if test="${cate.m_cate_idx eq menu.m_cate_idx }">
									<li>
										<input type="checkbox" class="ipt" id="chk${cate.m_cate_idx }_${menu.menu_idx }">
										<label for="chk${cate.m_cate_idx }_${menu.menu_idx }">${menu.menu_name }</label>
									</li>
									</c:if>
								</ul>
								</c:forEach>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
				<div class="btn-group"></div>
			</div>
		</section>
		<!-- 메뉴 선택 영역 (e) -->

		<!-- 태그 선택 영역 (s) -->
		<section>
			<div class="tit-area">
				<h2 class="tit-h2">파브리키친을 잘 표현한 단어는 무엇인가요? (5개까지 선택 가능)</h2>
			</div>
			<div class="bg-box lg bg1">
				<div class="inner pt-0 pb-0 bdr-0">
					<ul class="list-check type1">
						<c:forEach var="tag" items="${tagList }">
						<li>
							<input type="checkbox" class="ipt" name="" id="${tag }">
							<label for="${tag }">${tag }</label>
						</li>
						</c:forEach>
					</ul>
				</div>
				<div class="btn-group type1"></div>
			</div>
		</section>
		<!-- 태그 선택 영역 (e) -->

		<div class="btn-area">
			<form name="review_insert" id="reviewForm" method="post" enctype="multipart/form-data" action="/user/insertReview">
				<input type="hidden" id="reserve_idx" name="reserve_idx" value="${reserveDTO.reserve_idx }">
				<input type="hidden" name="rev_score" id="rev_score">
				<textarea style="display:none;" name="rev_content" id="rev_content"></textarea>
				<input type="file" name="images" id="imageInput" multiple accept="image/*" style="display: none">
				<input type="hidden" id="rev_menu" name="rev_menu">
				<input type="hidden" id="rev_tag" name="rev_tag">
				<input type="submit" value="리뷰 등록하기" class="btn-submit">
			</form>
		</div>
	</section>
<%@include file="/WEB-INF/views/userFooter.jsp" %>
<script type="text/javascript" src="../js/userHeader.js"></script>
<script type="text/javascript" src="../js/myplate/reviewWrite.js"></script>
<script>
/*img upload*/
let selectedImgs = new Array();
const dropZone = document.getElementById('img_box');

//드래그 이벤트 처리
['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
    dropZone.addEventListener(eventName, preventDefaults, false);
});

function preventDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
}

['dragenter', 'dragover'].forEach(eventName => {
    dropZone.addEventListener(eventName, highlight, false);
});

['dragleave', 'drop'].forEach(eventName => {
    dropZone.addEventListener(eventName, unhighlight, false);
});

function highlight(e) {
    dropZone.classList.add('dragover');
}

function unhighlight(e) {
    dropZone.classList.remove('dragover');
}

// 드롭 이벤트 처리
dropZone.addEventListener('drop', handleDrop, false);

function handleDrop(e) {
    const dt = e.dataTransfer;
    const files = [...dt.files];
    
    files.forEach(file => {
        if (file.type.startsWith('image/')) {
            selectedImgs.push(file);
            displayImagePreview(file);
        }
    });
}


        
document.getElementById('imageInput').addEventListener('change', function(e) {
	const files = e.target.files;
            
	for (let file of files) {
		if (file.type.startsWith('image/')) {
			selectedImgs.push(file);
			displayImagePreview(file);
		}
	}
});

//이미지 미리보기 & 취소하기
function displayImagePreview(file) {
	const reader = new FileReader();
	reader.onload = function(e) {
		const wrapper = document.createElement('div');
		wrapper.className = 'rev-img';
                
		const img = document.createElement('img');
		img.src = e.target.result;
		img.className = 'image-preview';
                
		const removeButton = document.createElement('div');
		removeButton.className = 'remove-image';
		removeButton.innerHTML = 'X';
		removeButton.onclick = function() {			
			const index = selectedImgs.indexOf(file);
			if (index > -1) {
				selectedImgs.splice(index, 1);
 				wrapper.remove();
			}
		};
                
		wrapper.appendChild(img);
		wrapper.appendChild(removeButton);
		document.getElementById('img_box').appendChild(wrapper);
	};
	
	reader.readAsDataURL(file);
}
//폼 제출 시 처리
document.getElementById('reviewForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    // 필수 입력값 유효성 검사
    if (!document.getElementById('rev_score').value) {
        alert('별점을 선택해주세요.');
        return false;
    }
    if(document.getElementById('rev_content_box')){
    	document.getElementById('rev_content').value=document.getElementById('rev_content_box').value;
    	if(!document.getElementById('rev_content').value){
    		alert('리뷰 내용을 입력해주세요');
    		return false;
    	} 
    }
    if(!document.getElementById('rev_menu').value){
    	alert('메뉴를 하나 이상 선택해주세요.');
    	return false;
    }
    if(!document.getElementById('rev_tag').value){
    	alert('태그를 하나 이상 선택해주세요.');
    	return false;
    }
    
 // 선택된 파일들을 imageInput에 넣기
    const dataTransfer = new DataTransfer();
    selectedImgs.forEach(file => {
        dataTransfer.items.add(file);
    });
    document.getElementById('imageInput').files = dataTransfer.files;
    
    // 제출
    this.submit();
});
/************************************img upload (e)*******************************************/

 

document.querySelectorAll('.score-input').forEach(input => {
	  input.addEventListener('change', function() {
	    const selectedScore = this.value;
	    // hidden input에 선택된 값 설정
	    document.getElementById('rev_score').value = selectedScore;
	  });
});

$(document).ready(function(){
	/* 초기화 */ 
	$('.tab-contents .tab-panel').eq(0).show(); // 첫번째 탭 활성화
	tabInit();

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

			if (!$(this).closest('.tab-wrap').hasClass('type1')){
				tabInit();	
			}
		}
	});


	$('.list-check input[type=checkbox]').on('change', function(e){
	    var selChk = $(this).next().text();
	    var btnTag = "<button type='button'>" + selChk + "</button>";
	    
	    // 메뉴 선택인 경우
	    if ($(this).attr('id').includes('_')) {
	        var menuIdx = $(this).attr('id').split('_')[1];
	        var $hiddenInput = $('#rev_menu');
	        btnTag = "<button type='button' data-menu-idx='" + menuIdx + "'>" + selChk + "</button>";
	    } 
	    // 태그 선택인 경우
	    else {
	        var $hiddenInput = $('#rev_tag');
	        // 5개 초과 선택 방지
	        if ($(this).is(':checked')) {
	            var checkedCount = $('.list-check.type1 input[type=checkbox]:checked').length;
	            if (checkedCount > 5) {
	                alert('태그는 최대 5개까지 선택 가능합니다.');
	                $(this).prop('checked', false);
	                return;
	            }
	        }
	    }

	    if ($(this).is(':checked')){ // 체크 할 때
	        if ($(this).closest('.tab-wrap').length > 0){
	            $(this).closest('.tab-wrap').siblings('.btn-group').append(btnTag);
	        } else {
	            $(this).closest('.inner').siblings('.btn-group').append(btnTag);
	        }

	        // hidden input에 값 추가
	        var currentValue = $hiddenInput.val();
	        if(currentValue) {
	            $hiddenInput.val(currentValue + "," + (menuIdx || selChk));
	        } else {
	            $hiddenInput.val(menuIdx || selChk);
	        }

	    } else { // 체크 해제 할 때
	        if ($(this).closest('.tab-wrap').length > 0){
	            $(this).closest('.tab-wrap').siblings('.btn-group').find('button').each(function(){
	                if ($(this).text() == selChk) {
	                    $(this).remove();
	                }
	            });
	        } else {
	            $(this).closest('.inner').siblings('.btn-group').find('button').each(function(){
	                if ($(this).text() == selChk) {
	                    $(this).remove();
	                }
	            });
	        }

	        // hidden input에서 값 제거
	        var currentValue = $hiddenInput.val();
	        if(currentValue) {
	            var valueArray = currentValue.split(',');
	            valueArray = valueArray.filter(function(value) {
	                return value != (menuIdx || selChk);
	            });
	            $hiddenInput.val(valueArray.join(','));
	        }
	    }
	});
	
	$(document).on("click", ".btn-group button", function(){
		var target = $(this);
		var selTxt = target.text();
		var menuIdx = target.data('menu-idx');
		var $hiddenInput = $('#rev_menu');
		
		// hidden input에서 menu_idx 제거
        var currentValue = $hiddenInput.val();
        if(currentValue) {
            var menuArray = currentValue.split(',');
            menuArray = menuArray.filter(function(value) {
                return value != menuIdx;
            });
            $hiddenInput.val(menuArray.join(','));
        }
		
		if ($(this).closest('.btn-group').siblings('.tab-wrap').length > 0){
			$(this).closest('.btn-group').siblings('.tab-wrap').find('label').each(function(){
				if (selTxt == $(this).text()){
					$(this).prev().prop('checked',false);
					target.remove();
				}
			});
		}else {
			$(this).closest('.btn-group').siblings('.inner').find('label').each(function(){
				if (selTxt == $(this).text()){
					$(this).prev().prop('checked',false);
					target.remove();
				}
			});
		}
		
	});

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
</body>
</html>