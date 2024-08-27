<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/style/BookReview.css">
</head>

<body>
    <div class="nickname-container">
        <div>
            <img src="../resources/images/프로필 사진.png" alt="profile" class="profile-image">
        </div>
        <h1>니크네임데스</h1>
        <p>님의 서재</p>
    </div>

    <hr class="divider">

    <div class="menu">
        <a href="../BookReview.jsp">독서기록</a>
        <a href="interestBook.jsp">관심등록</a>
        <a href="updateMember.jsp">회원수정</a>
        <a href="">1:1 고객문의</a>
    </div>
    <div class="book-list">
        <div class="book-list-header">
            <h2 id="bookLabel">
                전체 <span id="bookCount">10</span>권
            </h2>
            <button class="edit" onclick="toggleEditMode()">편집</button>
            <div id="editButtons" style="display: none;">
                <button class="delete" onclick="deleteSelected()">삭제</button>
                <button class="cancel" onclick="cancelEdit()">취소</button>
            </div>
        </div>
        <div class="books">
            <div class="book-card">
                <img src="../resources/images/망그러진 곰.jpeg" alt="책 제목 2">
                <p>망그러진 하루</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/어린왕자.png" alt="책 제목 1">
                <p>어린 왕자</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/책 3.png" alt="책 제목 2">
                <p>우리가 행운을 주워왔어!</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/책 4.png" alt="책 제목 2">
                <p>매일을 헤엄치는 법</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/책5.png" alt="책 제목 2">
                <p>기분이 태도가 되지 말자</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/망그러진 곰.jpeg" alt="책 제목 2">
                <p>망그러진 하루</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/어린왕자.png" alt="책 제목 1">
                <p>어린 왕자</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/책 3.png" alt="책 제목 2">
                <p>우리가 행운을 주워왔어!</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/책 4.png" alt="책 제목 2">
                <p>매일을 헤엄치는 법</p>
            </div>
            <div class="book-card">
                <img src="../resources/images/책5.png" alt="책 제목 2">
                <p>기분이 태도가 되지 말자</p>
            </div>
            <!-- 추가적인 책 카드 -->
        </div>
        <button class="more-btn"> + 더보기</button>
    </div>

    <script src="../resources/script/interestBook.js"></script>
</body>

</html>