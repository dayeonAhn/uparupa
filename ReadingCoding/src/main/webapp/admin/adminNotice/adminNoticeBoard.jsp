<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link rel="stylesheet" href="../../resources/style/com.css">
    <link rel="stylesheet" href="../../resources/style/temp.css"> <!--재성 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<jsp:include page="../../adminHeader.jsp"></jsp:include>
    <div class="container">
        <h1 class="notice-title">공지사항입니다.</h1>
        <div class="meta-info">
            <span class="author">관리자</span>
            <span class="date">2024.08.10</span>
            <span class="views">조회수 7</span>
            <div class="buttons">
                <button class="edit-button">수정</button>
                <button class="delete-button">삭제</button>
            </div>
        </div>        
        <hr class="line">
        <div class="content">
            공지사항입니다.
        </div>
        <hr class="line">
        <button class="back-button" onclick="window.location.href='adminNotice.jsp'">목록</button>
    </div>
    
    <jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
