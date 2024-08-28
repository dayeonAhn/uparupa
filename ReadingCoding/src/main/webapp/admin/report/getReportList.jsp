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
	<div class="adminbookcontainer">
        <!-- 상단 바 -->
        <div class="adminbook-top-bar">
            <!-- 페이지 제목 -->
            <div class="bookreport-title">회원 독후감 리스트</div>

        <!-- 커뮤니티 리스트 -->
        <div class="community-list">
            <!-- 제목 -->
            <table class="tablemenu">
                <thead>
                    <tr class="headermenu">
                        <th class="checkboxmenu"></th>
                        <th class="nummenu">번호</th>
                        <th class="titlemenu">제목</th>
                        <th class="authormenu">작성자</th>
                        <th class="postdatemenu">작성일자</th>
                        <th class="viewsmenu">조회수</th>
                    </tr>
                </thead>
            </table>
            <table class="tablemenu">
                <tbody>
                    
                    <tr class="bookreportitem">
                        <td><input type="checkbox" class="bookreportcheckbox"></td>
                        <td class="bookreportnumber">1</td>
                        <td class="bookreporttitle"><a href="getReport.jsp">첫번째 독후감</a></td>
                        <td class="bookreportauthor">작성자 이름</td>
                        <td class="bookreportdate">2024.08.01</td>
                        <td class="bookreportviews">12</td>
                    </tr>
                </tbody>
                
            </table >
            <div class="adminLine"></div>
            <table class="tablemenu">
                <tbody>
                    
                    <tr class="bookreportitem">
                        <td><input type="checkbox" class="bookreportcheckbox"></td>
                        <td class="bookreportnumber">1</td>
                        <td class="bookreporttitle"><a href="getReport.jsp">두번째 독후감</a></td>
                        <td class="bookreportauthor">작성자 이름</td>
                        <td class="bookreportdate">2024.08.01</td>
                        <td class="bookreportviews">12</td>
                    </tr>
                </tbody>
                
            </table class="tablemenu">
            <div class="adminLine"></div>
            <table class="tablemenu">
                <tbody>
                    
                    <tr class="bookreportitem">
                        <td><input type="checkbox" class="bookreportcheckbox"></td>
                        <td class="bookreportnumber">1</td>
                        <td class="bookreporttitle"><a href="getReport.jsp">두번째 독후감</a></td>
                        <td class="bookreportauthor">작성자 이름</td>
                        <td class="bookreportdate">2024.08.01</td>
                        <td class="bookreportviews">12</td>
                    </tr>
                </tbody>
                
            </table class="tablemenu">
            <div class="adminLine"></div>
        </div>
        <div class="container">
            <div class="pagination">
                <a href="#">&lt;</a>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">&gt;</a>
            </div>
            <div class="adminbookreportbuttons">
                <button class="adminbookdelete-button">삭제</button>
            </div>
        </div>
        
    </div>




<jsp:include page="../../footer.jsp"></jsp:include>
	
</body>
</html>