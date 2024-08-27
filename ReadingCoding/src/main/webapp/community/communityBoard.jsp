<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 글 상세페이지</title>
   	<link rel="stylesheet" href="/resources/style/com.css">
    <script src="/resources/script/com.js"></script>
</head>
<body>
    <div class="container">
        
    <!-- <button class="report-btn-custom">신고하기</button>-->
        <!-- 게시글 박스 -->
        <div class="post-box-custom">
            <!-- 신고하기 버튼 -->
            

            <!-- 제목 및 상단 정보 -->
            <div class="post-header-custom">
                <h1 class="post-title-custom">혹시 로맨스 소설 추천 해주실 수 있을까요?</h1>
                <div class="profile-info-custom">
                    <img src="/resources/images/kitty.jpg" alt="프로필 사진" class="profile-image-custom">
                    <div class="author-info-custom">
                        <div class="author-name-custom">채유니</div>
                        <div class="post-date-custom">2024.08.10</div>
                    </div>
                </div>
            </div>
            
            <hr class="divider-custom">

            <!-- 내용 -->
            <div class="post-content-custom">
                추천해주세요
            </div>
            
            <!-- 해시태그 -->
            <div class="post-tags-custom">
                <a href="hashtag.jsp"><span class="tag-custom">#독서맛집</span></a>
            </div>
            <hr class="divider-custom">
            <!-- 조회수, 댓글, 좋아요 -->
            <div class="post-stats-custom">
                <span class="views-comments-custom">조회수 7 | 댓글(1개)</span>
                <div class="like">
                    <img id="likeImage" src="/resources/images/heart1.png" alt="하트" class="like-image-custom">
                    <span class="likes-custom">좋아요</span>
                </div>
            </div>

            <hr class="divider-custom">

            <!-- 댓글 섹션 -->
            <div class="comment-section-custom">
                <div class="comment-author-info-custom">
                    <img src="/resources/images/kitty.jpg" alt="프로필 사진" class="comment-profile-image-custom">
                    <div class="comment-author-name-custom">유미니</div>
                    <div class="comment-date-custom">2024.08.10</div>
                </div>
                <div class="comment-buttons-custom">
                    <div class="comment-content-custom">시른디 ? 내가 왜 ?</div>
                    <div>
                        <button class="comment-edit-btn-custom">수정</button>
                        <button class="comment-delete-btn-custom">삭제</button>
                    </div>
                </div>
            </div>
            
            <!-- 댓글 작성 -->
            <div class="comment-write-box-custom">
                <textarea class="comment-write-input-custom" placeholder="답글을 작성하세요"></textarea>
                <button class="comment-submit-btn-custom">등록</button>
            </div>
            
            <hr class="divider-custom">

            <button class="back-button-custom" onclick="window.location.href='community.jsp'">목록</button>

        </div>
    </div>
</body>
</html>
