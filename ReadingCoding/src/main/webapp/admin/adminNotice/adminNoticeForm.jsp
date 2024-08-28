<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 작성</title>
    <link rel="stylesheet" href="/resources/style/com.css">
</head>
<body>
    <div class="com-container">
        <!-- 제목 입력 필드 -->
        <input type="text" id="title-input" class="title-input" placeholder="제목을 입력해 주세요">
        <hr class="cline-1">

        <!-- 내용 입력 필드 -->
        <textarea id="content-input" class="content-input" placeholder="내용을 입력해 주세요"></textarea>
        <hr class="cline-2">
        
        <!-- 버튼들을 감싸는 div 추가 -->
        <div class="button-container">
            <button class="submit-button" onclick="window.location.href='adminNotice.jsp'">작성</button>
            <button class="list-button" onclick="window.location.href='adminNotice.jsp'">목록</button>
        </div>
    </div>
</body>
</html>
