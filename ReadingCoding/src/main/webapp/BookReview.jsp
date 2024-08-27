<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 서재 - 캘린더 및 독후감 작성</title>
    <link rel="stylesheet" href="resources/style/BookReview.css">
</head>

<body>
    <div class="nickname-container">
        <div>
            <img src="resources/images/프로필 사진.png" alt="profile" class="profile-image">
        </div>
        <h1>니크네임데스</h1>
        <p>님의 서재</p>
    </div>

    <hr class="divider">

    <div class="menu">
        <a href="BookReview.jsp">독서기록</a>
        <a href="MyPage/interestBook.jsp">관심등록</a>
        <a href="MyPage/updateMember.jsp">회원수정</a>
        <a href="">1:1 고객문의</a>
    </div>

    <!-- 캘린더 입력값 -->
    <!-- <div class="titlereview">
        <h3>어린왕자</h3>
    </div> -->

    <div class="calendar">
        <div class="header">
            <div class="nav">
                <button class="nav-btn go-prev" onclick="prevMonth()">◀</button>
                <button class="year-month" onclick="goToday()"></button>
                <button class="nav-btn go-next" onclick="nextMonth()">▶</button>
                <button class="writer-button" onclick="openReviewModal()">작성하기</button>
            </div>
        </div>

        <div class="main">
            <div class="days">
                <div class="day">일요일</div>
                <div class="day">월요일</div>
                <div class="day">화요일</div>
                <div class="day">수요일</div>
                <div class="day">목요일</div>
                <div class="day">금요일</div>
                <div class="day">토요일</div>
            </div>
            <div class="dates"></div>
        </div>
    </div>

    <!-- 독후감 작성 모달 -->
    <div id="reviewModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeReviewModal()">&times;</span>

            <div class="whiteBoard">
                <!-- 공개/비공개 설정 -->
                <div class="visibility-options">
                    <label for="public">
                        <input type="radio" id="public" name="visibility" value="public">
                        공개
                    </label>
                    <label for="private">
                        <input type="radio" id="private" name="visibility" value="private" checked>
                        비공개
                    </label>
                </div>

                <div class="book-mood-container">
                    <!-- 책 검색 -->
                    <div class="book-search-container">
                        <input type="text" id="bookSearch" class="book-search-input" placeholder="e도서명, 저자, 출판사" />
                        <button id="searchBookBtn" class="book-search-btn">찾기</button>
                    </div>

                    <!-- 오늘의 기분 선택 -->
                    <div class="mood-container">
                        <label class="mood-label">오늘의 기분:</label>
                        <div class="mood-selector" onclick="toggleMoodDropdown()">
                            <!-- 선택된 이모지가 표시될 부분 -->
                            <span id="selectedMood">
                                <img id="selectedMoodImage" src="../resources/images/꺄륵.png" alt="" style="width: 55px; height: 50px;">
                            </span>
                            <span class="dropdown-arrow">▼</span>
                        </div>
                        <div id="moodDropdown" class="mood-dropdown" style="display: none;">
                            <img src="images/꺄륵.png" alt="😊" class="mood-option" onclick="selectMood('images/꺄륵.png')">
                            <img src="images/쏘쏘.png" alt="😐" class="mood-option" onclick="selectMood('images/쏘쏘.png')">
                            <img src="images/흑흑.png" alt="😢" class="mood-option" onclick="selectMood('images/흑흑.png')">
                            <img src="images/화남.png" alt="😠" class="mood-option" onclick="selectMood('images/화남.png')">
                            <img src="images/헤헤.png" alt="😄" class="mood-option" onclick="selectMood('images/헤헤.png')">
                            <img src="images/뜨헉.png" alt="😲" class="mood-option" onclick="selectMood('images/뜨헉.png')">
                        </div>
                    </div>
                </div>

                <!-- 제목 입력 -->
                <div class="title-container">
                    <input type="text" id="title" class="title-text-field" placeholder="제목을 입력하세요" />
                </div>

                <!-- 날짜 선택 -->
                <div class="date-container">
                    <label for="date" class="date-label">날짜:</label>
                    <input type="date" id="date" class="date-field" />
                </div>

                <!-- 독후감 입력 -->
                <div class="content-container">
                    <textarea id="content" class="content-input" rows="5" placeholder="내용을 입력하세요"></textarea>
                </div>

                <div class="modal-footer">
                    <button id="saveBtn">저장</button>
                    <button id="deleteBtn">삭제</button>
                </div>

            </div>
        </div>

        <script src="resources/script/BookReview.js"></script>
</body>

</html>