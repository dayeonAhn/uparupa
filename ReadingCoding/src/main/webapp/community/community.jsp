<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 리스트</title>
	<link rel="stylesheet" href="/resources/style/com.css">
    <script src="/resources/script/com.js"></script>
</head>
<body>
    <div class="com-container">
        <!-- 상단 바 -->
        <div class="top-bar">
            <!-- 페이지 제목 -->
            <div class="community-title">커뮤니티</div>

            <!-- 정렬 순서 선택 메뉴 -->
            <div class="sort-menu">
                <select id="sort-options" class="sort-select">
                    <option value="latest">최신순</option>
                    <option value="views">조회수순</option>
                </select>
            </div>

            <!-- 검색창과 선택창을 감싸는 컨테이너 -->
            <div class="search-container custom-border">
                <select id="search-category" class="search-select custom-input-border">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
                <input type="text" id="search-input" class="search-input custom-input-border" placeholder="검색어 입력">
            </div>

            <!-- 글쓰기 버튼 -->
            <button class="write-button" onclick="window.location.href='communityForm.jsp'">글쓰기</button>
        </div>

        <div class="post-box">
            <!-- 상단 영역: 작성자 이름과 조회수 -->
            <div class="post-header">
                <div class="author-name">채유니</div>
                <div class="view-count">조회수 7</div>
            </div>
            
            <!-- 중간 영역: 커뮤니티 제목 -->
            <div class="post-title">
                <a href="communityBoard.jsp">로맨스 소설 추천 해주실 수 있을까요?</a>
            </div>
            
            <!-- 하단 영역: 댓글 수와 좋아요 수 -->
            <div class="post-footer">
                <div class="comment-count">댓글(1)</div>
                <div class="straight-line">|</div>
                <div class="likes-count">
                    <img id="likeImage" src="/resources/images/heart1.png" alt="하트" class="like-image-custom">
                    <span>23</span>
                </div>
            </div>
        </div>
        <div class="more">+더보기</div>
        <!-- 커뮤니티 리스트 내용이 들어갈 부분 -->
    </div>
</body>
</html>
