<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 작성</title>
   <link rel="stylesheet" href="/resources/style/com.css">
</head>
<body>
    <div class="container">
        <!-- 제목 입력 필드 -->
        <input type="text" id="title-input" class="com-title-input" placeholder="제목을 입력해 주세요">

        <!-- 내용 입력 필드 -->
        <div class="com-content-wrapper">
            <textarea id="content-input" class="com-content-input" placeholder="내용을 입력해 주세요"></textarea>
            <div class="com-content-info">0/10000자</div>
        </div>

        <!-- 해시태그 입력 필드 -->
        <div class="com-hashtag-section">
            <label for="hashtag-input" class="com-hashtag-label">#해시태그 입력</label>
            <input type="text" id="hashtag-input" class="com-hashtag-input" placeholder="#입력 (최대 5개)">
        </div>
        
        <!-- 버튼들을 감싸는 div 추가 -->
        <div class="com-button-container">
            <button class="com-community-submit-button" onclick="window.location.href='community.jsp'">게시글 등록</button>
        </div>
    </div>
</body>
</html>
