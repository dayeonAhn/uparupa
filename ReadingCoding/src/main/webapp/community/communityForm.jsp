<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ŀ�´�Ƽ �ۼ�</title>
   <link rel="stylesheet" href="/resources/style/com.css">
</head>
<body>
    <div class="container">
        <!-- ���� �Է� �ʵ� -->
        <input type="text" id="title-input" class="com-title-input" placeholder="������ �Է��� �ּ���">

        <!-- ���� �Է� �ʵ� -->
        <div class="com-content-wrapper">
            <textarea id="content-input" class="com-content-input" placeholder="������ �Է��� �ּ���"></textarea>
            <div class="com-content-info">0/10000��</div>
        </div>

        <!-- �ؽ��±� �Է� �ʵ� -->
        <div class="com-hashtag-section">
            <label for="hashtag-input" class="com-hashtag-label">#�ؽ��±� �Է�</label>
            <input type="text" id="hashtag-input" class="com-hashtag-input" placeholder="#�Է� (�ִ� 5��)">
        </div>
        
        <!-- ��ư���� ���δ� div �߰� -->
        <div class="com-button-container">
            <button class="com-community-submit-button" onclick="window.location.href='community.jsp'">�Խñ� ���</button>
        </div>
    </div>
</body>
</html>
