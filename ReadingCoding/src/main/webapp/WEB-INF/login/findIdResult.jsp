<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert title here</title>
   	<link rel="stylesheet" href="/resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
   	<link rel="stylesheet" href="/resources/style/com.css"> <!-- 채윤 -->
	<link rel="stylesheet" href="/resources/style/temp.css"> <!--재성 -->
	<link rel="stylesheet" href="/resources/style/BookReview.css"> <!--유민 -->
	<link rel="stylesheet" href="/resources/style/logStyle.css">  <!-- 의연 -->
</head>
<body>
	<div id="wrap">
        <div class="indexImg"><img src="/resources/images/LogoAxlot.png" alt="logoImg"></div>
        <div class="findInfo">
            <h2>아이디 찾기</h2>
            <span>조회된 결과입니다</span>
        </div>
        <div>
            <b>아이디</b>
    		<span>${dto.id}</span>
        </div>
	    <button type="button" class="goLogin"><a href="/login/login.do">로그인 화면으로</a></button>
        <button type="button" class="FindPwd"><a href="/login/findPwd.do">비밀번호 찾기</a></button>
	</form>
    
</body>
</html>