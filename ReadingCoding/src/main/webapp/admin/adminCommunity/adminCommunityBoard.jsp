<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�������� ��</title>
   <link rel="stylesheet" href="../../resources/style/com.css">
   <link rel="stylesheet" href="../../resources/style/temp.css"> <!--�缺 -->
    <script src="/resources/script/com.js"></script>
</head>
<body>
<jsp:include page="../../adminHeader.jsp"></jsp:include>
    <div class="container">
        <div class="admin-notice-title">Ȥ�� �θǽ� �Ҽ� ��õ ���ֽ� �� �������?</div>
        <div class="meta-info">
            <span class="author">ä����</span>
            <span class="date">2024.08.10</span>
            <span class="views">��ȸ�� 7</span>
            <div class="buttons">
                <button class="back-button" onclick="window.location.href='adminCommunity.jsp'">���</button>
                <button class="comment-delete-button">����</button>
            </div>
        </div>        
        <hr class="line">
        <div class="content">
            ���������Դϴ�.
        </div>
        <hr class="line">
        <div class="comment-count">���(1��)</div>
        <hr class="line">
        <div class="comment-section-custom">
            <div class="comment-author-info-custom">
                <div class="comment-author-name-custom">���̴�</div>
                <div class="comment-date-custom">2024.08.10</div>
            </div>
            <div class="comment-buttons-custom">
                <div class="comment-content-custom">�ø��� ? ���� �� ?</div>
                <button class="comment-delete-button">����</button>
            </div>
        </div>
        <hr class="line">
    </div>
    <jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
