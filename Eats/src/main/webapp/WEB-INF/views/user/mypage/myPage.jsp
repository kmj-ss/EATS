<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
    <link rel="stylesheet" href="/css/user/myPageCss.css">
    <link rel="stylesheet" href="/css/user/userHeader.css">
    <link rel="stylesheet" href="/css/user/userFooter.css">
    <link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">

</head>
<body>
    <!-- 헤더 포함 -->
<%@include file="/WEB-INF/views/userHeader.jsp" %>

    <div class="container">
        <!-- 프로필 섹션 -->
        <div class="profile">
<img src="${not empty userProfile1.profile_image ? userProfile1.profile_image : '/svg/profile_icon.svg'}?timestamp=${currentTime}" 
     alt="프로필 이미지" class="profile-img">
            <div class="profile-name">${userProfile1.user_nickname}</div>
           	</div>

        <!-- 메뉴 섹션 -->
        <div class="menu">
            <a href="/user/mypage/myJjim" class="menu-item">
                <img src="/svg/fork_icon_white.svg" alt="찜 아이콘">
                <div>나의 콕!</div>
            </a>
            <a href="/user/mypage/myReviews" class="menu-item">
                <img src="/myPageImg/review-icon.png" alt="리뷰 아이콘">
                <div>나의 리뷰</div>
            </a>
            <a href="/user/mypage/myPayments" class="menu-item">
                <img src="/myPageImg/payment-icon.png" alt="결제 관리 아이콘">
                <div>결제 관리</div>
            </a>
            <a href="/user/mypage/myQna" class="menu-item">
                <img src="/myPageImg/qna-icon.png" alt="1:1 문의 아이콘">
                <div>1:1 문의</div>
            </a>
            <a href="/user/mypage/myProfile" class="menu-item">
                <img src="/myPageImg/profile-icon.png" alt="나의 정보 아이콘">
                <div>나의 정보</div>
            </a>
        </div>
    </div>
    <%@include file="/WEB-INF/views/userFooter.jsp" %>
    <script type="text/javascript" src="/js/userHeader.js"></script>
</body>

</html>
