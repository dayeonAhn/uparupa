<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="../../resources/style/com.css">
   
   <link rel="stylesheet" href="../../resources/style/temp.css"> <!--재성 -->
	
</head>
<body>

<jsp:include page="../../adminHeader.jsp"></jsp:include>
    <div class="com-container">

        <h1 class="notice-title">공지사항</h1>

        <table class="notice-table">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성날짜</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><a href="adminNoticeBoard.jsp">공지사항입니다.</a></td>
                    <td>관리자</td>
                    <td>2024.08.01</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><a href="adminNoticeBoard.jsp">두 번째 공지사항입니다.</a></td>
                    <td>관리자</td>
                    <td>2024.08.02</td>
                    <td>5</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><a href="adminNoticeBoard.jsp">세 번째 공지사항입니다.</a></td>
                    <td>관리자</td>
                    <td>2024.08.03</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><a href="adminNoticeBoard.jsp">네 번째 공지사항입니다.</a></td>
                    <td>관리자</td>
                    <td>2024.08.04</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><a href="adminNoticeBoard.jsp">다섯 번째 공지사항입니다.</a></td>
                    <td>관리자</td>
                    <td>2024.08.05</td>
                    <td>7</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td><a href="adminNoticeBoard.jsp">여섯 번째 공지사항입니다.</a></td>
                    <td>관리자</td>
                    <td>2024.08.06</td>
                    <td>4</td>
                </tr>
            </tbody>            
        </table>

        <button class="form-button" onclick="window.location.href='adminNoticeForm.jsp'">작성</button>

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
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
