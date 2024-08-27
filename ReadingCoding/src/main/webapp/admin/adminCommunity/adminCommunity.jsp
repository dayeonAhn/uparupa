<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 리스트</title>
   <link rel="stylesheet" href="/resources/style/com.css">
</head>
<body>
    <div class="container">
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
        </div>

        <!-- 커뮤니티 리스트 -->
        <div class="community-list">
            <!-- 제목 -->
            <div class="admin-post-header">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">번호</span>
                <span class="com-post-title">제목</span>
                <span class="post-author">작성자</span>
                <span class="post-date">작성일자</span>
                <span class="post-views">조회수</span>
            </div>

            <!-- 글 항목 -->
            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">1</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">첫 번째 글의 제목</a></span>
                <span class="post-author">작성자1</span>
                <span class="post-date">2024-08-01</span>
                <span class="post-views">123</span>
            </div>
            <hr>

            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">2</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">두 번째 글의 제목</a></span>
                <span class="post-author">작성자2</span>
                <span class="post-date">2024-08-02</span>
                <span class="post-views">234</span>
            </div>
            <hr>

            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">3</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">세 번째 글의 제목</a></span>
                <span class="post-author">작성자3</span>
                <span class="post-date">2024-08-03</span>
                <span class="post-views">345</span>
            </div>
            <hr>

            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">4</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">네 번째 글의 제목</a></span>
                <span class="post-author">작성자4</span>
                <span class="post-date">2024-08-04</span>
                <span class="post-views">456</span>
            </div>
            <hr>
        </div>
        <div class="buttons">
            <button class="delete-button">삭제</button>
        </div>
        <div class="pagination">
            <a href="#">&lt;</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">&gt;</a>
        </div>
    </div>
</body>
</html>
