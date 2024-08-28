<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�������� ��</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link rel="stylesheet" href="../../resources/style/com.css">
    <link rel="stylesheet" href="../../resources/style/temp.css"> <!--�缺 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<jsp:include page="../../adminHeader.jsp"></jsp:include>
    <div class="container">
        <h1 class="notice-title">���������Դϴ�.</h1>
        <div class="meta-info">
            <span class="author">������</span>
            <span class="date">2024.08.10</span>
            <span class="views">��ȸ�� 7</span>
            <div class="buttons">
                <button class="edit-button">����</button>
                <button class="delete-button">����</button>
            </div>
        </div>        
        <hr class="line">
        <div class="content">
            ���������Դϴ�.
        </div>
        <hr class="line">
        <button class="back-button" onclick="window.location.href='adminNotice.jsp'">���</button>
    </div>
    
    <jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
