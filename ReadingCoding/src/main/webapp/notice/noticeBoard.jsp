<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세</title>
	<link rel="stylesheet" href="../resources/style/com.css">
	
	<link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
</head>
<body>
<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>
    <div class="com-container">

        <h1 class="notice-title">공지사항입니다.</h1>
        <div class="meta-info">
            <span class="author">관리자</span>
            <span class="date">2024.08.10</span>
            <span class="views">조회수 7</span>
        </div>
        <hr class="cline">
        <div class="content">
            공지사항입니다.
        </div>
        <hr class="cline">
        <button class="back-button" onclick="window.location.href='notice.jsp'">목록</button>
    </div>
    
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
