<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
	<link rel="stylesheet" href="../../resources/style/temp.css"> <!--재성 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>

<jsp:include page="../../adminHeader.jsp"></jsp:include>
	<div class="adminbookreportCon">
        <div class="adminbookreporttitle">
            회원 독후감
        </div>
        
        <div class="adminbookreporttitleS">어린 왕자</div>
        <div class="adminLine"></div>
        <div class="adimin-userinfo">
            <div>
                <span class="adminauthor">작성자</span>
                <span class="admindate">2024.08.10</span>
            </div>
            <span class="adminviews">조회수 7</span>
        </div>        
        <div class="adminLine"></div>
        <div class="admincontent">
            공지사항입니다.
        </div>
        <div class="adminLine"></div>
        <div class="adminbuttons">
            <button class="adminback-button" onclick="window.location.href='getReportList.jsp'">목록</button>
            <button class="admindelete-button">삭제</button>
        </div>
    </div>
    
    
    <jsp:include page="../../footer.jsp"></jsp:include>
	
</body>
</html>