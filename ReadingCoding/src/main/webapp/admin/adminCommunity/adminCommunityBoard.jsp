<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세</title>
   <link rel="stylesheet" href="../../resources/style/com.css">
   <link rel="stylesheet" href="../../resources/style/temp.css"> <!--재성 -->
    <script src="/resources/script/com.js"></script>
</head>
<body>

<jsp:include page="../../adminHeader.jsp"></jsp:include>
    <div class="com-container">

        <div class="admin-notice-title">혹시 로맨스 소설 추천 해주실 수 있을까요?</div>
        <div class="meta-info">
            <span class="author">채유니</span>
            <span class="date">2024.08.10</span>
            <span class="views">조회수 7</span>
            <div class="buttons">
                <button class="back-button" onclick="window.location.href='adminCommunity.jsp'">목록</button>
                <button class="comment-delete-button">삭제</button>
            </div>
        </div>        
        <hr class="cline">
        <div class="content">
            공지사항입니다.
        </div>
        <hr class="cline">
        <div class="comment-count">댓글(1개)</div>
        <hr class="cline">
        <div class="comment-section-custom">
            <div class="comment-author-info-custom">
                <div class="comment-author-name-custom">유미니</div>
                <div class="comment-date-custom">2024.08.10</div>
            </div>
            <div class="comment-buttons-custom">
                <div class="comment-content-custom">시른디 ? 내가 왜 ?</div>
                <button class="comment-delete-button">삭제</button>
            </div>
        </div>
        <hr class="cline">
    </div>
    <jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
