<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
	<link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
	<link rel="stylesheet" href="../resources/style/BookReview.css"> <!--유민 -->
	
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
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
        <a href="../MyPage/interestBook.jsp">관심등록</a>
        <a href="../MyPage/updateMember.jsp">회원수정</a>
        <a href="UserChatpage.jsp">1:1 고객문의</a>
    </div>
    <div class="chatcon">
        <div class="toktokcontainer">
            <h3>톡톡 문의하기</h3>
            <p>1:1 채팅을 통해 문의사항을</p>
            <p>빠르게 안내드립니다.</p>
        </div>

        <div class="usertoknotice">
            <div class="noticeleft">
                <h3>고객/도서 문의</h3>
                <h3>1234-5678</h3>
            </div>
            <div class="noticeright">
                <h3>채팅상담 운영시간</h3>
                <p>· 평일: 09시 ~12시, 13시 ~18시</p>
                <p>· 주말 및 공휴일은 채팅상담을 하지 않습니다.</p>
            </div>
        </div>
    </div>
    
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>