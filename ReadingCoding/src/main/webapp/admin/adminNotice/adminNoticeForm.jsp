<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�������� �ۼ�</title>
    <link rel="stylesheet" href="/resources/style/com.css">
</head>
<body>
    <div class="com-container">
        <!-- ���� �Է� �ʵ� -->
        <input type="text" id="title-input" class="title-input" placeholder="������ �Է��� �ּ���">
        <hr class="cline-1">

        <!-- ���� �Է� �ʵ� -->
        <textarea id="content-input" class="content-input" placeholder="������ �Է��� �ּ���"></textarea>
        <hr class="cline-2">
        
        <!-- ��ư���� ���δ� div �߰� -->
        <div class="button-container">
            <button class="submit-button" onclick="window.location.href='adminNotice.jsp'">�ۼ�</button>
            <button class="list-button" onclick="window.location.href='adminNotice.jsp'">���</button>
        </div>
    </div>
</body>
</html>
